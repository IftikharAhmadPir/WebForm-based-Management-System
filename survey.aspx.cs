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
    public partial class survey : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_1extends.Visible = false;
            Lbl_2extends.Visible = false;
            lbl_3extends.Visible = false;
            Lbl_4extends.Visible = false;
        }
        public int search(string query)
        {
            SqlDataAdapter da = new SqlDataAdapter(query, conString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();
            dt = ds.Tables[0];
            return dt.Rows.Count;

        }

        protected void btn_one_Click(object sender, EventArgs e)
        {
            lbl_1extends.Visible = true;
            string rdo_ans = rdo_btn_ans.SelectedValue;

            string sql = "insert into one(answer) values ('" + rdo_ans + "')";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                string sql_c = "select * from one";
                string sql_rdo = "select * from one where answer='" + rdo_ans + "'";
                Double all_rcrd = search(sql_c);
                Double one_rcrd = search(sql_rdo);
                Double avrg = (one_rcrd / all_rcrd) * 100;
                lbl_result1.Text = avrg.ToString();



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rdo_ans = rdo_btn_ans.SelectedValue;
            Lbl_2extends.Visible = true;

            string sql = "insert into two(answer) values ('" + rdo_ans + "')";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                string sql_c = "select * from   two";
                string sql_rdo = "select * from two where answer='" + rdo_ans + "'";
                Double all_rcrd = search(sql_c);
                Double one_rcrd = search(sql_rdo);
                Double avrg = (one_rcrd / all_rcrd) * 100;
                lbl_result2.Text = avrg.ToString();



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string rdo_ans = rdo_btn_ans.SelectedValue;

            lbl_3extends.Visible = true;
            string sql = "insert into three(answer) values ('" + rdo_ans + "')";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                string sql_c = "select * from three";
                string sql_rdo = "select * from three where answer='" + rdo_ans + "'";
                Double all_rcrd = search(sql_c);
                Double one_rcrd = search(sql_rdo);
                Double avrg = (one_rcrd / all_rcrd) * 100;
                lbl_result3.Text = avrg.ToString();



            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string rdo_ans = rdo_btn_ans.SelectedValue;
            Lbl_4extends.Visible = true;

            string sql = "insert into four(answer) values ('" + rdo_ans + "')";
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(conString);

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = sql;
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                string sql_c = "select * from four";
                string sql_rdo = "select * from four where answer='" + rdo_ans + "'";
                Double all_rcrd = search(sql_c);
                Double one_rcrd = search(sql_rdo);
                Double avrg = (one_rcrd / all_rcrd) * 100;
                lbl_result4.Text = avrg.ToString();



            }
        }
    }
}