using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DataLib
{
    public class GetDataDromDB
    {
        public static DataTable GetTypes()
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "SELECT typeID, name FROM TypeOfGood";
            SqlDataAdapter adapter = new SqlDataAdapter(command, Con);
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }

        public static string GetLoginId(string Login)
        {
            string result = "";
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            SqlDataReader SDR = null;
            string command = "select l.loginId from login l where l.login='" + Login + "'";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
            SDR = com.ExecuteReader();
            while (SDR.Read())
            {
                result = SDR[0].ToString();
            }
            return result;
        }

        public static DataTable GetAllGoodsByLoginId(string loginId)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = @"select g.goodsid, tg.name, p.src, g.name, g.price, g.amount, g.description from goods g
                                inner join deelsuply dl on dl.goodsId = g.goodsID
                                inner join typeofgood tg on tg.typeid = g.typeid
                                inner join photo p on p.goodsid = g.goodsid
                                where dl.loginid='" + loginId + "';";
            SqlDataAdapter adapter = new SqlDataAdapter(command, Con);
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }
    }
}
