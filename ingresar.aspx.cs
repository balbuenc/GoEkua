using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoWebForms
{
    public partial class ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Login_OnClick(object sender, EventArgs args)
        {
            if (ValidateUser(UsernameTextbox.Text, PasswordTextbox.Text))
            {
              FormsAuthentication.RedirectFromLoginPage(UsernameTextbox.Text, true);
            }
            else
                Msg.Text = "Error en inicio de sesión. Favor verifique sus credenciales e intente de nuevo.";
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
                Msg.Text = ex.Message;
                return null;
            }
        }

        bool ValidateUser(string UserName, String Password)
        {
            SqlCommand cmd = new SqlCommand();

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["AlmacenesConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);

                cmd.Connection = conn;

                cmd.CommandText = "[secure].[sp_User_Validate]";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);

                SqlParameter RetParam = new SqlParameter("@Authentincated", SqlDbType.Int);
                RetParam.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(RetParam);

                conn.Open();
                cmd.ExecuteNonQuery();

                int IntReturn = Convert.ToInt32(cmd.Parameters["@Authentincated"].Value);

                conn.Close();

                Session["UserRole"] = GetUserRole(UserName);
                //Session["SecureMatrix"] = SetSecureMatrix(Session["UserRole"].ToString());

                //ValidateRole();

                if (IntReturn == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Msg.Text = ex.Message;
                return false;


            }


        }
    }
}