<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactsInfo.aspx.cs" Inherits="AppTradeService.ContactsInfo" %>
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
					            <li class="first_el"><a href="DealerMainPage.aspx"> Главная </a></li>
					            <li><a href="PrivatePage.aspx">Мой кабинет</a></li>
                                <li><a href="InfoPage.aspx">Информация</a></li>
                                <li class="active first_el"><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">
                
                    <div>
                         Все вопросы можно узнать по адресу: tradeservice@gmail.ru
                         <br>
                         Телефоны: +375 33 888 5 88
                    </div>

                </div>

                <div class="block2">
               
                    <form action="#" class="navbar-form navbar-left" role="search">
                        <div class="form-group">

                            <asp:TextBox ID="searchBox" runat="server" placeholder="Что вы хотите найти?" CssClass="form-control" ></asp:TextBox>
                            
                            <asp:Button ID="searchBtn" runat="server" Text="Поиск" CssClass="btn btn-default" />
        
                        </div>
                    </form>
                </div>
            </div>

        </div><!-- конец контейнера -->
    
        <div class="footer">
            <p> © 2014 Trade Service. Designed by Free Web Templates, coded by Free CSS Templates <br> Provided by Website Templates  </p>
        </div>






    </form>
</body>
</html>
