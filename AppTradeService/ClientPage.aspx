<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ClientPage.aspx.cs" Inherits="AppTradeService.ClientPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="clientHeader">
        <div class="helloClient">
            Приветствуем в вашем личном кабинете!
        </div>
    </div>

    <div class="clientSearchForm">
        
        <div class="borderInClientSearchForm">

            <asp:Label ID="clientLabelSearch" runat="server" Text="Поиск" CssClass="clientLabelSearch"></asp:Label>
            <br>
            <!-- -------------- Поиск по типу ----------->
            <asp:Label ID="clientLabelType" runat="server" Text="Тип товара:" CssClass="clientLabel1"></asp:Label>
            <asp:DropDownList ID="clientDropDownType" AutoPostBack="True" runat="server">
                <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
                <asp:ListItem Value="Silver"> Silver </asp:ListItem>
                <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
                <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
                <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>
            </asp:DropDownList>
            <br>
            <br>
            <!-- -------------- Поиск по названию ----------->
            <asp:Label ID="clientLabelName" runat="server" Text="Название товара:" CssClass="clientLabelName"></asp:Label>
            <asp:TextBox ID="clientSearchByName" runat="server" CssClass="form-control clientSearchByName"></asp:TextBox>
            <br>
            <!-- -------------- Поиск по цене ----------->
            <asp:Label ID="clientLabelPrice" runat="server" Text="Цена товара:" CssClass="clientLabelPrice"></asp:Label>
            <asp:TextBox ID="clientSearchByPrice" runat="server" CssClass="form-control clientSearchByPrice"></asp:TextBox>
            <br>
            <!-- -------------- Поиск по поставщику ----------->
            <asp:Label ID="clientLabelDealer" runat="server" Text="Показывать товары поставщика:"
                CssClass="clientLabelDealer"></asp:Label>
            <asp:DropDownList ID="clientDropDownDealer" AutoPostBack="True" runat="server">
                <asp:ListItem Selected="True" Value="White"> azot </asp:ListItem>
                <asp:ListItem Value="Silver"> himvolokno </asp:ListItem>
                <asp:ListItem Value="DarkGray"> tabachka </asp:ListItem>
            </asp:DropDownList>
            <br>
            <!-- -------------- Кнопка поиск ----------->
            <asp:Button ID="clientSearchBtn" runat="server" Text="Поиск" CssClass="btn btn-default" />

        </div>
    </div>

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="calendar">
            <asp:Calendar id="calendar" ShowGridLines="True" ShowTitle="True" runat="server"/>
        </div>
</asp:Content>
