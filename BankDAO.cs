using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace EADP_Proj
{
    public class BankDAO
    {
        public Bank getRecordByName(string thename)
        {
            //Get connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

            SqlDataAdapter da;
            DataSet ds = new DataSet();

            //Create Adapter
            //WRITE SQL Statement to retrieve all columns from Customer by customer Id using query parameter
            StringBuilder sqlCommand = new StringBuilder();

            sqlCommand.AppendLine("Select * from Customer where");
            sqlCommand.AppendLine("custname = @paraCustName");
            //***TO TUTOR : Simulate system error  *****
            // change custId in where clause to custId1 or 
            // change connection string in web config to a wrong file name  

            Bank obj = new Bank();   // create a bank instance

            SqlConnection myConn = new SqlConnection(DBConnect);
            da = new SqlDataAdapter(sqlCommand.ToString(), myConn);
            da.SelectCommand.Parameters.AddWithValue("paraCustName", thename);
            // fill dataset
            da.Fill(ds, "Bank");
            int rec_cnt = ds.Tables["Bank"].Rows.Count;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables["Bank"].Rows[0];  // Sql command returns only one record
                obj.Principal = row["Principal"].ToString();
                obj.Term = row["Terms"].ToString();
                obj.InterestRate = row["InterestRate"].ToString();
            }
            else
            {
                obj = null;
            }

            return obj;
        } // end of getRecordByName
    }
}