using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace GoWebForms
{
    public partial class proveedores : System.Web.UI.Page
    {
        protected DataTable FeatureMatrix;
     

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

                if (Session["UserRole"] == null)
                    Session["UserRole"] = GetUserRole(User.Identity.Name);

                btn = (System.Web.UI.HtmlControls.HtmlButton)this.FindControl("BtnUser");
                btn.Attributes["title"] = Session["UserRole"].ToString();



                //Obtengo la Matriz permisos para el modulo segun el Rol del usuario
                FeatureMatrix = GetFeatureMatrix(Session["UserRole"].ToString(), "Proveedores");

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
            else if(Session["UserRole"].ToString() == "PROVEEDOR")
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

            Response.Redirect("Proveedores.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proveedores.aspx");
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

    
        protected void GetRecordToUpdate(String ID)
        {

            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(ProveedorDS.ConnectionString);

            cmd = new SqlCommand("go.[sp_Proveedores_get_Proveedor]", con);
            cmd.Parameters.Add(new SqlParameter("@id_proveedor", ID));
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
            SqlConnection con = new SqlConnection(ProveedorDS.ConnectionString);

            cmd = new SqlCommand("go.[sp_Proveedores_delete]", con);
            cmd.Parameters.Add(new SqlParameter("@id_proveedor", ID));



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
                TextBox txtid_proveedor = (TextBox)EditFormView.FindControl("txtid_proveedor");
                TextBox txtnombres = (TextBox)EditFormView.FindControl("txtnombres");
                TextBox txtapellidos = (TextBox)EditFormView.FindControl("txtapellidos");
                TextBox txtruc = (TextBox)EditFormView.FindControl("txtruc");
                TextBox txtdireccion = (TextBox)EditFormView.FindControl("txtdireccion");
                DropDownList IdClientesDDL = (DropDownList)EditFormView.FindControl("IdClientesDDL");
                DropDownList IdPaisesDDL = (DropDownList)EditFormView.FindControl("IdPaisesDDL");
                TextBox txtrazon_social = (TextBox)EditFormView.FindControl("txtrazon_social");
                TextBox txtemail = (TextBox)EditFormView.FindControl("txtemail");
                TextBox txttelefono = (TextBox)EditFormView.FindControl("txttelefono");


                //DateTime isoDateTime = DateTime.ParseExact(txtCalendar.Value, format, CultureInfo.InvariantCulture);

                SqlConnection conn = new SqlConnection(ProveedorDS.ConnectionString);

                cmd.Connection = conn;

                cmd.CommandText = "go.sp_Proveedores_update";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_proveedor", txtid_proveedor.Text);
                cmd.Parameters.AddWithValue("@nombres", txtnombres.Text);
                cmd.Parameters.AddWithValue("@apellidos", txtapellidos.Text);
                cmd.Parameters.AddWithValue("@ruc", txtruc.Text);
                cmd.Parameters.AddWithValue("@direccion", txtdireccion.Text);
                cmd.Parameters.AddWithValue("@id_pais", IdPaisesDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@id_cliente", IdClientesDDL.SelectedValue);
                cmd.Parameters.AddWithValue("@razon_social", txtrazon_social.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@telefono", txttelefono.Text);



                conn.Open();
                cmd.ExecuteNonQuery();

                conn.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "",
                "$('#editModal').modal('hide');", true);

                Response.Redirect("Proveedors.aspx");


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        protected void EditFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            EditFormView.ChangeMode(FormViewMode.ReadOnly);

            ProveedorListView.DataBind();

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
                ProveedorListView.DataBind();
            }
           
        }

        protected DataTable GetFeatureMatrix(string role, string module)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(ProveedorDS.ConnectionString);
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

        
    }
}