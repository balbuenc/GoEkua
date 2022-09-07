using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace GoWebForms
{
    public partial class dte_detalle : System.Web.UI.Page
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
            
                return null;
            }
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

        //desde aqui es copia


        private void ObtenerDatosContrato(int IdContrato)
        {
            string Estado;

            SqlCommand cmd = new SqlCommand();
            try
            {
                Estado = "";
                SqlConnection conn = new SqlConnection(ArticuloContratoDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "management.[sp_Contrato_get_Contrato]";
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@IdContrato", IdContrato);


                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtNroContrato.Text = dr["NroContrato"].ToString();
                        txtFechaInicioContrato.Text = dr["FechaInicioContrato"].ToString().Remove(11);
                        txtFechaFinContrato.Text = dr["FechaFinContrato"].ToString().Remove(11);
                        txtSearchProveedor.Value = dr["Proveedor"].ToString();
                        IdLicitacionDDL.SelectedValue = dr["IdLicitacion"].ToString();
                        TipoDDL.SelectedValue = dr["Tipo"].ToString();
                        Estado = dr["Estado"].ToString();
                    }
                }

                conn.Close();

                DisableControls();

                if (Estado == "Finalizado")
                {
                    ArticuloPanel.Enabled = false;
                    CerrarDetalleBtn.Text = "Factura emitida";
                    CerrarDetalleBtn.Enabled = true;
                    ArticuloContratoListView.Enabled = false;
                }
                else
                {
                    ArticuloPanel.Enabled = true;
                    CerrarDetalleBtn.Text = "Facturar";
                    CerrarDetalleBtn.Enabled = true;
                    ArticuloContratoListView.Enabled = true;
                }


                ArticuloContratoListView.DataBind();

                LimpiarArticulo();


            }
            catch (Exception ex)
            {
                ErrorLabel.Text = ex.Message;
                ErrorLabel.Visible = true;
                FadeOut(ErrorLabel.ClientID, 5000);
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("ContratoDetalle.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContratoDetalle.aspx");
        }



        protected void DeleteRecord(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(ArticuloContratoDS.ConnectionString);

            cmd = new SqlCommand("management.[sp_Contrato_delete]", con);
            cmd.Parameters.Add(new SqlParameter("@IdContrato", ID));



            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();



            con.Close();
        }





        protected void FadeOut(string ClientID, int Time)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "script", "window.setTimeout(function() { document.getElementById('" + ClientID + "').style.display = 'none' }," + Time.ToString() + ");", true);
        }

        void DisableControls()
        {
            txtNroContrato.Enabled = false;
            txtSearchProveedor.Disabled = true;
            txtFechaInicioContrato.Enabled = false;
            txtFechaFinContrato.Enabled = false;
            IdLicitacionDDL.Enabled = false;
            TipoDDL.Enabled = false;
        }

        void EnableControls()
        {
            txtNroContrato.Enabled = true;
            txtSearchProveedor.Disabled = false;
            txtFechaInicioContrato.Enabled = true;
            txtFechaFinContrato.Enabled = true;
            IdLicitacionDDL.Enabled = true;
            TipoDDL.Enabled = true;
        }

        void LimpiarArticulo()
        {
            txtSearchArticulo.Value = "";
            txtArticuloCantidad.Value = "";
            txtArticuloPrecio.Value = "";
        }

        private void ShowPopUpMsg(string msg)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("alert('");
            sb.Append(msg.Replace("\n", "\\n").Replace("\r", "").Replace("'", "\\'"));
            sb.Append("');");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "showalert", sb.ToString(), true);
        }

        protected void AgregarArticuloBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            Int32 cant;

            if (txtNroContrato.Text == "")
            {
                ShowPopUpMsg("Favor ingresar un número de factura");
                return;
            }

            try
            {
                cant = Convert.ToInt32(txtArticuloCantidad.Value.ToString());
            }
            catch
            {
                ShowPopUpMsg("La cantidad solicitada debe ser un número válido");
                return;
            }

            try
            {
                cant = Convert.ToInt32(txtArticuloPrecio.Value.ToString());
            }
            catch
            {
                ShowPopUpMsg("El precio debe ser un número válido");
                return;
            }


            try
            {
                SqlConnection conn = new SqlConnection(ArticuloContratoDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "management.sp_AddArticuloContrato";
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Proveedor", txtSearchProveedor.Value);
                cmd.Parameters.AddWithValue("@FechaInicioContrato", txtFechaInicioContrato.Text);
                cmd.Parameters.AddWithValue("@FechaFinContrato", txtFechaFinContrato.Text);
                cmd.Parameters.AddWithValue("@NroContrato", txtNroContrato.Text);
                cmd.Parameters.AddWithValue("@IdLicitacion", IdLicitacionDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@ArticuloMaestro", txtSearchArticulo.Value);
                cmd.Parameters.AddWithValue("@CantidadArticulo", txtArticuloCantidad.Value);
                cmd.Parameters.AddWithValue("@Precio", txtArticuloPrecio.Value);
                cmd.Parameters.AddWithValue("@IdImpuesto", IdImpuestoDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@Tipo", TipoDDL.SelectedValue);


                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

                DisableControls();

                ArticuloContratoListView.DataBind();

                LimpiarArticulo();

                txtSearchArticulo.Focus();


            }
            catch (Exception ex)
            {
                ErrorLabel.Text = ex.Message;
                ErrorLabel.Visible = true;
                FadeOut(ErrorLabel.ClientID, 5000);
            }
        }

        protected void btnClearArticulo_ServerClick(object sender, EventArgs e)
        {
            txtSearchArticulo.Value = "";
            txtArticuloCantidad.Value = "";
            txtArticuloPrecio.Value = "";
        }

        protected void CerrarDetalleBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();

            try
            {
                SqlConnection conn = new SqlConnection(ArticuloContratoDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "management.sp_CerrarContrato";
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.Add(new SqlParameter("@NroContrato", txtNroContrato.Text));


                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

                PrintInvoice();

                //Response.Redirect("Contrato.aspx");


            }
            catch (Exception ex)
            {
                ErrorLabel.Text = ex.Message;
                ErrorLabel.Visible = true;
                FadeOut(ErrorLabel.ClientID, 5000);
            }
        }

        protected void ArticuloContratoListView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (ArticuloContratoListView.Items.Count > 0)
                CerrarDetalleBtn.Visible = true;
            else
                CerrarDetalleBtn.Visible = false;
        }

        protected void ArticuloContratoListView_DataBound(object sender, EventArgs e)
        {
            if (ArticuloContratoListView.Items.Count > 0)
                CerrarDetalleBtn.Visible = true;
            else
                CerrarDetalleBtn.Visible = false;
        }


        protected void PrintInvoice()
        {
            string url;

            url = "rptKuDE.aspx?Id=" + Request.QueryString.Get("IdContrato");

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "popup", "window.open('" + url + "','_blank')", true);
        }


    }
}