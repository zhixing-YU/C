<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication5.index" %>

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
                                <img class="logo-img logo-img-main" src="img/logo_1.png" alt="FlameOnePage Logo">
                                <img class="logo-img logo-img-active" src="img/logo-dark_1.png" alt="FlameOnePage Dark Logo">
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
                            <ul class="nav navbar-nav navbar-nav-right">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#"><asp:Label ID="Label1" runat="server" Text="訪客" ForeColor="#FFCC00"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">首頁</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">商品</a></li>
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="shopping">購物籃</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="registered">登入/註冊</a></li>
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
                                <h1 class="carousel-title">歡迎來到Flame購物平台</h1>
                                <p class="color-white">Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
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
                                <h2 class="carousel-title">歡迎來到Flame購物平台</h2>
                                <p class="color-white">Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
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
            <div class="content-lg container">
                <!-- Masonry Grid -->
                <div class="masonry-grid row">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 sm-margin-b-30">
                        <div class="margin-b-60">
                            <form id="form1" runat="server">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">CPU</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">主機板</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">記憶體</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">硬碟</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">顯示卡</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">機殼</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="dropdown-header" Height="41px" Width="322px" Font-Size="25px">
                                <asp:ListItem Selected="True">電源供應器</asp:ListItem>
                                <asp:ListItem>廠牌1</asp:ListItem>
                            </asp:DropDownList>  
                            </form>
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

    </body>
    <!-- END BODY -->
</html>
