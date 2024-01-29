using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerAssessment_9
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblInfo.Visible = false;
            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LblInfo.Visible = true;
            
                LblInfo.Text += "<br> Customer Name: "+TextBox1.Text;

                LblInfo.Text += "<br/> MobileNo: " + TextBox2.Text;
                LblInfo.Text += "<br/> EmailId: " + TextBox3.Text;
                LblInfo.Text += "<br/> Password: " + TextBox4.Text;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = TextBox1.Text.Length >= 6;
        }
    }
}