<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="AppTradeService.Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="/src/css/bootstrap.css" rel="stylesheet"/>

    <style type="text/css">

        body
        {
	        background-image: url('/src/vetton3.jpg');
        }
        
        /*-------------------------------------- Элементы ------------------------------------------------ */
        .form-group
        {
            margin-top:3%;
            margin-left:5%;
            width:90%;
            height:5%;   
        }
        
        .mainBorder2
        {
            height:720px;
            margin-top:0%;
            border:1px solid #4086FF;
            background-color:#A7BCCF;
            border-radius:7px;
        }
        
        /* -------------- Форма для добавления в дилере ----------*/
        .dealerEditForm
        {
            width:50%;
            height:570px;
            margin-top:2%;
            margin-left:3%;
            padding-top:3%;
            padding-left:3%;
            margin:0 auto;
        }
        
        /* -------------- Лэйбл "Редактировать товар" ----------*/
        .orderLabelEdit
        {
            font-weight:bold;
        }
        
        .orderNameLabelEdit
        {
            font-size: 13pt;
        }
       
        .orderDealerLabelEdit
        {
            margin-top:50px;
            font-size: 13pt;
        }
        
        .orderDescLabelEdit
        {
            font-size: 13pt;
        }
        
        .orderAmountLabelEdit
        {
            font-size: 13pt;
        }
        
        .orderAmountTextEdit
        {
            width:90%;
        }
        
        .orderPrimLabelEdit
        {
            font-size: 13pt;

        }
        .orderPrimTextEdit
        {
             width:90%;
        }
        .priceLabel
        {
            font-size: 13pt;

        }
        .orderSaveBtn
        {
            
        }
        
    </style>
</head>
<body>
<script src="/src/js/bootstrap.js"></script>
    <form id="form1" runat="server">
    <div class="container">
        <div class="mainBorder2">
            <div class="dealerEditForm">

                <asp:Label ID="orderLabelEdit" runat="server" Text="Оформление заказа" CssClass="orderLabelEdit"></asp:Label>
                <br>
                <br>
                <!-- -------------- Название ----------->
                <asp:Label ID="orderNameLabelEdit" runat="server" Text="Название товара:" CssClass="orderNameLabelEdit"></asp:Label>
                <br>
                <br>
                <!-- -------------- Поставщик ----------->
                <asp:Label ID="orderDealerLabelEdit" runat="server" Text="Поставщик:" CssClass="orderDealerLabelEdit"></asp:Label>
                <br>
                <br>
                <!-- -------------- описание ----------->
                <asp:Label ID="orderDescLabelEdit" runat="server" Text="Описание:" CssClass="orderDescLabelEdit"></asp:Label>
                <br>
                <br>
                <!-- -------------- кол-во ----------->
                <asp:Label ID="orderAmountLabelEdit" runat="server" Text="Количество:" CssClass="orderAmountLabelEdit"></asp:Label>
                <asp:TextBox ID="orderAmountTextEdit" runat="server" CssClass="form-control orderAmountTextEdit"></asp:TextBox>
                <br>
                
                <!-- -------------- примечание ----------->
                <asp:Label ID="orderPrimLabelEdit" runat="server" Text="Примечание:" CssClass="orderPrimLabelEdit"></asp:Label>
                <asp:TextBox ID="orderPrimTextEdit" runat="server" CssClass="form-control orderPrimTextEdit"></asp:TextBox>
                <br>
                <!-- -------------- цена ----------->
                <asp:Label ID="priceLabel" runat="server" Text="Цена:" CssClass="priceLabel"></asp:Label>
                <br>
                <br>
                <asp:Button ID="orderSaveBtn" runat="server" Text="Заказать"  CssClass="btn btn-default orderSaveBtn btn-primary" />


            </div>    
        </div>
    </div>
    <!-- конец контейнера -->
    </form>
</body>
</html>
