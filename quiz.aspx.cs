using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare
{
    public partial class quiz : System.Web.UI.Page
    {
        int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(rdo_ans1.SelectedValue=="PANADOL")
            {
                lbl_result.Text = "Right Answer";
                
            }
            else
            {
                lbl_result.Text = "Wrong Answer";
             
            }
        }

        protected void btn_resultone_Click(object sender, EventArgs e)
        {
            if (rdo_ans2.SelectedValue == "ALP")
            {
                lbl_result1.Text = "Right Answer";
               
            }
            else
            {
                lbl_result1.Text = "Wrong Answer";
                
            }
        }

        protected void btn_submittwo_Click(object sender, EventArgs e)
        {
            if (rdo_ans3.SelectedValue == "LYXOTINAL")
            {
                lbl_result2.Text = "Right Answer";
                
            }
            else
            {
                lbl_result2.Text = "Wrong Answer";
                
            }
        }
    }
}