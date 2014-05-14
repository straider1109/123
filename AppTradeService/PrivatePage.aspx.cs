using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

namespace AppTradeService
{
    public partial class PrivatePage : System.Web.UI.Page
    {
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = FormsAuthentication.Decrypt(Request.Cookies[0].Value).Name;
            if (!IsPostBack)
            {
                DataTable data = DataLib.GetDataDromDB.getLoginInfo(username);
                privateNameText.Text = data.Rows[0][3].ToString();
                privateSurnameText.Text = data.Rows[0][4].ToString();
                privateFirmText.Text = data.Rows[0][5].ToString();
                privateTelText.Text = data.Rows[0][8].ToString();
            }
        }

        protected void SaveInfo(object sender, EventArgs e)
        {
            DataLib.SaveDataToDB.LoginUpdate(privateNameText.Text, privateSurnameText.Text, privateFirmText.Text, privateTelText.Text, username);
        }

        protected void ExitBtnClick(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/LoginPage.aspx");
        }
        
    }
}