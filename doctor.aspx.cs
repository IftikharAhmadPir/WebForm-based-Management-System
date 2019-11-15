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
    public partial class doctor : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select * from doc_location";
                DataTable dt = search(sql);
                ddl_location.DataSource = dt;
                ddl_location.DataValueField = "doc_id";
                ddl_location.DataTextField = "doc_location";
                ddl_location.DataBind();
                

            }
            
        }

        public DataTable search(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, conString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();
            return ds.Tables[0];
        }

        protected void ddl_location_SelectedIndexChanged(object sender, EventArgs e)
        {

            string location = ddl_location.SelectedValue;
            if (location != "")
            {
                string sql1 = "select * from doctor_New where doc_id='" + location + "'";
                DataTable dt1 = search(sql1);
                int c = dt1.Rows.Count;
                if (c > 0)
                {
                    g_v.DataSource = dt1;
                    g_v.DataBind();
                }
                else
                {
                    lbl_result.Text = "No Doctor Exist On The Selected Location";
                }

            }
            
        }

        
        }

       
    }
