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
    public partial class doctor_panel : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("admin.aspx");
            }
            if (!IsPostBack)
            {
                string sql = "select * from doc_location";
                SqlDataAdapter da = new SqlDataAdapter(sql, conString);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                ddl_location.DataSource = dt;
                ddl_location.DataValueField = "doc_id";
                ddl_location.DataTextField = "doc_location";
                ddl_location.DataBind();

            }
            if(!IsPostBack)
            {
                string sql = "select DISTINCT spelization from doctor_New";
                SqlDataAdapter da = new SqlDataAdapter(sql, conString);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
               ddl_speclization.DataSource = dt;
               ddl_speclization.DataValueField = "spelization";
               ddl_speclization.DataTextField = "spelization";
                ddl_speclization.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text;
            string name = txt_name.Text;
            string qualification = txt_qualification.Text;
            string speclization = ddl_speclization.SelectedValue;
            string address = txt_address.Text;
            ListItem loc = ddl_location.SelectedItem;
            string location = loc.ToString();
            int loc_id = Convert.ToInt32( ddl_location.SelectedValue);

            string sql = "insert into doctor_New(name,qualification,spelization,address,doc_location,doc_id) values ('" + name + "','" + qualification + "','" + speclization + "','" + address + "','" + location + "', "+loc_id+")";


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
            string sql = "select * from doctor_New where id =" + txt_id.Text;
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
                    txt_qualification.Text = dr["qualification"].ToString();
                    ddl_speclization.Text = dr["spelization"].ToString();
                    txt_address.Text = dr["address"].ToString();
                    //ddl_location.Text = dr["doc_location"].ToString();

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
            string name = txt_name.Text;
            string qualification = txt_qualification.Text;
            string speclization = ddl_speclization.Text;
            string address = txt_address.Text;
            ListItem location = ddl_location.SelectedItem;
            string loc_final = location.ToString();

            string sql = "update doctor set name='" + name + "',qualification='" + qualification + "',spelization='" + speclization + "',address='" + address + "',doc_location='" + loc_final + "' where id='" + id + "';";
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
            string sql = "Delete from doctor_new where id=" + txt_id.Text + ";";
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

        protected void ddl_location_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}