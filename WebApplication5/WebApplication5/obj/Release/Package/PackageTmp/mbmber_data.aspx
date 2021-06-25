<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="mbmber_data.aspx.cs" Inherits="WebApplication5.login" %>

<!DOCTYPE html>

<html lang="zh-Hant-TW" class="no-js">
<head runat="server">
        <meta charset="utf-8"/>
        <title>使用者頁面</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="FlameOnePage freebie theme for web startups by FairTech SEO." name="description"/>
        <meta content="FairTech" name="author"/>
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/animate.css" rel="stylesheet">
        <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout.min.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="favicon.ico"/>
</head>
<body id="body" data-spy="scroll" data-target=".header">

          <header class="header navbar-fixed-top">
              <nav class="navbar" role="navigation">
                <div class="container">
                      <div class="menu-container js_nav-item">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon"></span>
                        </button>

                          <div class="logo">
                            <a class="logo-wrap" href="#body">
                                <img class="logo-img logo-img-main" src="img/logo/logo_1.png" alt="FlameOnePage Logo">
                                <img class="logo-img logo-img-active" src="img/logo/logo-dark_1.png" alt="FlameOnePage Dark Logo">
                            </a>
                        </div>
                    </div>

                    <div class="collapse navbar-collapse nav-collapse">
                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="login"><asp:Label class="nav-item-child nav-item-hover" ID="Label1" runat="server" Text="訪客"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="Default"><asp:Label class="nav-item-child nav-item-hover" ID="Label4" runat="server" Text="首頁"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about"><asp:Label class="nav-item-child nav-item-hover" ID="Label3" runat="server" Text="商品"></asp:Label></a></li>
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="shopping"><asp:Label class="nav-item-child nav-item-hover" ID="Label2" runat="server" Text="購物籃"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="registered"><asp:Label class="nav-item-child nav-item-hover" ID="reg" runat="server" Text="註冊/登入"></asp:Label></a></li>
                            </ul>
                        </div>
                        </div>
                </div>
                </nav>
			</header>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <div class="container">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
            </div>
        </div>
    <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="img/1920x1080/Geforce-GTX.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                               <form id="form1" runat="server">  
                                                           <asp:DataList ID="DataList1" runat="server" DataKeyField="會員帳號" DataSourceID="mbmber_data_sql" BackColor="Black" BorderColor="Gray" BorderWidth="2px" CellPadding="20" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" GridLines="Both">
                                                               <HeaderStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                            <ItemTemplate>
                                會員編號 :
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                會員帳號 :
                                <asp:Label ID="會員帳號Label" runat="server" Text='<%# Eval("會員帳號") %>' />
                                <br />
                                連絡電話 :
                                <asp:Label ID="連絡電話Label" runat="server" Text='<%# Eval("連絡電話") %>' />
                                <br />
                                會員姓名 :
                                <asp:Label ID="會員姓名Label" runat="server" Text='<%# Eval("會員姓名") %>' />
                                <br />
                                會員地址 :
                                <asp:Label ID="會員地址Label" runat="server" Text='<%# Eval("會員地址") %>' />
                                <br />
                                郵件地址 :
                                <asp:Label ID="郵件地址Label" runat="server" Text='<%# Eval("郵件地址") %>' />
                                <br />
                                註冊時間 :
                                <asp:Label ID="註冊時間Label" runat="server" Text='<%# Eval("註冊時間") %>' />
                                <br />
<br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="mbmber_data_sql" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT [id], [會員帳號], [連絡電話], [會員姓名], [會員地址], [郵件地址], [註冊時間] FROM [accounts_Mbmbers] WHERE ([會員帳號] = @會員帳號)">
                            <SelectParameters>
                                <asp:SessionParameter Name="會員帳號" SessionField="user" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn-theme btn-theme-sm btn-white-brd text-uppercase" Text="登出" />

                                </form>
                            </div>

                        </div>

                    </div>
                </div>
        </div>      
</body>
</html>


