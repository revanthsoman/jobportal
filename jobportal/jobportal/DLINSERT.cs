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




        }

    }
    }