<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AppTradeService.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .mainBorder
        {
            margin-top:10%;
            margin-left:20%;
            background-color: #8AC8EE;
            /*#656565ыыы*/
        }
        
        
        .block1
        {
            margin-top:4%;
            margin-left:6%;
            border-radius:10px;
            border: 3px solid #4086FF;
            width: 50%; 
            height: 300px; 
            background-color: #FFFFFF; 
            float: left;
        }
        
        .block2
        {
            margin-top:4%;
            /*margin-left:6%;*/
            margin-right:2%;
            border-radius:10px;
            border: 3px solid #4086FF;/*#FFFF00;*/ 
            width: 40%; 
            height: 140px; 
            background-color: #FFFFFF; /*#00FFFF*/
            float: right;
        }
            
        .texter2
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
        
        .texter3
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

    <div class="mainBorder"
		style="border: 2px solid #4086FF; width: 65%; height: 400px; "> 
        
			<div class="block1" >
               
				
                 <asp:TextBox ID="texter1" runat="server"></asp:TextBox>

			</div>
				
            <div class="block2">
              
				
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="  Ваш логин" class="texter2" ></asp:TextBox>
                 <asp:TextBox ID="TextBox3" runat="server" placeholder="  Ваш пароль" class="texter3" ></asp:TextBox>
                 <asp:Button ID="buton1" runat="server" class="buton1" />
			</div>


		</div>
 
    </form>
</body>
</html>
