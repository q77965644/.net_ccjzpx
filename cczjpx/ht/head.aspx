<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="head.aspx.cs" Inherits="IntegrationPlatform_WebApp.NewPage.head" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/place.css" />
    <link rel="stylesheet" href="css/Basics.css" />

    <link rel="stylesheet" href="css/style.css" />

  
</head>
<body>
    <form id="form1" runat="server">
    
        <header>
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="brand" href="#"><i class="icon-home icon-white fl"></i><span class="backhome fl">回到首页</span></a>
                        <ul class="nav user_menu pull-right">
                            <li class="hidden-phone hidden-tablet"></li>
                            <li class="divider-vertical hidden-phone hidden-tablet"></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle nav_condensed" data-toggle="dropdown">身份：<asp:Label ID="lbl_id" runat="server" Text="暂无"></asp:Label>
                                </a>

                            </li>
                            <li class="divider-vertical hidden-phone hidden-tablet"></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="images/img/user_avatar.png" alt="" class="user_avatar" /><asp:Label ID="lbl_Name" runat="server" Text="暂无"></asp:Label>
                                    <b class="caret"></b></a>
                            </li>
                            <li class="divider-vertical hidden-phone hidden-tablet"></li>
                            <li class="dropdown">
                                <asp:LinkButton ID="LoginOut" runat="server" OnClick="LoginOut_Click"> <span class="dropdown-toggle nav_condensed">登出</span></asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

    </form>
</body>
</html>

