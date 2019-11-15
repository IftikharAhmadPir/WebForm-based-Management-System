using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HealthCare
{
    public partial class signup : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string email = txt_email.Text;
            string password = txt_password.Text;
            string rpassword = txt_rpassword.Text;
            string rcode = txt_rcode.Text;
            
            string sql = "insert into admin(email,password,repeatpassword,recoverycode) values ('" + email + "','" + password + "','" + rpassword + "','" + rcode + "')";


            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            if (res == 1)
            {
                lbl_result.Text = "USER REGISTERD";
            }
            else
            {
                lbl_result.Text = "ERROR";
            }
            con.Close();
        }
    }
}