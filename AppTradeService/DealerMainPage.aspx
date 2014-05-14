<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DealerMainPage.aspx.cs" Inherits="AppTradeService.DealerMainPage" %>

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
            height:1220px;
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
        
        
        /* -------------- Форма для добавления в дилере rrrrrr----------*/
        .dealerAddForm
        {
            width:94%;
            height:570px;
            margin-top:2%;
            margin-left:3%;
            border:1px solid #4086FF;
            border-radius:7px;
            background-color:#A7BCCF;
            padding-top:3%;
            padding-left:3%;
        }
        
        /* -------------- Лэйбл "Добавить товар" ----------*/
        .dealerLabelAdd
        {
            font-weight:bold;
        }
        
        .dealerAddNameText
        {
            width:90%;
        }
       
        .dealerPriceText
        {
            width:90%;
        }
        
        .dealerAmountText
        {
            width:90%;
        }
        
        .dealerDescriptionText
        {
            width:90%;
        }
        
        .dealerAddPhotoText
        {
            width:60%;
            float:left;
        }
        
        /*--------таблицы с товарами---------*/
        .outMain
        {
            width:90%;
            height:150px;
            margin-top:3%;
            margin-left:5%;
            border:1px solid #000;
            border-radius:7px;
        }
        
        .outName
        {
            height:10%;
            border:1px solid #000;
            border-radius:7px 7px 0 0;
            background-color:#76A9DD;
        }
        
        .outText
        {
            width:60%;
            height:90%;
            border:1px solid #000;
            float:right;
        }
        
        .outPhoto
        {
            width:40%;
            height:90%;
            border:1px solid #000;
            float:left;
        }
        
        .outBtn
        {
            margin-left: 76%;
            margin-top: 12%;
        }
        
        
        
        
        
    </style>

    <script type="text/javascript">
        function EditPage(ev) {
                var wnd1 = window.open("Order.aspx?GoodId=" + ev, "ViewBillingCode", "scrollbars=no,menubar=no,height=730,width=930,resizable=no,toolbar=no,location=no,status=no,left=50,top=100,screenX=50,screenY=100");
        }
    
    </script>


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
					            <li class="active first_el"><a href="DealerMainPage.aspx"> Главная </a></li>
					            <li><a href="PrivatePage.aspx">Мой кабинет</a></li>
                                <li><a href="InfoPage.aspx">Информация</a></li>
                                <li><a href="ContactsInfo.aspx">Контакты</a></li>
                    </ul>
                    <asp:Button ID="exitBtn" OnClick="ExitBtnClick" runat="server" text="Выйти" CssClass="btn btn-default btn-primary" style="margin-left:1030px;margin-top:-37px; position:absolute; "/>
                </nav>
            </div>

            <div class="mainBorder2">

                <div class="block1">
                
                <asp:Literal ID="lOutput" runat="server"></asp:Literal>
                </div>

                <div class="block2">
                    <div class="dealerAddForm">
                        
                        <asp:Label ID="dealerLabelAdd" runat="server" Text="Добавьте ваш товар" CssClass="dealerLabelAdd"></asp:Label>
                        <br>
                        <br>

                        <!-- -------------- Добавление типа ----------->
                        <asp:Label ID="dealerLabelType" runat="server" Text="Тип товара:" CssClass="dealerLabelType"></asp:Label>
                        <asp:DropDownList ID="dealerDropDownType" AutoPostBack="True" runat="server">
                        </asp:DropDownList>
                        <br>
                        <br>

                        <!-- -------------- Название ----------->
                        <asp:Label ID="dealerNameLabel" runat="server" Text="Название товара:" CssClass="dealerNameLabel"></asp:Label>
                        <asp:TextBox ID="dealerAddNameText" runat="server" CssClass="form-control dealerAddNameText"></asp:TextBox>
                        

                        <!-- -------------- Цена ----------->
                        <asp:Label ID="dealerPriceLabel" runat="server" Text="Стоимость товара:" CssClass="dealerPriceLabel"></asp:Label>
                        <asp:TextBox ID="dealerPriceText" runat="server" placeholder="$" CssClass="form-control dealerPriceText"></asp:TextBox>
                        

                        <!-- -------------- Колличество ----------->
                        <asp:Label ID="dealerAmountLabel" runat="server" Text="Количество:" CssClass="dealerAmountLabel"></asp:Label>
                        <asp:TextBox ID="dealerAmountText" runat="server" CssClass="form-control dealerAmountText"></asp:TextBox>
                        

                        <!-- -------------- Описание ----------->
                        <asp:Label ID="dealerDescriptionLabel" runat="server" Text="Описание:" CssClass="dealerDescriptionLabel"></asp:Label>
                        <asp:TextBox ID="dealerDescriptionText" TextMode="MultiLine" runat="server" CssClass="form-control dealerAmountText"></asp:TextBox>
                        

                        <!-- -------------- Фото ----------->
                        <asp:Label ID="dealerAddPhotoLabel" runat="server" Text="Фотография:" CssClass="dealerAddPhotoLabel"></asp:Label>
                        <div class="addPhoto">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                        


                        <!-- -------------- Кнопка сохранить ----------->
                        <asp:Button ID="goodsSaveBtn" runat="server" AutoPostBack="True" Text="Сохранить" CssClass="btn btn-default dealerSaveBtn btn-primary" OnClick="SaveGoods"/>



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
