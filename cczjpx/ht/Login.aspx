<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IntegrationPlatform_WebApp.NewPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>教师端</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body class="loginbg">
    <div id="logbgx">
        <div class="loglogobox">
      
        </div>
        <div class="logcon">
            <form id="formlog" runat="server">
                <p>
                    <label><span>用户名</span><span class="labelspan01">Username</span></label>
                    <asp:TextBox ID="txt_Account" runat="server" class="loginput"></asp:TextBox>
                </p>
                <p>
                    <label><span>密码</span><span class="labelspan01">Username</span></label>
                    <asp:TextBox ID="txt_UserPwd" runat="server" class="loginput" TextMode="Password"></asp:TextBox>
                </p>
                <p>
                    <label><span>提示</span><span class="labelspan01">Prompt</span></label>
                    <asp:Label ID="lblTip" runat="server" Text="请输入用户名及密码" />
                </p>
                <asp:Button ID="btn_login" runat="server" Text="登陆" class="logbtn" OnClick="btn_login_Click" />
            </form>
        </div>
    </div>
</body>
</html>
