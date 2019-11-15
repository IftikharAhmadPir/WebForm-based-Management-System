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
    public partial class account : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string sql = "select * from admin where id =" + txt_id.Text;
            SqlDataAdapter da = new SqlDataAdapter(sql, conString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();
            dt = ds.Tables[0];
            int c = dt.Rows.Count;
            if (c > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    txt_email.Text = dr["email"].ToString();
                    txt_password.Text = dr["password"].ToString();
                    txt_rpassword.Text = dr["repeatpassword"].ToString();
                    txt_rcode.Text = dr["recoverycode"].ToString();
                    

                }

            }
            else
            {
                lbl_result.Text = "No Result Found";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string email = txt_email.Text;
            string password = txt_password.Text;
            string rpassword = txt_email.Text;
            string rcode = txt_rcode.Text;
            
            string sql = "update admin set email='" + email + "',password='" + password + "',repeatpassword='" + rpassword + "',recoverycode='" + rcode + "' where id='" + id + "';";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();


            if (res == 1)
            {
                lbl_result.Text = "Data Updated succesfully";
            }
            else
            {
                lbl_result.Text = "Data Updates Unsuccesfully";
            }

            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string sql = "Delete from admin where id=" + txt_id.Text + ";";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();


            if (res == 1)
            {
                lbl_result.Text = "Data Deleted succesfully";
            }
            else
            {
                lbl_result.Text = "Data Deleted Unsuccesfully";
            }

            con.Close();
        }
    }
}