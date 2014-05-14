<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AppTradeService.LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Trade Service - Вход</title>

    <link href="/src/css/bootstrap.css" rel="stylesheet"/>

    <style type="text/css">
        
        body
        {
	        background-image: url('/src/vetton3.jpg');
        }
        
        /*----------------------------------------Лого--------------------------------------*/
        .logo
        {
            margin-left:4%;
        }
        /*-----------------------------------Главная таблица---------------------------------*/
        .mainBorder
        {
            margin-top:3%;
            margin-left:20%;
        }
        /*-----------------------------------Блок №1---------------------------------*/
        .block1
        {
            margin-top:2%;
            margin-left:2%;
            border-radius:6px;
            border: 1px solid #4086FF;
            width: 58%; 
            height: 380px; 
            background-color: #FFFFFF; 
            float: left;
        }
        /*-----------------------------------Блок №2---------------------------------*/
        .block2
        {
            margin-top:2%;
            margin-right:3%;
            border-radius:6px;
            border: 1px solid #4086FF;
            width: 36%; 
            height: 160px; 
            background-color: #FFFFFF;
            float: right;
        }
        /*-----------------------------------Блок №3---------------------------------*/
        .block3
        {
            margin-top: 1%;
            margin-right: 3%;
            width: 36%;
            height: 224px;
            border: 1px solid #4086FF;
            background-color: #FFFFFF;
            border-radius:6px;
            float: right;
            
        }
        /*-----------------------------------Текст 1 в блоке №1---------------------------------*/   
        .text1_in_block1
        {
            margin-top:2%;
            font-size:19pt;
            color:#292F33;
            font-weight:bold;
            font-family:Calibri;
            /*border: 1px solid #000000;*/
            text-align:center;
        }
        /*-----------------------------------Текст 2 в блоке №1---------------------------------*/
        .text2_in_block1
        {
            
            font-size:13pt;
            font-style:italic;
            color:000000;
            font-family:Ebrima;
            padding-left:10%;
            
            line-height: 130%;
            /*border: 1px solid #000000;*/
        }
        /*-----------------------------------Картинка в блоке №1---------------------------------*/
        .img_deal
        {
            /*border:1px solid #000000;*/
            padding-left:20%;
            height:62%;
            
        }
        /*-----------------------------------Текст 1 в блоке №2------------------------------------*/
        .text1_in_block2
        {
            margin-top:2%;
            font-size:12pt;
            color:#292F33;
            font-weight:bold;
            font-family:Calibri;
           
        }
        /*-----------------------------------Текст 1 в блоке №3------------------------------------*/
        .text1_in_block3
        {
            margin-top:2%;
            font-size:12pt;
            color:#292F33;
            font-weight:bold;
            font-family:Calibri;
           
        }
        /*-----------------------------------Текст бокс №1 в блоке №2---------------------------------*/
        .texter1
        {
           margin-top:2%;
           margin-left:5%;
           width:80%;
           height:13%;
           background-color:#FFFFFF;
           border-radius:8px;
           border-top-color:#7BBCE4;
           border-right-color:#7BBCE4;
           border-left-color:#7BBCE4;
           border-bottom-color:#7BBCE4;
        }
        /*-----------------------------------Текст бокс №2 в блоке №2---------------------------------*/
        .texter2
        {
           margin-top:3%;
           margin-left:5%;
           width:80%;
           height:9%;
           background-color:#FFFFFF;
           border-color:#828282;
           border-radius:8px;
           border-top-color:#7BBCE4;
           border-right-color:#7BBCE4;
           border-left-color:#7BBCE4;
           border-bottom-color:#7BBCE4;
        }
        /*-----------------------------------Кнопка входа в блоке №2---------------------------------*/
        .enterBtnCSS
        {
           margin-top:3%;
           margin-left:70%;
           width:25%;
           height:18%;
        }
        /*-----------------------------------Радио баттоны в блоке №3---------------------------------*/
        .radioBtns
        {
            /*border:1px solid #000000;*/
            margin-top:3%;
            
            padding-left:20%;
        }
        /*-----------------------------------Кнопка входа в блоке №3---------------------------------*/
        .buton2
        {
           margin-top:2%;
           margin-left:70%;
           width:25%;
           height:12%; 
            
        }
        
        .ulka
        {
            list-style-type: none;
        }
        /* --------- тексбокс для логина. вход ------ */
        .loginBoxCSS 
        {
            width:82%;
            height:22%;
            margin-top:3%;
            margin-left:9%;
        }
        /* ----------тексбокс для пароля. вход-------- */
        .passBoxCSS
        {
            width:82%;
            height:22%;
            margin-top:2%;
            margin-left:9%;
        }
        /* --------- тексбокс для логина. регистрация ------ */
        .loginBoxRegCSS
        {
            width:82%;
            height:14%;
            margin-top:2%;
            margin-left:9%;
        }
        
        .passBoxRegCSS
        {
            width:82%;
            height:14%;
            margin-top:2%;
            margin-left:9%;
        }
        
        .companyBoxRegCSS
        {
            width:82%;
            height:14%;
            margin-top:2%;
            margin-left:9%;
        }
        
        .rbListRegCSS
        {
            margin-top:2%;
            margin-left:9%;
        }
        
        .footer
        {
            margin-top:10px;
            height: 60px;
            text-align:center;
            font-size: 80%
        }
        
        
    </style>
