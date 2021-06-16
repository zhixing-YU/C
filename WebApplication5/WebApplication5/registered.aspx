﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registered.aspx.cs" Inherits="WebApplication5.registered" %>

<!DOCTYPE html>

<html lang="zh-Hant-TW" class="no-js">
<head runat="server">
        <meta charset="utf-8"/>
        <title>登入頁面</title>
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
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#"><asp:Label ID="Label1" runat="server" Text="訪客" ForeColor="#FFCC00"></asp:Label></a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="Default#body">首頁</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="Default#about">商品</a></li>
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
        </div>
    <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="img/1920x1080/01.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                               <form id="form1" runat="server">  
                                    <font color="#fff"><div>請登入帳號</div></font>
                                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><font color="#fff">帳號</font><br />
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><font color="#fff">密碼</font><br /> 
                                    <!--<a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">確認</a>--->
                                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn-theme btn-theme-sm btn-white-brd text-uppercase" Text="確認" />
                                    <br />
                                    <font color="#fff"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"></asp:Label></font>
                                </form>
                            </div>
                            <a href="registered2" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">註冊帳號</a>
                        </div>
                    </div>
                </div>
        </div>
    <br /><br /><br />
    
        
</body>
</html>
