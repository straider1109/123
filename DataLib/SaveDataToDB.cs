﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DataLib
{
    public class SaveDataToDB
    {
        public static void SaveGoods(string typeId, string name, string description, 
            string price, DateTime date, string amount, string src, string login)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "INSERT INTO Goods (typeID, name, description, price, date, amount) VALUES('" +
                typeId + "','" + name + "','" + description + "', '" + price + "','" + date + "','" + amount + "')";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
            string GoodsId = GetGoodsId();
            string LoginId = GetDataDromDB.GetLoginId(login);

            InsertDataInDeelSuply(LoginId, GoodsId);
            InsertDataInPhoto(GoodsId, src);
        }

        public static void UpdateGoods(string typeId, string name, string description,
            string price, string amount, string goodsId)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "Update Goods Set TypeId='" + typeId + "', name='" + name + "', description='" + description + "',price='" + price + "',amount='" + amount + "' where goodsid='" + goodsId + "'";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
        }

        private static string GetGoodsId()
        {
            string result = "";
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            SqlDataReader SDR = null;
            string command = "select max(goodsId) from goods";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
            SDR = com.ExecuteReader();
            while (SDR.Read())
            {
                result = SDR[0].ToString();
            }
            return result;
        }

        private static void InsertDataInDeelSuply(string loginId, string goodsId)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "INSERT INTO DeelSuply (loginId, goodsId) VALUES('" +
                loginId + "','" + goodsId + "')";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
        }

        private static void InsertDataInPhoto(string goodsId, string src)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "INSERT INTO Photo (goodsId, src) VALUES('" +
                goodsId + "','" + src + "')";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
        }

        public static void LoginUpdate(string firstName, string LastName,
            string Organization, string Phone, string Username)
        {
            SqlConnection Con = DataBaseConnection.ConnectionDB();
            string command = "Update Login Set firstname='" + firstName + "', lastname='" + LastName + "', organization='" + Organization + "',phone='" + Phone + "' Where login='" + Username + "'";
            SqlCommand com = new SqlCommand(command, Con);
            com.ExecuteNonQuery();
        }
    }
}
