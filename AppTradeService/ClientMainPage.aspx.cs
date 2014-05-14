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
    public partial class ClientMainPage : System.Web.UI.Page
    {
        int page = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = FormsAuthentication.Decrypt(Request.Cookies[0].Value).Name;
            string role = DataLib.Roles.GetRoleByLogin(username);
            int newRole = Convert.ToInt32(role);
            if (newRole == 1)
            {
                Response.Redirect("~/DealerMainPage.aspx");
            }
            GetTypes();
        }

        private void GetTypes()
        {
            DataTable types = new DataTable();
            types = DataLib.GetDataDromDB.GetTypes();
            for (int i = 0; i < types.Rows.Count; i++)
            {
                ListItem l = new ListItem();
                l.Value = types.Rows[i][0].ToString();
                l.Text = types.Rows[i][1].ToString();
                clientDropDownType.Items.Add(l);
            }
        }

        protected void ExitBtnClick(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void Search(object sender, EventArgs e)
        {
            string username = FormsAuthentication.Decrypt(Request.Cookies[0].Value).Name;
            FillControl(username);
        }

        private void FillControl(string login)
        {
            string LoginId = DataLib.GetDataDromDB.GetLoginId(login);
            DataTable Dt = DataLib.GetDataDromDB.getGoodsForClient(clientDropDownType.SelectedIndex.ToString(), clientSearchByPriceLow.Text, clientSearchByPriceHigh.Text);

            int page_size = 4;
            int fist = (page - 1) * page_size;
            int last = fist + page_size;
            string output = "";

            output += "<table border=1>\n";
            output += "<tr ><th >Заголовок</th></tr>";

            for (int i = fist; i < last; i++)
            {
                if (i >= Dt.Rows.Count)
                    break;
                string id = Dt.Rows[i][0].ToString();
                string type = Dt.Rows[i][1].ToString();
                string src = Dt.Rows[i][2].ToString();
                string name = Dt.Rows[i][3].ToString();
                string price = Dt.Rows[i][4].ToString();
                string amount = Dt.Rows[i][5].ToString();
                string description = Dt.Rows[i][6].ToString();

                output += "<div class=\"outMain\">" +
                        "<div class=\"outName\">" +
                           "" + type +
                        "</div>" +

                        "<div class=\"outPhoto\">" +

                            "<img width=\"100%\" height=\"100%\" src=\"Images/" + src + "\">" +
                        "</div><div class=\"outText\">" +
                            name + "\n" +
                            price + "\n" +
                            amount + "\n" +
                            description + "\n" +
                            "<button class=\"btn btn-default btn-primary outBtn\" id=Edit_" + id + " onclick=\"OrderOpen(" + id + ")\"> Заказать </button></div>" +
                    "</div>";
            }

            int page_count = Convert.ToInt32(Math.Ceiling(Convert.ToDouble(Convert.ToDouble(Dt.Rows.Count) / Convert.ToDouble(page_size))));
            string strPage = "";

            for (int i = 1; i <= page_count; i++)
            {
                if (page == i)
                {
                    strPage += " <font style='font-size:14px' color=gray>" + i + "</font> ";
                }
                else
                {
                    strPage += " <a href='" + Request.FilePath + "?page=" + i + "'>" + i + "</a> ";
                }
            }

            if (page_count > 1)
                output += "<tr><td ><BR>" + strPage + "</td><tr>";
            output += "</table>\n";


            lOutput.Text = output;
        }
    }
}