using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class LOGIN_USER : System.Web.UI.Page
    {
        BLINSERT b3 = new BLINSERT();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ulogin_Click(object sender, EventArgs e)
        {
            b3.Email = txt_email.Text;
            b3.Password = txt_pwd.Text;

            int i = b3.BL_ULogin(b3);
            if (i == 1)
            {
                Response.Redirect("~/USER.aspx");
                Session["user"] = b3.Sess_User;
                Session["rid"] = b3.Sess_Rid;
            }
            else
            {
                Response.Write("<script>alert('Invalid User')</script>");
            }


            
        }
    }
}