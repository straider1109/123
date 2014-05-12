using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

namespace AppTradeService
{
    public partial class DealerMainPage : System.Web.UI.Page
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

            DataTable types = new DataTable();
            types = DataLib.GetDataDromDB.GetTypes();
            for (int i=0; i< types.Rows.Count; i++)
            {
                ListItem l = new ListItem();
                l.Value = types.Rows[i][0].ToString();
                l.Text = types.Rows[i][1].ToString();
                dealerDropDownType.Items.Add(l);
            }

            if (!IsPostBack)
            {
                LoadAllGoods(username);
            }
        }

        protected void SaveGoods(object sender, EventArgs e)
        {
            string username = FormsAuthentication.Decrypt(Request.Cookies[0].Value).Name;
            String savePath = @"d:\test\";
            if (FileUpload1.HasFile)
            {
                String fileName = FileUpload1.FileName;
                savePath += fileName;
                FileUpload1.SaveAs(savePath);
                DateTime date = new DateTime();
                date = DateTime.Today;
                DataLib.SaveDataToDB.SaveGoods(dealerDropDownType.SelectedValue, dealerAddNameText.Text, dealerDescriptionText.Text, dealerPriceText.Text, date, dealerAmountText.Text, fileName, username);
            }
        }

        private void LoadAllGoods(string login)
        {
            string LoginId = "4";// DataLib.GetDataDromDB.GetLoginId(login);
            DataTable Dt = DataLib.GetDataDromDB.GetAllGoodsByLoginId(LoginId);
            Button button = new Button();
            for (int i = 0; i < Dt.Rows.Count; i++)
            {
               // GoodsPanel.Controls.Add(new LiteralControl("<table width=400px bgcolor=#C5BEB6 style=\"margin-top:10px;color:black;\"><tr style=\"font-size:12px\"><td><b>г.в.</b>"));
                //GoodsPanel.Controls.Add(new LiteralControl("<tr><td style=\"background-color:#F8F8F8\"><img src=\"\" style=\"width:30%;float:left;\"/>Объем:  куб.см<br>Цвет: <br>Тип КПП: <br>Привод: <br>Состояние:  из 5<div style=\"text-align:right;background-color:#EDE6DE;)\"><b>$</b></div></td></tr>"));
                //GoodsPanel.Controls.Add(new LiteralControl("</td></tr></table>\n"));
                if (i > 3)
                {
                    button.Text = "Следующие товары";
                    button.Attributes.Add("OnClick", "NextGoods");
                    button.ID = "5+";
                    button.Attributes.Add("AutoPostBack", "true");
                    GoodsPanel.Controls.Add(button);
                    //GoodsPanel.Controls.Add(new LiteralControl("<asp:Button ID=\"nextGoods#5+\" runat=\"server\" AutoPostBack=\"True\" Text=\"Следующие товары\" CssClass=\"btn btn-default dealerSaveBtn\" OnClick=\"NextGoods(this)\"/>"));
                    break;
                }
            }
        }

        protected void NextGoods(object sender, EventArgs e)
        {

        }
    }
}