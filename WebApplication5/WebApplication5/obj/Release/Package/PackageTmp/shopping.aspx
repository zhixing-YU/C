<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="WebApplication5.shopping" %>

<!DOCTYPE html>

<html lang="zh-Hant-TW" class="no-js">
<head runat="server">
        <meta charset="utf-8"/>
        <title>購物籃</title>
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
                                <img class="logo-img logo-img-main" src="img/logo/logo_1.png" alt="FlameOnePage Logo" >
                                <img class="logo-img logo-img-active" src="img/logo/logo-dark_1.png" alt="FlameOnePage Dark Logo">
                            </a>
                        </div>
                    </div>

                    <div class="collapse navbar-collapse nav-collapse">
                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="login"><asp:Label ID="Label1" runat="server" Text="訪客" ForeColor="#FFCC00"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="Default#body" style="color: #000000">首頁</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="Default#about" style="color: #000000">商品</a></li>
								<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="shopping" style="color: #FF0000">購物籃</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="registered" style="color: #000000">登入/註冊</a></li>
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
                    <img class="img-responsive" src="img/1920x1080/Windows-10.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                               <form id="form1" runat="server">  
                                    <div>          
                                <table border="1" style="font-size:18px;font-family:serif" cellpadding="5">
                                    <tr>
                                        <th>
                                           <asp:Label ID="Label30" runat="server" ForeColor="Black" Height="41px" Width="20px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label2" runat="server" Text="商品" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label3" runat="server" Text="單價" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label10" runat="server" Text="數量" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label18" runat="server" Text="金額" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label31" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="25px"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Height="41px" Width="20px" style="zoom:120%;" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label12" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button3" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label13" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label14" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList11" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button5" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox5" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label15" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button6" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox6" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label16" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList14" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label24" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button7" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox7" runat="server" Height="41px" Width="20px" style="zoom:120%;"/>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" ForeColor="Black" Height="41px" Width="500px" Font-Size="20px"></asp:Label>
                                        </td>
                                        
                                        
                                        <td>
                                            <asp:Label ID="Label25" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList15" runat="server" CssClass="dropdown-header" Height="41px" Width="100px" Font-Size="25px">
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" ForeColor="Black" Height="41px" Width="100px" Font-Size="20px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button8" runat="server" Text="刪除" />
                                        </td>
                                    </tr>
                                </table>
                                <asp:Label ID="Label27" runat="server" Text="總金額：" Font-Size="30px" ForeColor="Black"></asp:Label>
                                <asp:Label ID="Label28" runat="server" Width="200px" Font-Size="30px" ForeColor="Black"></asp:Label>
                                <asp:Label ID="Label29" runat="server" Text="元" Font-Size="30px" ForeColor="Black"></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="結帳" Font-Size="30px" />
                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    
    <br /><br /><br />

                 
</body>
</html>
