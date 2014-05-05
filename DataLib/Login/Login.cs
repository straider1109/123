using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataLib.Login
{
    public class Login
    {
        public static string GetHashPasswordByLogin(string login)
        {
            string result = "";
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            SqlDataReader SDR = null;
            string command = "SELECT l.password FROM login l WHERE l.login = '" + login  + "'";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
            SDR = com.ExecuteReader();
            while (SDR.Read())
            {
                result = SDR[0].ToString();
            }
            return result;
        }
    }
}
