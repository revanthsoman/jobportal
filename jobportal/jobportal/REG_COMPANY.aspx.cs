using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportal
{
    public partial class REG_COMPANY : System.Web.UI.Page
    {
        BLINSERT b2 = new BLINSERT();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_creg_Click(object sender, EventArgs e)
        {
            b2.Cname = txt_cname.Text;
            b2.Type = rbtn_company_type.SelectedItem.Value;
            b2.Industry = txt_industry.Text;
            b2.Description = txt_description.Text;
            b2.Address = txt_address.Text;
            b2.Phone = txt_phone.Text;
            b2.Email = txt_mail.Text;
            b2.Password = txt_pwd.Text;

            int i = b2.BL_CReg(b2);
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