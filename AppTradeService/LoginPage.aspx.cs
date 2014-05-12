using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;

namespace AppTradeService
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected string redirectNextPage = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void registrationBtnClick(object sender, EventArgs e)
        {
            string passwordHash = GetHashString(passBoxReg.Text);
            DataLib.Registration.Registrationn(loginBoxReg.Text, passwordHash, companyBoxReg.Text, rbListReg.SelectedValue.Trim());
        }

        protected void LoginBtnClick(object sender, EventArgs e)
        {
            string getPasswordHash = GetHashString(passBox.Text);
            string oldPasswordHash = DataLib.Login.Login.GetHashPasswordByLogin(loginBox.Text);
            if (getPasswordHash != oldPasswordHash)
            {
                lblError.Text = "Username or Password incorrect";
            }
            else {
                FormsAuthentication.SetAuthCookie(loginBox.Text, false);
                string role = DataLib.Roles.GetRoleByLogin(loginBox.Text);
                int newRole = Convert.ToInt32(role);
                if (newRole == 0)
                {
                    Response.Redirect("~/ClientPage.aspx");
                }
                else if (newRole == 1)
                {
                    Response.Redirect("~/DealerMainPage.aspx");
                }
            }
        }

        public static byte[] GetHash(string inputString)
        {
            HashAlgorithm algorithm = MD5.Create();  
            return algorithm.ComputeHash(Encoding.UTF8.GetBytes(inputString));
        }

        public static string GetHashString(string inputString)
        {
            StringBuilder sb = new StringBuilder();
            foreach (byte b in GetHash(inputString))
                sb.Append(b.ToString("X2"));

            return sb.ToString();
        }
    }
}