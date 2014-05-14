using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AppTradeService
{
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.Params["GoodId"]);
            if (!IsPostBack)
            {
                GetTypes();
            }
            DataTable data = DataLib.GetDataDromDB.GetAllGoodsByID(id);
            dealerDropDownTypeEdit.SelectedIndex = Convert.ToInt32(data.Rows[0][1]);
            dealerEditNameText.Text = data.Rows[0][2].ToString();
            dealerEditPriceText.Text = data.Rows[0][4].ToString();
            dealerEditAmountText.Text = data.Rows[0][5].ToString();
            dealerEditDescriptionText.Text = data.Rows[0][3].ToString();
        }
        protected void Save(object sender, EventArgs e)
        {
            DataLib.SaveDataToDB.UpdateGoods(dealerDropDownTypeEdit.SelectedIndex.ToString(), dealerEditNameText.Text, dealerEditAmountText.Text, dealerEditPriceText.Text, dealerEditAmountText.Text, Convert.ToInt32(Request.Params["GoodId"]).ToString());
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
                dealerDropDownTypeEdit.Items.Add(l);
            }
        }
    }
}