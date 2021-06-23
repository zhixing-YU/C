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
        <style>
            img {
                opacity: 0.5;
            }
        </style>
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
					
                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right" runat="server">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="login"><asp:Label ID="Label1" runat="server" Text="訪客" ForeColor="#FFCC00"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">首頁</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">商品</a></li>
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="shopping">購物籃</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="registered">登入/註冊</a></li>
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
                             <table border="1" style="font-size:18px;font-family:serif" >
                                    <tr>
                                        <th style="text-align:center;min-width:100px;font-weight:bold;color:black">品名</th>
                                        <th style="text-align:center;min-width:500px;font-weight:bold;color:black">產品名稱</th>
                                        <th style="text-align:center;min-width:100px;font-weight:bold;color:black">數量</th>
                                        <th style="text-align:center;min-width:100px;font-weight:bold;color:black">單價</th>
                                        <th style="text-align:center;min-width:100px;font-weight:bold;color:black">金額</th>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">CPU</td>
                                        <td><asp:DropDownList ID="cpu_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="cpu_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="cpu_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="cpu_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_CPU]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="cpu_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="cpu_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center" >0</asp:Label></td>
                                        <td><asp:Label ID="cpu_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="cpu_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">主機板</td>
                                        <td><asp:DropDownList ID="mdb_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="mdb_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="mdb_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="mdb_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_MDB]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="mdb_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="mdb_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="mdb_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="mdb_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">記憶體</td>
                                        <td><asp:DropDownList ID="mem_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="mem_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="mem_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="mem_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_Memory]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="mem_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="mem_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="mem_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="mem_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">硬碟</td>
                                        <td><asp:DropDownList ID="hdd_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="hdd_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="hdd_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="hdd_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_HDD]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="hdd_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="hdd_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="hdd_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="hdd_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">顯示卡</td>
                                        <td><asp:DropDownList ID="vga_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="vga_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="vga_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="vga_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_VGA]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="vga_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="vga_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="vga_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="vga_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">機殼</td>
                                        <td><asp:DropDownList ID="cas_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="cas_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="cas_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="cas_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_Case]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="cas_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="cas_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="cas_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="cas_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">電源供應器</td>
                                        <td><asp:DropDownList ID="psu_product_name_DropDownList" runat="server" CssClass="dropdown-header" Height="40px" Width="500px" Font-Size="25px" AutoPostBack="True" DataSourceID="psu_sql_database_string" DataTextField="產品名稱" DataValueField="id" OnSelectedIndexChanged="psu_product_name_DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="psu_sql_database_string" runat="server" ConnectionString="<%$ ConnectionStrings:Computer_productionConnectionString %>" SelectCommand="SELECT * FROM [products_Power_supplier]"></asp:SqlDataSource>
                                        </td>
                                        <td><asp:DropDownList ID="psu_item_count_DropDownList" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px" style="text-align:center"><asp:ListItem>1</asp:ListItem></asp:DropDownList></td>
                                        <td><asp:Label ID="psu_price_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label></td>
                                        <td><asp:Label ID="psu_totalPrice_label" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px" style="text-align:center">0</asp:Label>
                                            <asp:Label ID="psu_pid_label" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;font-weight:bold;color:black">總金額 : </td>
                                        <td><asp:Label ID="final_total_price_count" runat="server" Width="500px" Font-Size="30px" ForeColor="Black" style="text-align:center">0</asp:Label></td>
                                        <td style="text-align:center;font-weight:bold;color:black">元</td>
                                        <td><asp:Button ID="shopping_cart_check_buttom" runat="server" Text="加入購物籃" Font-Size="18px" class="btn-theme-sm btn-default-bg text-uppercase"/></td>
                                    </tr>
                                </table>
                                

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
