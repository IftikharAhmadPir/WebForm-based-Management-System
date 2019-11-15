using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HealthCare
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
            string username = txt_id.Text;
            string password = txt_password.Text;
            string sql = "Select * From admin Where email = '" + username + "' And password = '" + password + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, conString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();
            dt = ds.Tables[0];
            int c = dt.Rows.Count;
            if (c > 0)
            {
                Session["email"] = username;
                Response.Redirect("Medicine_index.aspx");
            }
            else
            {
                lbl_ans.Text = "Incorrect Login or Password";

            }
        }
    }
}