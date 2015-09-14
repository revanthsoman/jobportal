using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


namespace jobportal
{
    public class BLINSERT
    {
        DLINSERT dl = new DLINSERT();

        string fname,lname,loc,qual,indus,skill, phone,email, pwd;
        String cname, type, desc, addrs;
        String susr,srid;
        String title, sal,date;
        int exp;
        int hours;
        DataList dl_id;

       
        //USER REGISTRATION
        public string Fname
        {
            get { return fname; }
            set { fname = value; }
        }

        public string Lname
        {
            get { return lname; }
            set { lname = value; }
        }

        public String Location
        {
            get { return loc; }
            set { loc = value; }
        }

        public string Qualification
        {
            get { return qual; }
            set { qual = value; }
        }

        public string Industry
        {
            get { return indus; }
            set { indus = value; }
        }

        public string Skills
        {
            get { return skill; }
            set { skill = value; }
        }

        public int Experience
        {
            get { return exp; }
            set { exp = value; }
        }

        public string Phone
        {
            set { phone = value; }
            get { return phone; }
        }

        public string Email
        {
            set { email = value; }
            get { return email; }
        }

        public string Password
        {
            set { pwd = value; }
            get { return pwd; }
        }

       public int BL_UReg(BLINSERT obj)
        {
            int i = dl.DL_UReg(this);
            return i;
        }

        //COMPANY REGISTRATION

        public string Cname
        {
            get { return cname; }
            set { cname = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public string Description
        {
            get { return desc; }
            set { desc = value; }
        }

        public string Address
        {
            get { return addrs; }
            set { addrs = value; }
        }

        public int BL_CReg(BLINSERT obj)
        {
            int i = dl.DL_CReg(this);
            return i;
        }

        //login

       public int BL_ULogin(BLINSERT obj)
        {
            int i = dl.DL_ULogin(this);
            return i;
        }

        public int BL_CLogin(BLINSERT obj)
        {
            int i = dl.DL_CLogin(this);
            return i;
        }


        //session
        public String Sess_User
        {
            set { susr = value; }
            get { return susr; }

        }

        public String Sess_Rid
        {
            set { srid = value; }
            get { return srid; }

        }


        //job posting

        public String Title
        {
            set { title = value; }
            get { return title; }

        }

        public int Work_Hours
        {
            set { hours = value; }
            get { return hours; }

        }

        public String Salary
        {
            set { sal = value; }
            get { return sal; }

        }

        public string Close_Date
        {
            set { date = value; }
            get { return date; }

        }

        public int BL_Post_Job(BLINSERT obj)
        {
            int i = dl.DL_Post_Job(this);
            return i;
        }


        //job openings

        public DataList DL_Id
        {
            set { dl_id = value; }
            get { return dl_id; }

        }

        public void BL_Show_DataList(BLINSERT obj)
        {
            dl.DL_Show_DataList(this);
        }
    }
}