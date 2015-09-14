using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class USER : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["user"].ToString()) == "")
            {
                Response.Write("<script>alert('You have to login first')</script>");
                Server.Transfer("~/LOGIN_USER.aspx");
            }
            else
            {
                lbl_user.Text = Session["user"].ToString();
            }
        }

        protected void linkbtn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = "";
            Session["rid"] = "";
            Response.Write("<script>alert('You have Logged out')</script>");
            Server.Transfer("~/HOME.aspx");
        }

        protected void btn_job_opening_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/JOBOPENINGS.aspx");
        }
    }
}