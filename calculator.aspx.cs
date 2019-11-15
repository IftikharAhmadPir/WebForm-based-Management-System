using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare
{
    public partial class calculators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


            lbl_ans_extends.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            
            try
            {
                lbl_ans_extends.Visible = true;
                string height = txt_height.Text;
            string weight = txt_weight.Text;
            if ((height != "") && (weight != ""))
            {
                Double height1 = Convert.ToDouble(height);
                Double weight1 = Convert.ToDouble(weight);
                Double one = Convert.ToDouble(height1 * height1);

                Double two = Convert.ToDouble(weight1 / one);

                Double three = Convert.ToDouble(two * 703);
                lbl_answer.Text = three.ToString();
            }
                   }
                catch(ArgumentNullException)
            {
                lbl_answer.Text = "please enter some value";

                }
           


            
         
            
        }
    }
}