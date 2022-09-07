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
    public partial class facturas : System.Web.UI.Page
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

            Response.Redirect("facturas.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("facturas.aspx");
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

        protected void FacturaListView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton EditFacturaBtn = (LinkButton)e.Item.FindControl("EditFacturaBtn");
            LinkButton DeleteFacturaBtn = (LinkButton)e.Item.FindControl("DeleteFacturaBtn");
            LinkButton RequestFacturaBtn = (LinkButton)e.Item.FindControl("RequestFacturaBtn");
            LinkButton FactoringFacturaBtn = (LinkButton)e.Item.FindControl("FactoringFacturaBtn");

            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                System.Data.DataRowView rowView = e.Item.DataItem as System.Data.DataRowView;
                string currentInvoiceStatus = rowView["estado"].ToString();
                if (currentInvoiceStatus == "PENDIENTE")
                {
                    RequestFacturaBtn.Visible = true;
                    EditFacturaBtn.Visible = true;
                    DeleteFacturaBtn.Visible = true;
                    FactoringFacturaBtn.Visible = false;
                }
                else if (currentInvoiceStatus == "SOLICITADA")
                {
                    RequestFacturaBtn.Visible = false;
                    EditFacturaBtn.Visible = false;
                    DeleteFacturaBtn.Visible = false;

                    if (Session["UserRole"].ToString() == "INVERSOR" || Session["UserRole"].ToString() == "CLIENTE")
                    {
                        FactoringFacturaBtn.Visible = true;
                    }
                }
                else
                {
                    RequestFacturaBtn.Visible = false;
                    EditFacturaBtn.Visible = false;
                    DeleteFacturaBtn.Visible = false;
                    FactoringFacturaBtn.Visible = false;
                }
            }

        }

        protected void CobranzasListView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton EditFacturaBtn = (LinkButton)e.Item.FindControl("EditFacturaBtn");
           
            LinkButton DepositarFacturaBtn = (LinkButton)e.Item.FindControl("DepositarFacturaBtn");

            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                System.Data.DataRowView rowView = e.Item.DataItem as System.Data.DataRowView;
                string currentInvoiceStatus = rowView["estado"].ToString();
                if (currentInvoiceStatus == "APROBADA")
                {
                    if (Session["UserRole"].ToString() == "INVERSOR" || Session["UserRole"].ToString() == "CLIENTE")
                    {
                        EditFacturaBtn.Visible = true;
                        DepositarFacturaBtn.Visible = true;
                    }
                    else
                    {
                        EditFacturaBtn.Visible = false;
                        DepositarFacturaBtn.Visible = false;
                    }
                }
                else
                {
                    EditFacturaBtn.Visible = false;
                    DepositarFacturaBtn.Visible = false;
                }
            }

        }


        protected void GetRecordToUpdate(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(FacturaDS.ConnectionString);

            cmd = new SqlCommand("go.[sp_Facturas_get_Factura]", con);
            cmd.Parameters.Add(new SqlParameter("@id_factura", ID));
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
            SqlConnection con = new SqlConnection(FacturaDS.ConnectionString);

            cmd = new SqlCommand("go.[sp_Facturas_delete]", con);
            cmd.Parameters.Add(new SqlParameter("@id_factura", ID));



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
                TextBox txtid_factura = (TextBox)EditFormView.FindControl("txtid_factura");
                TextBox txtid_proveedor = (TextBox)EditFormView.FindControl("txtid_proveedor");
                DropDownList IdProveedorDDL = (DropDownList)EditFormView.FindControl("IdProveedorDDL");

                DropDownList IdClienteDDL = (DropDownList)EditFormView.FindControl("IdClienteDDL");

                TextBox txtnro_factura = (TextBox)EditFormView.FindControl("txtnro_factura");
                TextBox txtfecha_emision = (TextBox)EditFormView.FindControl("txtfecha_emision");
                TextBox txtfecha_cobro = (TextBox)EditFormView.FindControl("txtfecha_cobro");
                TextBox txtmonto = (TextBox)EditFormView.FindControl("txtmonto");

                DropDownList IdMonedaDDL = (DropDownList)EditFormView.FindControl("IdMonedaDDL");
                TextBox txtconcepto = (TextBox)EditFormView.FindControl("txtconcepto");
                TextBox txtporcentaje_adelanto = (TextBox)EditFormView.FindControl("txtporcentaje_adelanto");

                TextBox txtfecha_vencimiento = (TextBox)EditFormView.FindControl("txtfecha_vencimiento");
                TextBox txtfecha_desembolso = (TextBox)EditFormView.FindControl("txtfecha_desembolso");
                TextBox txtdescuento = (TextBox)EditFormView.FindControl("txtdescuento");


                //DateTime isoDateTime = DateTime.ParseExact(txtCalendar.Value, format, CultureInfo.InvariantCulture);

                SqlConnection conn = new SqlConnection(FacturaDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "go.sp_Facturas_update";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_factura", txtid_factura.Text);
                cmd.Parameters.AddWithValue("@id_proveedor", IdProveedorDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@id_cliente", IdClienteDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@nro_factura", txtnro_factura.Text);
                cmd.Parameters.AddWithValue("@fecha_emision", txtfecha_emision.Text);
                cmd.Parameters.AddWithValue("@fecha_cobro", txtfecha_cobro.Text);
                cmd.Parameters.AddWithValue("@monto", Convert.ToDecimal(txtmonto.Text));
                cmd.Parameters.AddWithValue("@id_moneda", IdMonedaDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@concepto", txtconcepto.Text);
                cmd.Parameters.AddWithValue("@porcentaje_adelanto", Convert.ToDecimal(txtporcentaje_adelanto.Text));
                cmd.Parameters.AddWithValue("@fecha_vencimiento", txtfecha_vencimiento.Text);
                cmd.Parameters.AddWithValue("@fecha_desembolso", txtfecha_desembolso.Text);
                cmd.Parameters.AddWithValue("@descuento", Convert.ToDecimal(txtdescuento.Text));



                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "",
                "$('#editModal').modal('hide');", true);

                Response.Redirect("Facturas.aspx");


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        protected void EditFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            EditFormView.ChangeMode(FormViewMode.ReadOnly);

            FacturaListView.DataBind();

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
                FacturaListView.DataBind();
            }
            else if (e.CommandName == "Solicitar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "SOLICITADA");
                FacturaListView.DataBind();
            }
            else if (e.CommandName == "Factorizar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "APROBADA");
                FacturaListView.DataBind();
            }
        }

        protected void CobranzasListView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Depositar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "DEPOSITADO");
                CobranzasListView.DataBind();
            }
            if (e.CommandName == "Cobrar")
            {
                RequestFactoring(e.CommandArgument.ToString(), "COBRADO");
                CobranzasListView.DataBind();
            }
        }

        protected void RequestFactoring(string IdInvoice, string status)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(FacturaDS.ConnectionString);
            try
            {
                cmd.Connection = conn;

                cmd.CommandText = "go.sp_facturas_status_update";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_factura", IdInvoice);
                cmd.Parameters.AddWithValue("@estado", status);



                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void FacturaListView_PreRender(object sender, EventArgs e)
        {
            foreach (ListViewItem lvi in FacturaListView.Items)
            {
                if (lvi.ItemType == ListViewItemType.DataItem)
                {
                    HtmlTableCell clm_id_factura = (HtmlTableCell)lvi.FindControl("clm_id_factura");
                    SetCellStyle(clm_id_factura, "'id_factura'", CanView);

                    HtmlTableCell clm_proveedor = (HtmlTableCell)lvi.FindControl("clm_proveedor");
                    SetCellStyle(clm_proveedor, "'proveedor'", CanView);

                    HtmlTableCell clm_nro_factura = (HtmlTableCell)lvi.FindControl("clm_nro_factura");
                    SetCellStyle(clm_nro_factura, "'nro_factura'", CanView);

                    HtmlTableCell clm_cliente = (HtmlTableCell)lvi.FindControl("clm_cliente");
                    SetCellStyle(clm_cliente, "'cliente'", CanView);

                    HtmlTableCell clm_fecha_emision = (HtmlTableCell)lvi.FindControl("clm_fecha_emision");
                    SetCellStyle(clm_fecha_emision, "'fecha_emision'", CanView);

                    HtmlTableCell clm_fecha_vencimiento = (HtmlTableCell)lvi.FindControl("clm_fecha_vencimiento");
                    SetCellStyle(clm_fecha_vencimiento, "'fecha_vencimiento'", CanView);

                    HtmlTableCell clm_monto = (HtmlTableCell)lvi.FindControl("clm_monto");
                    SetCellStyle(clm_monto, "'monto'", CanView);

                    HtmlTableCell clm_moneda = (HtmlTableCell)lvi.FindControl("clm_moneda");
                    SetCellStyle(clm_moneda, "'moneda'", CanView);

                    HtmlTableCell clm_concepto = (HtmlTableCell)lvi.FindControl("clm_concepto");
                    SetCellStyle(clm_concepto, "'concepto'", CanView);

                    HtmlTableCell clm_porcentaje_adelanto = (HtmlTableCell)lvi.FindControl("clm_porcentaje_adelanto");
                    SetCellStyle(clm_porcentaje_adelanto, "'porcentaje_adelanto'", CanView);

                    HtmlTableCell clm_monto_adelanto = (HtmlTableCell)lvi.FindControl("clm_monto_adelanto");
                    SetCellStyle(clm_monto_adelanto, "'monto_adelanto'", CanView);

                    HtmlTableCell clm_descuento = (HtmlTableCell)lvi.FindControl("clm_descuento");
                    SetCellStyle(clm_descuento, "'descuento'", CanView);

                    HtmlTableCell clm_fecha_desembolso = (HtmlTableCell)lvi.FindControl("clm_fecha_desembolso");
                    SetCellStyle(clm_fecha_desembolso, "'fecha_desembolso'", CanView);

                    HtmlTableCell clm_fecha_cobro = (HtmlTableCell)lvi.FindControl("clm_fecha_cobro");
                    SetCellStyle(clm_fecha_cobro, "'fecha_cobro'", CanView);

                    HtmlTableCell clm_dias = (HtmlTableCell)lvi.FindControl("clm_dias");
                    SetCellStyle(clm_dias, "'dias'", CanView);

                    HtmlTableCell clm_estado = (HtmlTableCell)lvi.FindControl("clm_estado");
                    SetCellStyle(clm_estado, "'estado'", CanView);


                }
            }
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

        protected void FacturaListView_DataBound(object sender, EventArgs e)
        {
            HtmlTableCell tblhead_id_factura = ((HtmlTableCell)FacturaListView.FindControl("tblhead_id_factura"));
            SetCellStyle(tblhead_id_factura, "'id_factura'", CanView);

            HtmlTableCell tblhead_proveedor = ((HtmlTableCell)FacturaListView.FindControl("tblhead_proveedor"));
            SetCellStyle(tblhead_proveedor, "'proveedor'", CanView);

            HtmlTableCell tblhead_nro_factura = ((HtmlTableCell)FacturaListView.FindControl("tblhead_nro_factura"));
            SetCellStyle(tblhead_nro_factura, "'nro_factura'", CanView);

            HtmlTableCell tblhead_cliente = ((HtmlTableCell)FacturaListView.FindControl("tblhead_cliente"));
            SetCellStyle(tblhead_cliente, "'cliente'", CanView);

            HtmlTableCell tblhead_fecha_emision = ((HtmlTableCell)FacturaListView.FindControl("tblhead_fecha_emision"));
            SetCellStyle(tblhead_fecha_emision, "'fecha_emision'", CanView);

            HtmlTableCell tblhead_fecha_vencimiento = ((HtmlTableCell)FacturaListView.FindControl("tblhead_fecha_vencimiento"));
            SetCellStyle(tblhead_fecha_vencimiento, "'fecha_vencimiento'", CanView);

            HtmlTableCell tblhead_monto = ((HtmlTableCell)FacturaListView.FindControl("tblhead_monto"));
            SetCellStyle(tblhead_monto, "'monto'", CanView);

            HtmlTableCell tblhead_moneda = ((HtmlTableCell)FacturaListView.FindControl("tblhead_moneda"));
            SetCellStyle(tblhead_id_factura, "'moneda'", CanView);

            HtmlTableCell tblhead_concepto = ((HtmlTableCell)FacturaListView.FindControl("tblhead_concepto"));
            SetCellStyle(tblhead_concepto, "'concepto'", CanView);

            HtmlTableCell tblhead_porcentaje_adelanto = ((HtmlTableCell)FacturaListView.FindControl("tblhead_porcentaje_adelanto"));
            SetCellStyle(tblhead_porcentaje_adelanto, "'porcentaje_adelanto'", CanView);

            HtmlTableCell tblhead_monto_adelanto = ((HtmlTableCell)FacturaListView.FindControl("tblhead_monto_adelanto"));
            SetCellStyle(tblhead_monto_adelanto, "'monto_adelanto'", CanView);

            HtmlTableCell tblhead_descuento = ((HtmlTableCell)FacturaListView.FindControl("tblhead_descuento"));
            SetCellStyle(tblhead_descuento, "'descuento'", CanView);

            HtmlTableCell tblhead_fecha_desembolso = ((HtmlTableCell)FacturaListView.FindControl("tblhead_fecha_desembolso"));
            SetCellStyle(tblhead_fecha_desembolso, "'fecha_desembolso'", CanView);

            HtmlTableCell tblhead_fecha_cobro = ((HtmlTableCell)FacturaListView.FindControl("tblhead_fecha_cobro"));
            SetCellStyle(tblhead_fecha_cobro, "'fecha_cobro'", CanView);

            HtmlTableCell tblhead_dias = ((HtmlTableCell)FacturaListView.FindControl("tblhead_dias"));
            SetCellStyle(tblhead_dias, "'dias'", CanView);

            HtmlTableCell tblhead_estado = ((HtmlTableCell)FacturaListView.FindControl("tblhead_estado"));
            SetCellStyle(tblhead_estado, "'estado'", CanView);

        }

        protected DataTable GetFeatureMatrix(string role, string module)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(FacturaDS.ConnectionString);
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

        protected void SimulationBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(FacturaDS.ConnectionString);
            try
            {
                cmd.Connection = conn;

                cmd.CommandText = "go.sp_generate_simulation";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();
                if(Request.QueryString["pageNumber"] != null)
                {
                    Response.Redirect("facturas.aspx?pageNumber=" + Request.QueryString["pageNumber"]);
                }
                else
                {
                    Response.Redirect("facturas.aspx?pageNumber=1" );
                }
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
            SqlConnection conn = new SqlConnection(FacturaDS.ConnectionString);

            //Upload and save the file
            string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(csvPath);

            //Create a DataTable.
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7] { 
                new DataColumn("Proveedor", typeof(string)),
                new DataColumn("NroFactura", typeof(string)),
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
                command.Parameters.Add(new SqlParameter("@FacturaTableType", dt));
                conn.Open();

                int result = command.ExecuteNonQuery();

                conn.Close();
            }

            Response.Redirect("facturas.aspx");
        }

        protected void PendientesButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "PENDIENTE";
            MultiViewPager.ActiveViewIndex = 0;
        }

        protected void CobranzasButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "COBRANZAS";
            MultiViewPager.ActiveViewIndex = 1;
        }

        protected void ConciliacionesButton_Click(object sender, EventArgs e)
        {
            lblState.Text = "CONCILIACIONES";
            MultiViewPager.ActiveViewIndex = 2;
        }
    }
}