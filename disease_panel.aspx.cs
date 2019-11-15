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
    public partial class disease : System.Web.UI.Page
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
            string disease_name = txt_name.Text;
            string symptoms = txt_symptoms.Text;
            string medicine = txt_medicine.Text;
            string disease_info = txt_info.Text;
            string prescribed_doctor = txt_doctor.Text;
            string sql = "insert into disease(disease_name,symptoms,medicine,disease_info,prescribed_doctor) values ('" + disease_name + "','" + symptoms + "','" + medicine + "','" + disease_info + "','" + prescribed_doctor + "')";


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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "select * from disease where id =" + txt_id.Text;
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
                    txt_name.Text = dr["disease_name"].ToString();
                    txt_symptoms.Text = dr["symptoms"].ToString();
                    txt_medicine.Text = dr["medicine"].ToString();
                    txt_info.Text = dr["disease_info"].ToString();
                    txt_doctor.Text = dr["prescribed_doctor"].ToString();
                    

                }

            }
            else
            {
                lbl_result.Text = "No Result Found";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string disease_name = txt_name.Text;
            string symptoms = txt_symptoms.Text;
            string medicine = txt_medicine.Text;
            string disease_info = txt_info.Text;
            string prescribed_doctor = txt_doctor.Text;

            string sql = "update disease set disease_name='" + disease_name + "',symptoms='" + symptoms + "',medicine='" + medicine + "',disease_info='" + disease_info + "',prescribed_doctor='" + prescribed_doctor + "' where id='" + id + "';";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string sql = "Delete from disease where id=" + txt_id.Text + ";";
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