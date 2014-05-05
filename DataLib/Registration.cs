using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataLib
{
    public class Registration
    {
        public static void Registrationn(string Login, string Password, string Organization, string Role)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "INSERT INTO Login (login, password, Organization, Role) VALUES('" + Login + "','" + Password + "','" + Organization + "', '" + Role + "')";
            SqlCommand com = new SqlCommand(command,Con);
            com.ExecuteNonQuery();
        }
    }
}
