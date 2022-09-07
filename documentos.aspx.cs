using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace GoWebForms
{
    public partial class documentos : System.Web.UI.Page
    {
        protected DataTable FeatureMatrix;
        int CanView = 1;
        int CanInsert = 2;
        int CanUpdate = 3;
        int CanDelete = 4;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlButton btn;

            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("ingresar.aspx", true);
            }
            else
            {
                BtnUser.InnerHtml = "<i class='fas fa-user'></i> " + User.Identity.Name;
                Session["USERNAME"] = User.Identity.Name;

                if (Session["UserRole"] == null)
                    Session["UserRole"] = GetUserRole(User.Identity.Name);

                btn = (System.Web.UI.HtmlControls.HtmlButton)this.FindControl("BtnUser");
                btn.Attributes["title"] = Session["UserRole"].ToString();



                //Obtengo la Matriz permisos para el modulo segun el Rol del usuario
                FeatureMatrix = GetFeatureMatrix(Session["UserRole"].ToString(), "facturas");

                //Seteo el menu segun el rol del usuario
                SetFunctionsMenu();
            }
        }

        protected void SetFunctionsMenu()
        {
            if (Session["UserRole"].ToString() == "INVERSOR")
            {
                li_formulas.Visible = true;
                li_variables.Visible = true;
                li_parameters.Visible = true;
                li_cliente.Visible = true;
                li_providers.Visible = true;
                li_invoices.Visible = true;

            }
            else if (Session["UserRole"].ToString() == "CLIENTE")
            {
                li_formulas.Visible = false;
                li_variables.Visible = false;
                li_parameters.Visible = false;
                li_cliente.Visible = true;
                li_providers.Visible = true;
                li_invoices.Visible = true;
            }
            else if (Session["UserRole"].ToString() == "PROVEEDOR")
            {
                li_formulas.Visible = false;
                li_variables.Visible = false;
                li_parameters.Visible = false;
                li_cliente.Visible = true;
                li_providers.Visible = false;
                li_invoices.Visible = true;
            }
        }

        protected DataRow GetFeatureValue(string Feature)
        {
            string expression = "Feature =  " + Feature;
            DataRow[] foundRows;

            // Use the Select method to find all rows matching the filter.
            foundRows = FeatureMatrix.Select(expression);

            return foundRows[0];
        }

        public string GetUserRole(string UserName)
        {
            SqlCommand cmd = new SqlCommand();
            string UserRole = "";

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["AlmacenesConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);

                cmd.Connection = conn;

                cmd.CommandText = "[secure].[sp_get_UserRole]";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", UserName);



                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        UserRole = dr["Role"].ToString();
                    }
                }

                conn.Close();


                return UserRole;

            }
            catch (Exception ex)
            {
                ErrorLabel.Text = ex.Message;
                return null;
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                ErrorLabel.Text = "Error : " + e.Exception.Message;

                e.ExceptionHandled = true;
            }
            else
            {
                ErrorLabel.Text = "Inserted Successfully";
            }

            Response.Redirect("documentos.aspx?state=pendiente");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("documentos.aspx?state=pendiente");
        }
        protected void EditFormView_ModeChanging(object sender, FormViewModeEventArgs e)
        {
            EditFormView.ChangeMode(e.NewMode);
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("ingresar.aspx", true);
        }

        protected void DocumentoListView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton EditDocumentoBtn = (LinkButton)e.Item.FindControl("EditDocumentoBtn");
            LinkButton DeleteDocumentoBtn = (LinkButton)e.Item.FindControl("DeleteDocumentoBtn");
            LinkButton RequestDocumentoBtn = (LinkButton)e.Item.FindControl("RequestDocumentoBtn");
            LinkButton KudeBTN = (LinkButton)e.Item.FindControl("KudeBTN");

            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                System.Data.DataRowView rowView = e.Item.DataItem as System.Data.DataRowView;
                string currentInvoiceStatus = rowView["estado"].ToString();
                if (currentInvoiceStatus == "PENDIENTE")
                {
                    RequestDocumentoBtn.ToolTip = "Enviar a la SIFEN";
                    RequestDocumentoBtn.Visible = true;
                    EditDocumentoBtn.Visible = true;
                    DeleteDocumentoBtn.Visible = true;
                    KudeBTN.Visible = true;
                }
                else if (currentInvoiceStatus == "APROBADO")
                {
                    RequestDocumentoBtn.Visible = false;
                    EditDocumentoBtn.Visible = false;
                    DeleteDocumentoBtn.Visible = false;
                    KudeBTN.Visible = true;
                }
                else if (currentInvoiceStatus == "RECCHAZADO")
                {
                    RequestDocumentoBtn.ToolTip = "Reintentar";
                    RequestDocumentoBtn.Visible = true;
                    EditDocumentoBtn.Visible = true;
                    DeleteDocumentoBtn.Visible = true;
                    KudeBTN.Visible = false;
                }
            }

        }

      

        protected void GetRecordToUpdate(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(DocumentoDS.ConnectionString);

            cmd = new SqlCommand("ws_sifen.dbo.[sp_DocumentosElectronicos_get_DocumentosElectronicos]", con);
            cmd.Parameters.Add(new SqlParameter("@id_documento_electronico", ID));
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter adp = new SqlDataAdapter();

            con.Open();

            adp.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adp.Fill(ds);

            EditFormView.DataSource = ds;
            EditFormView.DataBind();

            con.Close();
        }


        protected void DeleteRecord(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(DocumentoDS.ConnectionString);

            cmd = new SqlCommand("ws_sifen.dbo.[sp_DocumentosElectronicos_delete]", con);
            cmd.Parameters.Add(new SqlParameter("@id_documento_electronico", ID));



            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();



            con.Close();
        }

        protected void EditFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            DataKey key = EditFormView.DataKey;

            try
            {
                //Obtengo los valores de los campos a editar
                TextBox txtid_documento_electronico = (TextBox)EditFormView.FindControl("txtid_documento_electronico");
                DropDownList idTiposDocumento_DDL = (DropDownList)EditFormView.FindControl("idTiposDocumento_DDL");
                DropDownList idEstablecimientos_DDL = (DropDownList)EditFormView.FindControl("idEstablecimientos_DDL");
                TextBox txtcodigoSeguridadAleatorio = (TextBox)EditFormView.FindControl("txtcodigoSeguridadAleatorio");
                DropDownList txtpunto = (DropDownList)EditFormView.FindControl("idPuntosExpedicion_DDL");
                TextBox txtnumero = (TextBox)EditFormView.FindControl("txtnumero");
                TextBox txtdescripcion = (TextBox)EditFormView.FindControl("txtdescripcion");
                TextBox txtobservacion = (TextBox)EditFormView.FindControl("txtobservacion");
                DropDownList idTiposContibuyente_DDL = (DropDownList)EditFormView.FindControl("idTiposContibuyente_DDL");
                TextBox txtfecha = (TextBox)EditFormView.FindControl("txtfecha");
                DropDownList idTiposEmision_DDL = (DropDownList)EditFormView.FindControl("idTiposEmision_DDL");
                DropDownList idTiposTransaccion_DDL = (DropDownList)EditFormView.FindControl("idTiposTransaccion_DDL");
                DropDownList idTiposImpuesto_DDL = (DropDownList)EditFormView.FindControl("idTiposImpuesto_DDL");
                DropDownList idMonedas_DDL = (DropDownList)EditFormView.FindControl("idMonedas_DDL");
                TextBox txtcondicionAnticipo = (TextBox)EditFormView.FindControl("txtcondicionAnticipo");
                TextBox txtcondicionTipoCambio = (TextBox)EditFormView.FindControl("txtcondicionTipoCambio");
                TextBox txtcambio = (TextBox)EditFormView.FindControl("txtcambio");
                DropDownList idClientes_DDL = (DropDownList)EditFormView.FindControl("idClientes_DDL");
                TextBox txtdata = (TextBox)EditFormView.FindControl("txtdata");
                DropDownList idEstados_DDL = (DropDownList)EditFormView.FindControl("idEstados_DDL");

                //DateTime isoDateTime = DateTime.ParseExact(txtCalendar.Value, format, CultureInfo.InvariantCulture);

                SqlConnection conn = new SqlConnection(DocumentoDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "ws_sifen.dbo.sp_DocumentosElectronicos_update";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_documento_electronico", txtid_documento_electronico.Text);
                cmd.Parameters.AddWithValue("@tipoDocumento", idTiposImpuesto_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@establecimiento", idEstablecimientos_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@codigoSeguridadAleatorio", txtcodigoSeguridadAleatorio.Text);
                cmd.Parameters.AddWithValue("@punto", txtpunto.Text);
                cmd.Parameters.AddWithValue("@numero", txtnumero.Text);
                cmd.Parameters.AddWithValue("@descripcion", txtdescripcion.Text);
                cmd.Parameters.AddWithValue("@observacion", txtobservacion.Text);
                cmd.Parameters.AddWithValue("@tipoContribuyente", idTiposContibuyente_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@fecha", txtfecha.Text);
                cmd.Parameters.AddWithValue("@tipoEmision", idTiposEmision_DDL.Text);
                cmd.Parameters.AddWithValue("@tipoTransaccion", idTiposTransaccion_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@tipoImpuesto", idTiposImpuesto_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@moneda", idMonedas_DDL.SelectedValue);
                cmd.Parameters.AddWithValue("@condicionAnticipo", txtcondicionAnticipo.Text);
                cmd.Parameters.AddWithValue("@condicionTipoCambio", txtcondicionTipoCambio.Text);
                cmd.Parameters.AddWithValue("@cambio", Convert.ToDecimal(txtcambio.Text));
                cmd.Parameters.AddWithValue("@id_cliente", 1);
                cmd.Parameters.AddWithValue("@id_usuario", 1);
                cmd.Parameters.AddWithValue("@id_certificado", 1);
                cmd.Parameters.AddWithValue("@data", txtdata.Text);
                cmd.Parameters.AddWithValue("@id_estado", idEstados_DDL.SelectedValue);


                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "",
                "$('#editModal').modal('hide');", true);

                Response.Redirect("Documentos.aspx?state=pendiente");


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        protected void EditFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            EditFormView.ChangeMode(FormViewMode.ReadOnly);

            DocumentoListView.DataBind();

        }

        protected void ListView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                GetRecordToUpdate(e.CommandArgument.ToString());

                ScriptManager.RegisterStartupScript(this, this.GetType(), "",
               "$('#editModal').modal('show');", true);

            }
            else if (e.CommandName == "Eliminar")
            {
                DeleteRecord(e.CommandArgument.ToString());
                DocumentoListView.DataBind();
            }
            else if (e.CommandName == "Solicitar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "SOLICITADA");
                DocumentoListView.DataBind();
            }
            else if (e.CommandName == "Factorizar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "APROBADA");
                DocumentoListView.DataBind();
            }
            else if (e.CommandName == "Imprimir")
            {
                String Url = "http://www.gofactoring.com.py/ReportServer/Pages/ReportViewer.aspx?%2fSifenSSRS%2fFacturaDTE&rs:Command=Render&id=" + e.CommandArgument.ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Open", "window.open('" + Url + "');", true);
            }
        }

      

        protected void RequestFactoring(string IdInvoice, string status)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(DocumentoDS.ConnectionString);
            try
            {
                cmd.Connection = conn;

                cmd.CommandText = "ws_sifen.[dbo].[sp_call_sifen]";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_documento_electronico", IdInvoice);
                



                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void DocumentoListView_PreRender(object sender, EventArgs e)
        {
            //foreach (ListViewItem lvi in DocumentoListView.Items)
            //{
            //    if (lvi.ItemType == ListViewItemType.DataItem)
            //    {
            //        HtmlTableCell clm_id_factura = (HtmlTableCell)lvi.FindControl("clm_id_factura");
            //        SetCellStyle(clm_id_factura, "'id_documento_electronico'", CanView);

            //        HtmlTableCell clm_proveedor = (HtmlTableCell)lvi.FindControl("clm_proveedor");
            //        SetCellStyle(clm_proveedor, "'proveedor'", CanView);

            //        HtmlTableCell clm_nro_factura = (HtmlTableCell)lvi.FindControl("clm_nro_factura");
            //        SetCellStyle(clm_nro_factura, "'nro_factura'", CanView);

            //        HtmlTableCell clm_cliente = (HtmlTableCell)lvi.FindControl("clm_cliente");
            //        SetCellStyle(clm_cliente, "'cliente'", CanView);

            //        HtmlTableCell clm_fecha_emision = (HtmlTableCell)lvi.FindControl("clm_fecha_emision");
            //        SetCellStyle(clm_fecha_emision, "'fecha_emision'", CanView);

            //        HtmlTableCell clm_fecha_vencimiento = (HtmlTableCell)lvi.FindControl("clm_fecha_vencimiento");
            //        SetCellStyle(clm_fecha_vencimiento, "'fecha_vencimiento'", CanView);

            //        HtmlTableCell clm_monto = (HtmlTableCell)lvi.FindControl("clm_monto");
            //        SetCellStyle(clm_monto, "'monto'", CanView);

            //        HtmlTableCell clm_moneda = (HtmlTableCell)lvi.FindControl("clm_moneda");
            //        SetCellStyle(clm_moneda, "'moneda'", CanView);

            //        HtmlTableCell clm_concepto = (HtmlTableCell)lvi.FindControl("clm_concepto");
            //        SetCellStyle(clm_concepto, "'concepto'", CanView);

            //        HtmlTableCell clm_porcentaje_adelanto = (HtmlTableCell)lvi.FindControl("clm_porcentaje_adelanto");
            //        SetCellStyle(clm_porcentaje_adelanto, "'porcentaje_adelanto'", CanView);

            //        HtmlTableCell clm_monto_adelanto = (HtmlTableCell)lvi.FindControl("clm_monto_adelanto");
            //        SetCellStyle(clm_monto_adelanto, "'monto_adelanto'", CanView);

            //        HtmlTableCell clm_descuento = (HtmlTableCell)lvi.FindControl("clm_descuento");
            //        SetCellStyle(clm_descuento, "'descuento'", CanView);

            //        HtmlTableCell clm_fecha_desembolso = (HtmlTableCell)lvi.FindControl("clm_fecha_desembolso");
            //        SetCellStyle(clm_fecha_desembolso, "'fecha_desembolso'", CanView);

            //        HtmlTableCell clm_fecha_cobro = (HtmlTableCell)lvi.FindControl("clm_fecha_cobro");
            //        SetCellStyle(clm_fecha_cobro, "'fecha_cobro'", CanView);

            //        HtmlTableCell clm_dias = (HtmlTableCell)lvi.FindControl("clm_dias");
            //        SetCellStyle(clm_dias, "'dias'", CanView);

            //        HtmlTableCell clm_estado = (HtmlTableCell)lvi.FindControl("clm_estado");
            //        SetCellStyle(clm_estado, "'estado'", CanView);


            //    }
            //}
        }

        protected void SetCellStyle(HtmlTableCell cell, string feature, int Permission)
        {
            try
            {
                //Obtengo el row del Feature
                DataRow row = GetFeatureValue(feature);

                if (row[Permission].ToString() == "True")
                    cell.Style.Add("display", "table-cell");
                else
                    cell.Style.Add("display", "none");
            }
            catch (Exception ex){
                return;
            }
        }

        protected void DocumentoListView_DataBound(object sender, EventArgs e)
        {
            //HtmlTableCell tblhead_id_factura = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_id_factura"));
            //SetCellStyle(tblhead_id_factura, "'id_documento_electronico'", CanView);

            //HtmlTableCell tblhead_proveedor = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_proveedor"));
            //SetCellStyle(tblhead_proveedor, "'proveedor'", CanView);

            //HtmlTableCell tblhead_nro_factura = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_nro_factura"));
            //SetCellStyle(tblhead_nro_factura, "'nro_factura'", CanView);

            //HtmlTableCell tblhead_cliente = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_cliente"));
            //SetCellStyle(tblhead_cliente, "'cliente'", CanView);

            //HtmlTableCell tblhead_fecha_emision = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_fecha_emision"));
            //SetCellStyle(tblhead_fecha_emision, "'fecha_emision'", CanView);

            //HtmlTableCell tblhead_fecha_vencimiento = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_fecha_vencimiento"));
            //SetCellStyle(tblhead_fecha_vencimiento, "'fecha_vencimiento'", CanView);

            //HtmlTableCell tblhead_monto = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_monto"));
            //SetCellStyle(tblhead_monto, "'monto'", CanView);

            //HtmlTableCell tblhead_moneda = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_moneda"));
            //SetCellStyle(tblhead_id_factura, "'moneda'", CanView);

            //HtmlTableCell tblhead_concepto = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_concepto"));
            //SetCellStyle(tblhead_concepto, "'concepto'", CanView);

            //HtmlTableCell tblhead_porcentaje_adelanto = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_porcentaje_adelanto"));
            //SetCellStyle(tblhead_porcentaje_adelanto, "'porcentaje_adelanto'", CanView);

            //HtmlTableCell tblhead_monto_adelanto = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_monto_adelanto"));
            //SetCellStyle(tblhead_monto_adelanto, "'monto_adelanto'", CanView);

            //HtmlTableCell tblhead_descuento = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_descuento"));
            //SetCellStyle(tblhead_descuento, "'descuento'", CanView);

            //HtmlTableCell tblhead_fecha_desembolso = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_fecha_desembolso"));
            //SetCellStyle(tblhead_fecha_desembolso, "'fecha_desembolso'", CanView);

            //HtmlTableCell tblhead_fecha_cobro = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_fecha_cobro"));
            //SetCellStyle(tblhead_fecha_cobro, "'fecha_cobro'", CanView);

            //HtmlTableCell tblhead_dias = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_dias"));
            //SetCellStyle(tblhead_dias, "'dias'", CanView);

            //HtmlTableCell tblhead_estado = ((HtmlTableCell)DocumentoListView.FindControl("tblhead_estado"));
            //SetCellStyle(tblhead_estado, "'estado'", CanView);

        }

        protected DataTable GetFeatureMatrix(string role, string module)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(DocumentoDS.ConnectionString);
            DataSet ds = new DataSet();
            try
            {
                cmd.Connection = conn;

                cmd.CommandText = "secure.sp_Role_Features";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@role", role);
                cmd.Parameters.AddWithValue("@module", module);



                conn.Open();
                //cmd.ExecuteReader();

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);

                DataTable t = ds.Tables[0];



                conn.Close();

                return t;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // Import CSV Data 
        // Funtions for here implements CSV file upload tos SQL
        //

        protected void ImportCSV(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DocumentoDS.ConnectionString);

            //Upload and save the file
            string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(csvPath);

            //Create a DataTable.
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7] { 
                new DataColumn("Proveedor", typeof(string)),
                new DataColumn("NroDocumento", typeof(string)),
                new DataColumn("Cliente",typeof(string)),
                new DataColumn("Emision",typeof(DateTime)) ,
                new DataColumn("Vencimiento",typeof(DateTime)),
                new DataColumn("Monto",typeof(decimal)),
                new DataColumn("Moneda",typeof(string))
            });

            //Read the contents of CSV file.
            string csvData = File.ReadAllText(csvPath);

            //Execute a loop over the rows.
            foreach (string row in csvData.Split('\n'))
            {
                if (!string.IsNullOrEmpty(row))
                {
                    dt.Rows.Add();
                    int i = 0;

                    //Execute a loop over the columns.
                    foreach (string cell in row.Split(';'))
                    {
                        dt.Rows[dt.Rows.Count - 1][i] = cell;
                        i++;
                    }
                }
            }

            using (var command = new SqlCommand("[go].[sp_import_facturas_csv]") { CommandType = CommandType.StoredProcedure })
            {
                command.Connection = conn;
                command.Parameters.Add(new SqlParameter("@DocumentoTableType", dt));
                conn.Open();

                int result = command.ExecuteNonQuery();

                conn.Close();
            }

            Response.Redirect("documentos.aspx?state=pendiente");
        }

        protected void PendientesButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "PENDIENTES";
            Response.Redirect("documentos.aspx?state=pendiente");
        }

        protected void AprobadosButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "APROBADOS";
            Response.Redirect("documentos.aspx?state=aprobado");
        }

        protected void RechazadosButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "RECHAZADOS";
            Response.Redirect("documentos.aspx?state=rechazado");
        }
    }
}