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
    
    public partial class recover : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btn_recovery_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string code = txt_code.Text;
            string sql = "select * from admin where recoverycode =" + txt_code.Text;
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

                    lbl_code.Text = dr["password"].ToString();

                }

            }
            else
            {
                lbl_code.Text = "WRONG CODE!!";
            }

                            
        }
    }
}