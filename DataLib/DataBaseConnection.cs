using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataLib
{
    public class DataBaseConnection
    {
        public static SqlConnection ConnectionDB()
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=.\R2;Initial Catalog=trserv;Integrated Security=True");
            Connection.Open();
            return Connection;
        }
    }
}
