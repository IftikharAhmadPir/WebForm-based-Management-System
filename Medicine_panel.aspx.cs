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


        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        
        

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string name = txt_name.Text;
            string salt = txt_salt.Text;
            string edate = txt_edate.Text;
            string price = txt_price.Text;
            string manufacturer = txt_man.Text;
            string quantity = txt_quantity.Text;
            string sql = "insert into medicine(name,salt,expire_date,price,manufacturer,quantity) values ('" + name + "','" + salt + "','" + edate + "','" + price + "','" + manufacturer + "','" + quantity + "')";


            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            if (res == 1)
            {
                lbl_result.Text = "Data Inserted Succesfully";
            }
            else
            {
                lbl_result.Text = "Data Not Inserted Succesfully";
            }
            con.Close();

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string sql = "select * from medicine where id =" + txt_id.Text;
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
                    txt_name.Text = dr["name"].ToString();
                    txt_salt.Text = dr["salt"].ToString();
                    txt_edate.Text = dr["expire_date"].ToString();
                    txt_price.Text = dr["price"].ToString();
                    txt_man.Text = dr["manufacturer"].ToString();
                    txt_quantity.Text = dr["quantity"].ToString();

                }

            }
            else
            {
                lbl_result.Text = "No Result Found";
            }

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string name = txt_name.Text;
            string salt = txt_salt.Text;
            string price = txt_price.Text;
            string expire_date = txt_edate.Text;
            string menufacterur = txt_man.Text;
            string quantity = txt_quantity.Text;

            string sql = "update medicine set name='" + name + "',salt='" + salt + "',price='" + price + "',expire_date='" + expire_date + "',manufacturer='" + menufacterur + "',quantity='" + quantity + "' where id='" + id + "';";
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

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string sql = "Delete from medicine where id=" + txt_id.Text + ";";
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

        protected void btn_insert_Click1(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string name = txt_name.Text;
            string salt = txt_salt.Text;
            string edate = txt_edate.Text;
            string price = txt_price.Text;
            string manufacturer = txt_man.Text;
            string quantity = txt_quantity.Text;
            string sql = "insert into medicine(name,salt,expire_date,price,manufacturer,quantity) values ('" + name + "','" + salt + "','" + edate + "','" + price + "','" + manufacturer + "','" + quantity + "')";


            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            if (res == 1)
            {
                lbl_result.Text = "Data Inserted Succesfully";
            }
            else
            {
                lbl_result.Text = "Data Not Inserted Succesfully";
            }
            con.Close();

        }

        protected void btn_search_Click1(object sender, EventArgs e)
        {
            string sql = "select * from medicine where id =" + txt_id.Text;
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
                    txt_name.Text = dr["name"].ToString();
                    txt_salt.Text = dr["salt"].ToString();
                    txt_edate.Text = dr["expire_date"].ToString();
                    txt_price.Text = dr["price"].ToString();
                    txt_man.Text = dr["manufacturer"].ToString();
                    txt_quantity.Text = dr["quantity"].ToString();

                }

            }
            else
            {
                lbl_result.Text = "No Result Found";
            }
        }

        protected void btn_update_Click1(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string name = txt_name.Text;
            string salt = txt_salt.Text;
            string price = txt_price.Text;
            string expire_date = txt_edate.Text;
            string menufacterur = txt_man.Text;
            string quantity = txt_quantity.Text;

            string sql = "update medicine set name='" + name + "',salt='" + salt + "',price='" + price + "',expire_date='" + expire_date + "',manufacturer='" + menufacterur + "',quantity='" + quantity + "' where id='" + id + "';";
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

        protected void btn_delete_Click1(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string sql = "Delete from medicine where id=" + txt_id.Text + ";";
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