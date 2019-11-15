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
    public partial class Medicine_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("admin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "select * from medicine where id =" + txt_iid.Text;
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


                    txt_nname.Text = dr["name"].ToString();
                    txt_ssalt.Text = dr["salt"].ToString();
                    txt_eedate.Text = dr["expire_date"].ToString();
                    txt_pprice.Text = dr["price"].ToString();
                    txt_mman.Text = dr["manufacturer"].ToString();
                    txt_qquantity.Text = dr["quantity"].ToString();

                }

            }
        }

        protected void btn_sale_Click(object sender, EventArgs e)
        {
            string id = txt_iid.Text;
            string name = txt_nname.Text;
            string salt = txt_ssalt.Text;
            string price = txt_pprice.Text;
            string expire_date = txt_eedate.Text;
            string menufacterur = txt_mman.Text;
            string quantity = txt_qquantity.Text;
            int qqquantity = Convert.ToInt32(quantity);
            string pquantity = txt_pquantity.Text;
            int ppquantity = Convert.ToInt32(pquantity);
            int sale = Convert.ToInt32(qqquantity-ppquantity);

            string sql = "update medicine set name='" + name + "',salt='" + salt + "',price='" + price + "',expire_date='" + expire_date + "',manufacturer='" + menufacterur + "',quantity='" + sale + "' where id='" + id + "';";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();


            if (res == 1)
            {
                lbl_rresult.Text = "SOLD";
            }
            else
            {
                lbl_rresult.Text = "Error Selling Medicine!!!";
            }

            con.Close();

        }
    }
}