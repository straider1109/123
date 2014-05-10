﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientMainPage.aspx.cs" Inherits="AppTradeService.ClientMainPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <link href="/src/css/bootstrap.css" rel="stylesheet"/>

    <style type="text/css">

        body
        {
	        background-image: url('/src/vetton3.jpg');
        }
        /*-------------------------------------- МЕНЮ ------------------------------------------------ */
         .menushka
        {            
            height:57px;
        }
        /*-------------------------------------- Логотип ------------------------------------------------ */
        .logo
        {
            padding-left:4%;
        }
        /*-------------------------------------- Блоки ------------------------------------------------ */
        .mainBorder2
        {
            height:720px;
            margin-top:0%;
            border:1px solid #4086FF;
            background-color:#ffffff;
            border-radius:7px;
        }
        
        .block1
        {
            width:69%;
            height:97%;
            margin-top:1%;
            margin-left:1%;
            border:1px solid #4086FF;
            border-radius:7px;
            background-color:#A7BCCF;
            float:left;
        }
        
        .block2
        {
            width:28%;
            height:97%;
            margin-top:1%;
            margin-right:1%;
            border:1px solid #4086FF;
            border-radius:7px;
            background-color:#A7BCCF;
            float:right;
        }
        /*-------------------------------------- Футер ------------------------------------------------ */
        .footer
        {
            margin-top:10px;
            height: 60px;
            text-align:center;
            font-size: 80%
            
        }
        /*-------------------------------------- Элементы ------------------------------------------------ */
        .form-group
        {
            margin-top:3%;
            margin-left:5%;
            width:90%;
            height:5%;   
        }
        
        .first_el
        {
            margin-left:1%;
        }
        
        .form-control
        {
            width:100%;
        }
        /* -------------- Приветствие в клиенте ----------*/
        .clientHeader
        {
            height:40px;
        }
        /* -------------- Вверх формы клиента ----------*/
        .helloClient
        {
            border:1px #000 solid;
            margin-top:2%;
            margin-left:5%;
            padding-left:1%;
            text-align:center;
            float:left;
        }
        /* -------------- Форма для поиска в клиенте ----------*/
        .clientSearchForm
        {
            width:94%;
            height:370px;
            margin-top:2%;
            margin-left:3%;
            border:1px solid #4086FF;
            border-radius:7px;
            background-color:#A7BCCF;
            padding-top:3%;
            padding-left:3%;
        }
        
        /* -------------- Лэйбл ПОИСК ----------*/ 
        .clientLabelSearch
        {
            font-weight:bold;
        }
        
        
        /* -------------- Поиск по типу ----------*/
        .clientLabelType
        {
            float:left;
            font-weight:bold;
        }
        /* -------------- Поиск по названию ----------*/
        .clientLabelName
        {
            float:left;
            font-weight:bold;
        }
        .clientSearchByName
        {
            width:90%;
        }
        /* -------------- Поиск по цене ----------*/
        .clientLabelPriceLow
        {
            float:left;
            font-weight:bold;
        }
        .clientSearchByPriceLow
        {
            width:40%;

        }
        
        .clientLabelPriceHigh
        {
            float:left;
            font-weight:bold;
        }
        
        .clientSearchByPriceHigh
        {
            width:40%;
        }
        /* -------------- Поиск по поставщику ----------*/
        .clientLabelDealer
        {
            float:left;
            font-weight:bold;
        }
        
        
        
    </style>




</head>
<body>

    <script src="/src/js/bootstrap.js"></script>

    <form id="form1" runat="server">
    
    <div class="logo">
            <asp:Image ID="Image1" runat="server" ImageUrl="/Src/name.png" ></asp:Image>
        </div>
   
        <div class="container">

            <div class="menushka">
                <nav class="navbar navbar-default" role="navigation">
                    <ul class="nav nav-pills">
					            <li class="active first_el"><a href="ClientMainPage.aspx"> Главная </a></li>
					            <li><a href="PrivatePage.aspx">Мой кабинет</a></li>
                                <li><a href="InfoPage.aspx">Информация</a></li>
                                <li><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">
                
                    <div>
                        <div class="clientHeader">
                            <div class="helloClient">
                                Главная страница клиента
                            </div>
                        </div>

                        

                    </div>

                </div>

                <div class="block2">
               
                    <div class="clientSearchForm">
                        <asp:Label ID="clientLabelSearch" runat="server" Text="Поиск" CssClass="clientLabelSearch"></asp:Label>
                        <br>
                        <br>
                        
                        <!-- -------------- Поиск по типу ----------->
                        <asp:Label ID="clientLabelType" runat="server" Text="Тип товара:" CssClass="clientLabelType"></asp:Label>
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
                        <asp:TextBox ID="clientSearchByName" runat="server" placeholder="Название товара" CssClass="form-control clientSearchByName"></asp:TextBox>
                        <br>
                        <!-- -------------- Поиск по цене ----------->
                        <asp:Label ID="clientLabelPriceLow" runat="server" Text="Цена от:" CssClass="clientLabelPriceLow"></asp:Label>
                        <asp:TextBox ID="clientSearchByPriceLow" runat="server" CssClass="form-control clientSearchByPriceLow"></asp:TextBox>
                        <br>
                        <asp:Label ID="clientLabelPriceHigh" runat="server" Text="до:" CssClass="clientLabelPriceHigh"></asp:Label>
                        <asp:TextBox ID="clientSearchByPriceHigh" runat="server" CssClass="form-control clientSearchByPriceHigh"></asp:TextBox>
                        <!-- -------------- Поиск по поставщику ----------->
                        <asp:Label ID="clientLabelDealer" runat="server" Text="Искать в товарах поставщика:"
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
            </div>

        </div><!-- конец контейнера -->
    
        <div class="footer">
            <p> © 2014 Trade Service. Designed by Free Web Templates, coded by Free CSS Templates <br> Provided by Website Templates  </p>
        </div>






    </form>
</body>
</html>

