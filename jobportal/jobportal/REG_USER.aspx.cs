using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class REG_USER : System.Web.UI.Page
    {
        BLINSERT bl = new BLINSERT();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ureg_Click(object sender, EventArgs e)
        {

            bl.Fname = txt_fname.Text;
            bl.Lname = txt_lname.Text;
            bl.Location = txt_location.Text;
            bl.Qualification = txt_qualification.Text;
            bl.Industry = txt_industry.Text;
            bl.Skills = txt_skills.Text;
            bl.Experience = Convert.ToInt32(txt_experience.Text);
            bl.Phone = txt_phone.Text;
            bl.Email = txt_mail.Text;
            bl.Password = txt_pwd.Text;

            int i = bl.BL_UReg(bl);
            if (i == 1)
            {
                Response.Write("<script>alert('Registration Successful')</script>");

            }
            else
            {
                Response.Write("<script>alert('Registration Failed')</script>");
            }

        }
    }
}