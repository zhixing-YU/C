<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5.Default" %>

<!DOCTYPE html>

<html lang="zh-Hant-TW" class="no-js">
   
    <head>
        <meta charset="utf-8"/>
        <title>PC Shop購物平台</title>
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
        <form id="form1" runat="server">
          <header class="header navbar-fixed-top">
              <nav class="navbar" role="navigation">
                <div class="container">
                      <div class="menu-container js_nav-item">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon">
                            </span>
                        </button>

                          <div class="logo">
                            <a class="logo-wrap" href="#body">
                                <img class="logo-img logo-img-main" src="img/logo/logo_1.png" alt="FlameOnePage Logo">
                                <img class="logo-img logo-img-active" src="img/logo/logo-dark_1.png" alt="FlameOnePage Dark Logo">
                            </a>
                        </div>
                    </div>

                    <div class="collapse navbar-collapse nav-collapse">
					
					<!--div class="language-switcher">
					  <ul class="nav-lang">
                        <li><a class="active" href="#">EN</a></li>
					    <li><a href="#">DE</a></li>
						<li><a href="#">FR</a></li>
					  </ul>
					</div---> 

                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right" runat="server">
                                <li class="js_nav-item nav-item"><asp:Label class="nav-item-child nav-item-hover" ID="Label1" runat="server" Text="訪客" ForeColor="#FFCC00"></asp:Label></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">首頁</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">商品</a></li>
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="shopping">購物籃</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="registered">登入/註冊</a></li>
                                <!--<asp:Button ID="Button2" runat="server" Text="登出" />-->
<!--
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Credentials</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#pricing">Pricing</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#contact">Contact</a></li>
--->
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

            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="img/1920x1080/01.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title">歡迎來到PC Shop購物平台</h1>
                                <p class="color-white">Hello! </p>
                            </div>
                            <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Details</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="img/1920x1080/02.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h2 class="carousel-title">歡迎來到PC Shop購物平台</h2>
                                <p class="color-white">Hello! </p>
                            </div>
                            <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Take a Tour</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div id="about">
                <!-- Masonry Grid -->
                <div class="masonry-grid row">                 
                    <img class="img-responsive" src="img/1920x1080/Windows-10.jpg" alt="Slider Image">
                    <div class="container">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 sm-margin-b-30">
                        <div class="margin-b-60">
                            
                                <table border="1" style="font-size:18px;font-family:serif" cellpadding="5">
                                    <tr>
                                        <th>
                                            <asp:Label ID="Label2" runat="server" Text="品名" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th></th>
                                        <th>
                                            <asp:Label ID="Label3" runat="server" Text="數量" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label10" runat="server" Text="單價" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label18" runat="server" Text="金額" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="CPU" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">CPU</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>

                                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="主機板" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">主機板</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="記憶體" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">記憶體</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="硬碟" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">硬碟</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="顯示卡" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">顯示卡</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="機殼" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList13" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">機殼</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label24" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Text="電源供應器" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                                <asp:ListItem Selected="True">電源供應器</asp:ListItem>
                                                <asp:ListItem>廠牌1</asp:ListItem>
                                            </asp:DropDownList> 
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList15" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Label ID="Label27" runat="server" Text="總金額：" Font-Size="30px"></asp:Label>
                                <asp:Label ID="Label28" runat="server" Width="200px" Font-Size="30px"></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [accounts_Mbmbers]"></asp:SqlDataSource>
                                <asp:Label ID="Label29" runat="server" Text="元" Font-Size="30px"></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="確定" Font-Size="30px" />
                        </div>
                    </div>
				</div>
            </div>
        </div>

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="vendor/jquery.min.js" type="text/javascript"></script>
        <script src="vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
        <script src="vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="js/layout.min.js" type="text/javascript"></script>
        <script src="js/components/wow.min.js" type="text/javascript"></script>
        <script src="js/components/swiper.min.js" type="text/javascript"></script>
        <script src="js/components/masonry.min.js" type="text/javascript"></script>
           </form>
    </body>
    <!-- END BODY -->
</html>
