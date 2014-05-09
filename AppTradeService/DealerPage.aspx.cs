using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace AppTradeService
{
    public partial class DealerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = FormsAuthentication.Decrypt(Request.Cookies[0].Value).Name;
            string role = DataLib.Roles.GetRoleByLogin(username);
            int newRole = Convert.ToInt32(role);
            if (newRole == 0)
            {
                Response.Redirect("~/ClientPage.aspx");
            }
        }
    }
}