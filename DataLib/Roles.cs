using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataLib
{
    public class Roles
    {
        public static string GetRoleByLogin(string Login)
        {
            string result = "";
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            SqlDataReader SDR = null;
            string command = "SELECT l.Role FROM login l WHERE l.login = '" + Login + "'";
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
