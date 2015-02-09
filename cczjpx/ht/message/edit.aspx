<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" ValidateRequest="false" Inherits="cczjpx.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
        <script src="../../js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.validate.min.js" type="text/javascript"></script>

    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/place.css" />
    <link rel="stylesheet" href="../css/Basics.css" />
    <link rel="stylesheet" href="../css/blue.css" id="link_theme" />
    <link rel="stylesheet" href="../css/style.css" />
    <script type="text/javascript" charset="utf-8" src="../../kindeditor-4.1.10/kindeditor-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript">
        //验证
        $().ready(function () {
            $("#form1").validate();
        });

        //加载编辑器
        $(function () {
            var editor = KindEditor.create('textarea[name="txtContent"]', {
                uploadJson: '../../kindeditor-4.1.10/asp.net/upload_json.ashx',
                fileManagerJson: '../../kindeditor-4.1.10/asp.net/file_manager_json.ashx',
                resizeType: 1,
                allowFileManager: true,
       
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">


        <div class="form2dl">
            <div style="width:20%; float:left; line-height:40px; text-align:center">标题</div>
            <div style="width:75%; float:left"><asp:TextBox ID="txt_title" runat="server" MaxLength="100" /></div>
        </div>
                <div class="form2dl">
            <div style="width:20%; float:left; line-height:40px; text-align:center">是否置顶</div>
            <asp:DropDownList ID="ddlTop" runat="server">
                <asp:ListItem Value="0">否</asp:ListItem>
                <asp:ListItem Value="1">是</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form2dl">
            <div style="width:20%; float:left; line-height:40px; text-align:center">类别</div>
          <asp:DropDownList runat="server" ID="ddlType">
            </asp:DropDownList>
        </div>
        <div class="form2dl">
            <div style="width:20%; float:left; line-height:40px; text-align:center">内容</div>
            <div style="width:75%; float:left">
                <textarea id="txtContent" cols="100" rows="8" style="width: 100%; height: 500px; visibility: hidden; text-wrap:avoid; float:left" runat="server"></textarea>
            </div>
        </div>
        <div class="clear"></div>
        <div class="form2btn mt15">
            <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btnSubmit" 
                onclick="btnSubmit_Click"  />
            &nbsp;<input name="重置" type="reset" class="btnSubmit" value="重 置" />

        </div>
    </form>
</body>
</html>