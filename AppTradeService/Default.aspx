<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppTradeService.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        /*----------------------------------------Лого--------------------------------------*/
        .logo
        {
            margin-left:7%;
        }
        /*-----------------------------------Главная таблица---------------------------------*/
        .mainBorder
        {
            margin-top:3%;
            margin-left:20%;
            background-color: #8AC8EE;
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
            /*margin-left:6%;*/
            margin-right:3%;
            border-radius:6px;
            border: 1px solid #4086FF;/*#FFFF00;*/ 
            width: 36%; 
            height: 140px; 
            background-color: #FFFFFF; /*#00FFFF*/
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
        .buton1
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
        
    </style>
</head>
<body style="height: 360px; background-color: #8AC8EE;">
    <form id="form1" runat="server">
    
    <div class="logo">
        <asp:Image ID="Img1" runat="server" ImageUrl="/Src/name.png" ></asp:Image>
    </div>
    

    <div class="mainBorder" style="border: 2px solid #8AC8EE; width: 65%; height: 440px; "> 
        
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
            
            <asp:TextBox ID="TextBox1" runat="server" placeholder="  Ваш логин" class="texter1" ></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="  Ваш пароль" class="texter1" ></asp:TextBox>
            <asp:Button ID="buton1" runat="server" Text="Вход" class="buton1 " />
        
		</div>

        <div class="block3">

            <div class="text1_in_block3">

                &nbsp &nbsp Регистрация

            </div>

            <asp:TextBox ID="TextBox3" runat="server" placeholder="  Ваше имя и фамилия" class="texter2" ></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="  Ваш логин" class="texter2" ></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="  Ваш пароль" class="texter2" ></asp:TextBox>
           
            <div class="radioBtns">
                <asp:RadioButton ID="RB1" runat="server" Text="Поставщик" />
                <asp:RadioButton ID="RB2" runat="server" Text="Заказчик" />
            </div>

            <asp:Button ID="Button2" runat="server" Text="Вход" class="buton2" />

        </div>

	

    </form>
</body>
</html>
