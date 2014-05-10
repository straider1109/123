<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DealerMainPage.aspx.cs" Inherits="AppTradeService.DealerMainPage" %>

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
        .borderSearch
        {
            border:1px solid #FFF;
            margin-top:5%;
            mardin-left:5%;
            padding-bottom:3%;
        }
        
         /* -------------- Форма для поиска в дилере ----------*/
        .dealerAddForm
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
        
        .dealerLabelAdd
        {
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
					            <li class="active first_el"><a href="DealerMainPage.aspx"> Главная </a></li>
					            <li><a href="PrivatePage.aspx">Мой кабинет</a></li>
                                <li><a href="InfoPage.aspx">Информация</a></li>
                                <li><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">
                
                    <div class="borderSearch">
                    
                    <asp:Button ID="dealerAddBtn" runat="server" Text="Добавить товар" CssClass="btn btn-default" />


                    </div>

                </div>

                <div class="block2">
                    <div class="dealerAddForm">
                        
                        <asp:Label ID="dealerLabelAdd" runat="server" Text="Добавьте ваш товар" CssClass="dealerLabelAdd"></asp:Label>
                        <br>
                        <br>

                        <!-- -------------- Добавление типа ----------->
                        <asp:Label ID="dealerLabelType" runat="server" Text="Тип товара:" CssClass="dealerLabelType"></asp:Label>
                        <asp:DropDownList ID="dealerDropDownType" AutoPostBack="True" runat="server">
                        </asp:DropDownList>
                        <br>
                        <br>

                        <!-- -------------- Название ----------->
                        <asp:Label ID="dealerNameLebel" runat="server" Text="Название товара:" CssClass="dealerNameLebel"></asp:Label>
                        <asp:TextBox ID="dealerAddName" runat="server" CssClass="form-control dealerAddName"></asp:TextBox>
                        <br>

                        <!-- -------------- Цена ----------->
                        <asp:Label ID="dealerPriceLebel" runat="server" Text="Стоимость товара:" CssClass="dealerPriceLebel"></asp:Label>
                        <asp:TextBox ID="clientSearchByPriceLow" runat="server" placeholder="$" CssClass="form-control clientSearchByPriceLow"></asp:TextBox>
                        <br>

                        <!-- -------------- Колличество ----------->
                        <asp:Label ID="dealerAmountLabel" runat="server" Text="Коли́чество:" CssClass="dealerAmountLabel"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="$" CssClass="form-control clientSearchByPriceLow"></asp:TextBox>
                        <br>

                    </div>
                    


                </div>

            </div>

        </div><!-- конец контейнера -->
    
        <div class="footer">
            <p> © 2014 Trade Service. Designed by Free Web Templates, coded by Free CSS Templates <br> Provided by Website Templates  </p>
        </div>

        <!--
        type  drop
        name 
        descr
        price
        amount

        save
        -->
    </form>
</body>
</html>
