using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace jobportal
{
    public class DLINSERT
    {

            SqlConnection con;
            SqlCommand cmd, cmd1;

            public DLINSERT()
            {
                con = new SqlConnection("Data Source=.;Initial Catalog=db_jobportal;Integrated Security=True;Pooling=False");
                cmd = new SqlCommand();
                cmd.Connection = con;

                cmd1 = new SqlCommand();
                cmd1.Connection = con;
            }

            public SqlConnection Opencon()
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                return con;
            }

            public void Closecon()
            {
                con.Close();
            }

        public int DL_UReg(BLINSERT obj)
        {
            cmd.Connection = Opencon();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@fname", obj.Fname);
            cmd.Parameters.AddWithValue("@lname", obj.Lname);
            cmd.Parameters.AddWithValue("@loc", obj.Location);
            cmd.Parameters.AddWithValue("@qual", obj.Qualification);
            cmd.Parameters.AddWithValue("@indus", obj.Industry);
            cmd.Parameters.AddWithValue("@skill", obj.Skills);
            cmd.Parameters.AddWithValue("@exp", obj.Experience);
            cmd.Parameters.AddWithValue("@phn", obj.Phone);
            cmd.Parameters.AddWithValue("@email", obj.Email);
            cmd.Parameters.AddWithValue("@pwd", obj.Password);

            cmd.CommandText = "PROC_REG_USER";

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@rid";
            cmd.Parameters.Add("@rid", DbType.Int32);
            cmd.Parameters["@rid"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            int r = Convert.ToInt32(cmd.Parameters["@rid"].Value);
            Closecon();


            cmd1.Connection = Opencon();
            cmd1.CommandType = CommandType.StoredProcedure;


            cmd1.Parameters.AddWithValue("@rid", r);
            cmd1.Parameters.AddWithValue("@email", obj.Email);
            cmd1.Parameters.AddWithValue("@pwd", obj.Password);

            cmd1.CommandText = "PROC_LOGIN_USER";

           
            int i = cmd1.ExecuteNonQuery();
            Closecon();
            return i;

        }

        public int DL_CReg(BLINSERT obj)
        {
            cmd.Connection = Opencon();
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@cname", obj.Cname);
            cmd.Parameters.AddWithValue("@type", obj.Type);
            cmd.Parameters.AddWithValue("@indus", obj.Industry);
            cmd.Parameters.AddWithValue("@desc", obj.Description);
            cmd.Parameters.AddWithValue("@addrs", obj.Address);
            cmd.Parameters.AddWithValue("@phn", obj.Phone);
            cmd.Parameters.AddWithValue("@email", obj.Email);
            cmd.Parameters.AddWithValue("@pwd", obj.Password);

            cmd.CommandText = "PROC_REG_COMPANY";

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@rid";
            cmd.Parameters.Add("@rid", DbType.Int32);
            cmd.Parameters["@rid"].Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            int r = Convert.ToInt32(cmd.Parameters["@rid"].Value);
            Closecon();




            cmd1.Connection = Opencon();
            cmd1.CommandType = CommandType.StoredProcedure;


            cmd1.Parameters.AddWithValue("@rid", r);
            cmd1.Parameters.AddWithValue("@email", obj.Email);
            cmd1.Parameters.AddWithValue("@pwd", obj.Password);

            cmd1.CommandText = "PROC_LOGIN_COMPANY";


            int i = cmd1.ExecuteNonQuery();
            Closecon();
            return i;

        }


        public int DL_ULogin(BLINSERT obj)
        {
            cmd.Connection = Opencon();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", obj.Email);
            cmd.Parameters.AddWithValue("@pwd", obj.Password);

            cmd.CommandText = "USER_LOGIN";
            
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Closecon();
            if (dt.Rows.Count == 1)
            {
                obj.Sess_Rid = dt.Rows[0][1].ToString();
                obj.Sess_User = dt.Rows[0][0].ToString();

                return 1;

            }
            else
            {
                return 0;
            }
            
        }


        public int DL_CLogin(BLINSERT obj)
        {
            cmd.Connection = Opencon();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", obj.Email);
            cmd.Parameters.AddWithValue("@pwd", obj.Password);

            cmd.CommandText = "COMPANY_LOGIN";

            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Closecon();
            if (dt.Rows.Count == 1)
            {
                obj.Sess_Rid = dt.Rows[0][1].ToString();
                obj.Sess_User = dt.Rows[0][0].ToString();

                return 1;

            }
            else
            {
                return 0;
            }

        }


        public int DL_Post_Job(BLINSERT obj)
        {
            cmd.Connection = Opencon();
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@title", obj.Title);
            cmd.Parameters.AddWithValue("@type", obj.Type);
            cmd.Parameters.AddWithValue("@loc", obj.Location);
            cmd.Parameters.AddWithValue("@desc", obj.Description);
            cmd.Parameters.AddWithValue("@qual", obj.Qualification);
            cmd.Parameters.AddWithValue("@hrs", obj.Work_Hours);
            cmd.Parameters.AddWithValue("@sal", obj.Salary);
            cmd.Parameters.AddWithValue("@date", obj.Close_Date);
            cmd.Parameters.AddWithValue("@company", obj.Cname);

            cmd.CommandText = "PROC_POST_JOB";

            int i = cmd.ExecuteNonQuery();
            Closecon();
            return i;

        }

        public void DL_Show_DataList(BLINSERT obj)
        {
            cmd.Connection = Opencon();
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.CommandText = "PROC_JOB_OPENING";

            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Closecon();

            obj.DL_Id.DataSource = dt;
            obj.DL_Id.DataBind();

        }

    }
}
    