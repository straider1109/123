<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="AppTradeService.EditPage" %>

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
        .dealerLabelEdit
        {
            font-weight:bold;
        }
        
        .dealerEditNameText
        {
            width:90%;
        }
       
        .dealerEditPriceText
        {
            width:90%;
        }
        
        .dealerEditAmountText
        {
            width:90%;
        }
        
        .dealerEditDescriptionText
        {
            width:90%;
        }
        
        .dealerEditPhotoText
        {
            width:60%;
            float:left;
        }
        
        
        
        
    </style>
</head>
<body>

    <script src="/src/js/bootstrap.js"></script>

    <form id="form1" runat="server">
    
    <div class="container">
        <div class="mainBorder2">
            <div class="dealerEditForm">
                <asp:Label ID="dealerLabelEdit" runat="server" Text="Редактируйте ваш товар" CssClass="dealerLabelEdit"></asp:Label>
                <br>
                <br>
                <!-- -------------- Добавление типа ----------->
                <asp:Label ID="dealerLabelTypeEdit" runat="server" Text="Тип товара:" CssClass="dealerLabelTypeEdit"></asp:Label>
                <asp:DropDownList ID="dealerDropDownTypeEdit" AutoPostBack="True" runat="server">
                </asp:DropDownList>
                <br>
                <br>
                <!-- -------------- Название ----------->
                <asp:Label ID="dealerNameLabelEdit" runat="server" Text="Название товара:" CssClass="dealerNameLabelEdit"></asp:Label>
                <asp:TextBox ID="dealerEditNameText" runat="server" CssClass="form-control dealerEditNameText"></asp:TextBox>
                <br>
                <!-- -------------- Цена ----------->
                <asp:Label ID="dealerEditPriceLabel" runat="server" Text="Стоимость товара:" CssClass="dealerEditPriceLabel"></asp:Label>
                <asp:TextBox ID="dealerEditPriceText" runat="server" placeholder="$" CssClass="form-control dealerEditPriceText"></asp:TextBox>
                <br>
                <!-- -------------- Колличество ----------->
                <asp:Label ID="dealerEditAmountLabel" runat="server" Text="Количество:" CssClass="dealerEditAmountLabel"></asp:Label>
                <asp:TextBox ID="dealerEditAmountText" runat="server" CssClass="form-control dealerEditAmountText"></asp:TextBox>
                <br>
                <!-- -------------- Описание ----------->
                <asp:Label ID="dealerEditDescriptionLabel" runat="server" Text="Описание:" CssClass="dealerEditDescriptionLabel"></asp:Label>
                <asp:TextBox ID="dealerEditDescriptionText" TextMode="MultiLine" runat="server" CssClass="form-control dealerEditAmountText"></asp:TextBox>
                <br>
                <!-- -------------- Фото ----------->
                <asp:Label ID="dealerEditPhotoLabel" runat="server" Text="Фотография:" CssClass="dealerEditPhotoLabel"></asp:Label>
                <div class="addPhoto">
                    <asp:TextBox ID="dealerEditPhotoText" runat="server" CssClass="form-control dealerEditPhotoText"></asp:TextBox>
                    <asp:Button ID="dealerEditPhotoBtn" runat="server" Text="Обзор" CssClass="btn btn-default dealerEditPhotoBtn btn-primary" />
                </div>
                <br>
                <!-- -------------- Кнопка сохранить ----------->
                <asp:Button ID="dealerEditSaveBtn" runat="server" Text="Изменить" OnClick="Save" CssClass="btn btn-default dealerEditSaveBtn btn-primary" />
            </div>
        </div>
    </div>
    <!-- конец контейнера -->
    
    </form>
</body>
</html>
