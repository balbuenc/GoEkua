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
    public partial class dte : System.Web.UI.Page
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

            Response.Redirect("dte.aspx?state=pendiente");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("dte.aspx?state=pendiente");
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
      


        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            ContratoListView.DataBind();
        }

        protected void DeleteRecord(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(ContratoDS.ConnectionString);

            cmd = new SqlCommand("management.[sp_Contrato_delete]", con);
            cmd.Parameters.Add(new SqlParameter("@IdContrato", ID));



            cmd.CommandType = CommandType.StoredProcedure;

            con.Open();
            cmd.ExecuteNonQuery();



            con.Close();
        }


        protected void ListView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                Response.Redirect("dte_detalle.aspx?IdContrato=" + e.CommandArgument.ToString());
            }
            else if (e.CommandName == "Eliminar")
            {
                DeleteRecord(e.CommandArgument.ToString());
                ContratoListView.DataBind();

                ErrorLabel.Text = "El registro se eliminó correctamente.";
                ErrorLabel.Visible = true;
                FadeOut(ErrorLabel.ClientID, 3000);
            }
        }


        protected void FadeOut(string ClientID, int Time)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "script", "window.setTimeout(function() { document.getElementById('" + ClientID + "').style.display = 'none' }," + Time.ToString() + ");", true);
        }





        protected void AddLicitacionBtn_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("dte_detalle.aspx");
        }

        protected void ContratoListView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            Label lblEstado = (Label)e.Item.FindControl("lblEstado");
            LinkButton DeleteContratoBtn = (LinkButton)e.Item.FindControl("DeleteContratoBtn");
            LinkButton EditContratoBtn = (LinkButton)e.Item.FindControl("EditContratoBtn");



            try
            {
                EditContratoBtn.Enabled = true;
                DeleteContratoBtn.Enabled = true;

                if (lblEstado.Text == "Finalizado")
                {
                    DeleteContratoBtn.Visible = false;
                    EditContratoBtn.Visible = false;
                    lblEstado.Attributes["class"] = "badge badge-danger";
                }
                else
                {
                    DeleteContratoBtn.Visible = true;
                    EditContratoBtn.Visible = true;
                    lblEstado.Attributes["class"] = "badge badge-success";
                }
            }
            catch (Exception ex)
            {
                return;
            }
        }

    }
}