</head>
<body >
    
    <script src="/src/js/bootstrap.js"></script>
    <script><%=redirectNextPage %></script>
    <form id="form1" runat="server">
    
    <div class="logo">
        <asp:Image ID="Img1" runat="server" ImageUrl="/Src/name.png" ></asp:Image>
    </div>
    

    <div class="mainBorder" style="width: 65%; height: 440px; ">
        
		<div class="block1">
		    <div class="text1_in_block1">
                Добро пожаловать в Трейд Сервис! 
            </div>
            
            <div class="img_deal">
                <asp:Image ID="Image2" runat="server" ImageUrl="/Src/part22.png" ></asp:Image>
            </div>
            
            <div class="text2_in_block1">
            Здесь вы можете: - разместить свой товар
                <ul class="ulka">
                  <li>- найти нужный вам товар</li>
                  <li>- найти новых клиентов</li>
                  <li>- найти новых поставщиков </li>
                </ul> 
            </div>



		</div>
				
        <div class="block2">
            <div class="text1_in_block2">

                &nbsp &nbsp Вход

            </div>

            <asp:TextBox ID="loginBox" runat="server" placeholder="Ваш логин" CssClass="form-control loginBoxCSS"></asp:TextBox>
            <asp:TextBox ID="passBox" runat="server" placeholder="Ваш пароль" TextMode="Password" CssClass="form-control passBoxCSS"></asp:TextBox>
            <asp:Label ID="lblError" runat="server" Text="" style="color:Red;position:absolute;margin-left:41px;margin-top:5px;"></asp:Label>
            <asp:Button ID="enterBtn" OnClick="LoginBtnClick" runat="server" Text="Вход" CssClass="btn-default  btn enterBtnCSS btn-primary" />
		</div>
            
        <div class="block3">

            <div class="text1_in_block3">

                &nbsp &nbsp Регистрация

            </div>

            <asp:TextBox ID="loginBoxReg" runat="server" placeholder="Ваш логин" CssClass="form-control loginBoxRegCSS" ></asp:TextBox>
            <asp:TextBox ID="passBoxReg" runat="server" placeholder="Ваш пароль" TextMode="Password" CssClass="form-control passBoxRegCSS" ></asp:TextBox>
            <asp:TextBox ID="companyBoxReg" runat="server" placeholder="Ваша компания" CssClass="form-control companyBoxRegCSS" ></asp:TextBox>
           
            <div class="controls radio">
                <asp:RadioButtonList ID="rbListReg" runat="server"  CssClass="rbListRegCSS" RepeatDirection="Horizontal" Width="200px">
                <asp:ListItem Selected="True" Value="0">Заказчик</asp:ListItem>
                <asp:ListItem Value="1">Поставщик</asp:ListItem>
                </asp:RadioButtonList>
            </div>
           
            <asp:Button ID="registration" OnClick="registrationBtnClick" runat="server" Text="Регистрация" CssClass="btn-default  btn btn-primary" />
            
        </div>
        
	</div>

    <div class="footer">
        <p> © 2014 Trade Service. Designed by Free Web Templates, coded by Free CSS Templates <br> Provided by Website Templates  </p>
    </div>

    </form>
    
</body>
</html>
