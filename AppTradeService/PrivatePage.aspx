<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrivatePage.aspx.cs" Inherits="AppTradeService.PrivatePage" %>
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
        
         /* -------------- Форма для поиска в клиенте ----------*/
        .privateForm
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
        .privateLabel
        {
            font-weight:bold;
        }
        
        /* -------------- Поиск по названию ----------*/
        .privateNameLabel
        {
            float:left;
        }
        .privateNameText
        {
            width:90%;
        }
        /* -------------- Поиск по surname ----------*/
        .privateSurnameLabel
        {
            float:left;
        }
        .privateSurnameText
        {
            width:90%;
        }
        /* -------------- Поиск по firm ----------*/
        .privateFirmLabel
        {
            float:left;
        }
        .privateFirmText
        {
            width:90%;
        }
        /* -------------- Поиск по tel ----------*/
        .privateTelLabel
        {
            float:left;
        }
        .privateTelText
        {
            width:90%;
        }
        /* -------------- SPISOK ----------*/
        .spisMain
        {
            
            width:80%;
            height:15%;
            margin-top:3%;
            margin-left:10%;
            border:1px solid #000;
            border-radius:3px;
        }
        .spis1
        {
            border:1px solid #000;
            border-radius:3px 3px 0 0;
        }
        .spis2
        {
            border:1px solid #000;
        }
        .spis3
        {
            border:1px solid #000;
        }
        .spis3
        {
            border:1px solid #000;
            height:37%;
        }
        .spis4
        {
            border:1px solid #000;
            border-radius:0 0 3px 3px;
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
					            <li class="active first_el"><a href="PrivatePage.aspx">Мой кабинет</a></li>
                                <li><a href="InfoPage.aspx">Информация</a></li>
                                <li><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                    <asp:Button ID="exitBtn" OnClick="ExitBtnClick" runat="server" text="Выйти" CssClass="btn btn-default btn-primary" style="margin-left:1030px;margin-top:-37px; position:absolute; "/>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">

                    <div class="spisMain">
                        <div class="spis1">
                            ТИП
                        </div>

                        <div class="spis2">
                            ИМЯ
                        </div>

                        <div class="spis3">
                            Описание
                        </div>

                        <div class="spis4">
                            Цена
                        </div>
                    </div>

                </div>

                <div class="block2">
               
                    
                    <div class="privateForm">
                        <asp:Label ID="privateLabel" runat="server" Text="Редактирование личных данных" CssClass="privateLabel"></asp:Label>
                        <br>
                        <br>
                        <asp:Label runat="server" Text="Имя:" CssClass="privateNameLabel"></asp:Label>
                        <asp:TextBox ID="privateNameText" runat="server" CssClass="form-control privateNameText"></asp:TextBox>
                        
                        <asp:Label runat="server" Text="Фамилия:" CssClass="privateSurnameLabel"></asp:Label>
                        <asp:TextBox ID="privateSurnameText" runat="server" CssClass="form-control privateSurnameText"></asp:TextBox>

                        <asp:Label runat="server" Text="Организация:" CssClass="privateFirmLabel"></asp:Label>
                        <asp:TextBox ID="privateFirmText" runat="server" CssClass="form-control privateFirmText"></asp:TextBox>
                        
                        <asp:Label runat="server" Text="Номер телефона:" CssClass="privateTelLabel"></asp:Label>
                        <asp:TextBox ID="privateTelText" runat="server" CssClass="form-control privateTelText"></asp:TextBox>

                        
                        <!-- -------------- Кнопка поиск ----------->
                        <asp:Button ID="privateBtn" runat="server" Text="Сохранить" OnClick="SaveInfo "  CssClass="btn btn-default btn-primary" />
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
