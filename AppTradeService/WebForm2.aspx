<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AppTradeService.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        /*-----------------------------------Главная таблица---------------------------------*/
        .mainBorder
        {
            margin-top:10%;
            margin-left:20%;
            background-color: #8AC8EE;
            /*#656565*/
        }
        
        /*-----------------------------------Блок №1---------------------------------*/
        .block1
        {
            margin-top:4%;
            margin-left:6%;
            border-radius:10px;
            border: 1px solid #4086FF;
            width: 50%; 
            height: 300px; 
            background-color: #FFFFFF; 
            float: left;
        }
        /*-----------------------------------Блок №2---------------------------------*/
        .block2
        {
            margin-top:4%;
            /*margin-left:6%;*/
            margin-right:2%;
            border-radius:10px;
            border: 1px solid #4086FF;/*#FFFF00;*/ 
            width: 40%; 
            height: 140px; 
            background-color: #FFFFFF; /*#00FFFF*/
            float: right;
        }
        /*-----------------------------------Текст 1 в блоке №1---------------------------------*/   
        .text1_in_block1
        {
            
            font-size:14pt;
            color:#292F33;
            font-weight:bold;
            font-family:Calibri;
            border: 1px solid #000000;
        }
        /*-----------------------------------Текст 2 в блоке №1---------------------------------*/
        .text2_in_block1
        {
            font-size:13pt;
            font-style:italic;
            color:#4086FF;
            font-family:Ebrima;
            
            border: 1px solid #000000;
        }
        /*-----------------------------------Текст бокс №1 в блоке №2---------------------------------*/
        .texter1
        {
           margin-top:4%;
           margin-left:10%;
           width:70%;
           height:20%;
           background-color:#FFFFFF;
           border-radius:10px;
           border-top-color:#7BBCE4;
           border-right-color:#7BBCE4;
           border-left-color:#7BBCE4;
           border-bottom-color:#7BBCE4;
        }
        /*-----------------------------------Текст бокс №2 в блоке №2---------------------------------*/
        .texter2
        {
           margin-top:3%;
           margin-left:10%;
           width:70%;
           height:20%;
           background-color:#FFFFFF;
           border-color:#828282;
           border-radius:10px;
           
           border-top-color:#7BBCE4;
           border-right-color:#7BBCE4;
           border-left-color:#7BBCE4;
           border-bottom-color:#7BBCE4;
        }
        /*-----------------------------------Кнопка входа в блоке №2---------------------------------*/
        .buton1
        {
           margin-top:3%;
           margin-left:50%;
           width:30%;
           height:20%;
        }
        
        
    </style>
</head>
<body style="height: 360px; background-color: #8AC8EE;">
    <form id="form1" runat="server">
    <!--
    <div class="logo">
        <asp:Image ID="Img1" runat="server" ImageUrl="/Src/Mylogo_2.jpg" ></asp:Image>
    </div>
    -->

    <div class="mainBorder"
		style="border: 2px solid #4086FF; width: 65%; height: 400px; "> 
        
			<div class="block1">
    
				<div class="text1_in_block1">
                     <!--&nbsp;-->Добро пожаловать в Трейд Сервис! 
                </div>

                <div class="text2_in_block1">
                     Здесь вы можете разместить свой товар, найти новых клиентов, либо найти нужный вам товар, 
                     найти новых поставщиков. 
                </div>

			</div>
				
            <div class="block2">
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="  Ваш логин" class="texter1" ></asp:TextBox>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="  Ваш пароль" class="texter2" ></asp:TextBox>
                 <asp:Button ID="buton1" runat="server" Text="Вход" class="buton1 " />
			</div>

		</div>
 
    </form>
</body>
</html>
