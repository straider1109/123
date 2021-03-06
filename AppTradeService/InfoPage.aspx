﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoPage.aspx.cs" Inherits="AppTradeService.InfoPage" %>
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
        
        .inform
        {
            padding-top:5%;
            text-align:center;
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
                                <li class="active first_el"><a href="InfoPage.aspx">Информация</a></li>
                                <li><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                    <asp:Button ID="exitBtn" OnClick="ExitBtnClick" runat="server" text="Выйти" CssClass="btn btn-default btn-primary" style="margin-left:1030px;margin-top:-37px; position:absolute; "/>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">
                
                    <div class="inform">
                        Веб-сервис принадлежит ИП Денисенко/Загорский
                        <br>
                        Создан в 2014 году, запущен в 2015.
                    </div>

                </div>

                <div class="block2">
               
                    
                </div>
            </div>

        </div><!-- конец контейнера -->
    
        <div class="footer">
            <p>  © 2014 Trade Service. Designed by Grodno Studio, coded by Grodno Coding <br> Provided by goverments  </p>
        </div>






    </form>
</body>
</html>