using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class LOGIN_COMPANY : System.Web.UI.Page
    {
        BLINSERT b4 = new BLINSERT();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_clogin_Click(object sender, EventArgs e)
        {
            b4.Email = txt_email.Text;
            b4.Password = txt_pwd.Text;

            int i = b4.BL_CLogin(b4);
            if (i == 1)
            {
                Session["user"] = b4.Sess_User;
                Session["rid"] = b4.Sess_Rid;
                Response.Redirect("~/COMPANY.aspx");
             
            }
            else
            {
                Response.Write("<script>alert('Invalid User')</script>");
            }
        }
    }
}