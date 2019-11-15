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
    public partial class disease1 : System.Web.UI.Page
    {
        string conString = @"Server=IFTIKHARAHMAD;integrated security =true;database=medical";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
           {
                string sql = "select * from disease";
                DataTable dt = search(sql);
                ddl_disease.DataSource = dt;
                ddl_disease.DataValueField = "id";
                ddl_disease.DataTextField = "disease_name";
                ddl_disease.DataBind();


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
        protected void ddl_disease_SelectedIndexChanged(object sender, EventArgs e)
        {



            string disease = ddl_disease.SelectedItem.Text;

            
                string sql = "select * from disease where disease_name='" + disease + "'";
                if (disease != "")
                {
                    DataTable dt = search(sql);
                    int c = dt.Rows.Count;
                    if (c > 0)
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            txt_symptoms.Text = dr["symptoms"].ToString();
                            txt_medicine.Text = dr["medicine"].ToString();
                            txt_info.Text = dr["disease_info"].ToString();
                            txt_doctor.Text = dr["prescribed_doctor"].ToString();
                        }
                    }
                    else
                    {
                        lbl_result.Text = "No Doctor Exist On The Selected Location";
                    }

                }



           
        }


    }
}