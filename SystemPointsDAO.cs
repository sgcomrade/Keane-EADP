using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text;

namespace EADP_Proj
{
    public class SystemPointsDAO
    {
        public SystemPoints getRecordByName(string thename)
        {
            //Get connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

            SqlDataAdapter da;
            DataSet ds = new DataSet();

            //Create Adapter
            //WRITE SQL Statement to retrieve all columns from Customer by customer Id using query parameter
            StringBuilder sqlCommand = new StringBuilder();

            sqlCommand.AppendLine("Select * from CustomerPoints where");
            sqlCommand.AppendLine("cust = @paraCustName");
            //***TO TUTOR : Simulate system error  *****
            // change custId in where clause to custId1 or 
            // change connection string in web config to a wrong file name  

            SystemPoints obj = new SystemPoints();   // create a customer instance

            SqlConnection myConn = new SqlConnection(DBConnect);
            da = new SqlDataAdapter(sqlCommand.ToString(), myConn);
            da.SelectCommand.Parameters.AddWithValue("paraCustName", thename);
            // fill dataset
            da.Fill(ds, "CustomerPoints");
            int rec_cnt = ds.Tables["CustomerPoints"].Rows.Count;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables["CustomerPoints"].Rows[0];  // Sql command returns only one record
                obj.custPoints = Convert.ToSingle(row["custPoints"]);
                obj.custCode = Convert.ToSingle(row["refCode"]);
            }
            else
            {
                obj = null;
            }

            return obj;
        }
    }
}
