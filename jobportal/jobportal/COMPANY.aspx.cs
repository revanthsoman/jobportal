using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class COMPANY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["user"].ToString()) == "")
            {
                Response.Write("<script>alert('You have to login first')</script>");
                Server.Transfer("~/LOGIN_COMPANY.aspx");
            }
            else
            {
                lbl_company.Text = Session["user"].ToString();
            }
          
        }

        protected void linkbtn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = "";
            Session["rid"] = "";
            Response.Write("<script>alert('You have Logged out')</script>");
            Server.Transfer("~/HOME.aspx");
        }

        protected void btn_postjob_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/POSTJOBS.aspx");
        }
    }
}