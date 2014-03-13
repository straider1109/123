<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="AppTradeService.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Главная страница Trade Service</title>
    <style type="text/css">

        body
        {
	        background-color: #8AC8EE;
	        /*background: url(Src/images/bg.jpg);*/
        }

        .logo
        {
            padding-left:7%;
            border:2px solid #000000;
        }

        .mainBorder1
        {
            
            width:80%;
            height:100px;
            margin-top:1%;
            margin-left:9%;
            border:2px solid #000000;
        }
        
        .mainBorder2
        {
            width:80%;
            height:370px;
            margin-top:1%;
            margin-left:9%;
            border:2px solid #000000;
        }


    </style>

</head>

<body>
    <form id="form1" runat="server">

        <div class="logo">
            <asp:Image ID="Image1" runat="server" ImageUrl="/Src/name.png" ></asp:Image>
        </div>
    
        <div class="mainBorder1">
            <asp:Image ID="Image2" runat="server" ImageUrl="/Src/Без-имени-1.png" ></asp:Image>
        </div>
    
        <div class="mainBorder2">
            
        </div>

    
    <!--
     <div id="menu">
                <ul>
			        <li><a href="#" class="first">Главная</a></li>
			        <li><a href="#" class="first">Поставщику</a></li>
			        <li><a href="#" class="first">Заказчику</a></li>
			        <li><a href="#" class="first">Новости</a></li>
			        <li><a href="#" class="end">Контакты</a></li>
		        </ul>
            </div>
    -->
    
    </form>
</body>
</html>
