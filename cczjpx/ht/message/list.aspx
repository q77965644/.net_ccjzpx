<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs"  ValidateRequest="false" Inherits="cczjpx.ht.message.list" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/place.css" />
    <link rel="stylesheet" href="../css/Basics.css" />
    <script src="../../js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.validate.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../css/style.css" />
  
</head>
<body>
    <form id="form1" runat="server">
    <div class="serbox">
        <p>
            <a href="edit.aspx" runat="server" id="btnAdd" class="btn04 fl ml20">新增</a>
            <asp:LinkButton ID="btnEdit" runat="server" OnClick="btnEdit_Click" class="btn05 fl ml12">修改</asp:LinkButton>
            <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" class="btn07 fl ml12">删除</asp:LinkButton>
        </p>
        <p>
            <label class="serh">
                关键字：</label>
            <asp:TextBox ID="txtKeywords" runat="server" class="Wdate"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜 索" class="serbtn2" OnClick="btnSearch_Click" />
        </p>
    </div>
    <!--列表展示.开始-->
    <asp:Repeater ID="rptList1" runat="server">
        <HeaderTemplate>
            <table border="0" cellpadding="0" cellspacing="0" class="list1table">
                <thead>
                    <tr>
                        <th width="5%" height="30" class="Txt_cu Teacher_red Teacher_red_background">
                            选择
                        </th>
                         <th width="24%" height="30" class="Txt_cu Teacher_red Teacher_red_background">
                            标题
                        </th>
                         <th width="24%" height="30" class="Txt_cu Teacher_red Teacher_red_background">
                            创建时间
                        </th>
                         <th width="24%" height="30" class="Txt_cu Teacher_red Teacher_red_background">
                            类别
                        </th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tbody>
                <tr>
                    <td style="text-align: center" height="24" class="Txt_center">
                        <asp:CheckBox ID="chkId" runat="server" /><asp:HiddenField ID="hidId" Value='<%#Eval("ID")%>'
                            runat="server" />
                    </td>
                           <td style="text-align: center" height="24" class="Txt_center">
                        <%#Eval("Title")%>
                    </td>
                     <td style="text-align: center" height="24" class="Txt_center">
                        <%#Eval("CreatTime")%>
                    </td>
                     <td style="text-align: center" height="24" class="Txt_center">
                        <%#Eval("TypeName")%>
                    </td>
             
                </tr>
            </tbody>
        </ItemTemplate>
        <FooterTemplate>
            <%#rptList1.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"7\">暂无记录</td></tr>" : ""%>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <!--内容底部-->
    <div class="line20">
    </div>
    <div class="Teacher_list_down">
        共有<asp:Label ID="lblRecordCount" runat="server" ForeColor="red"></asp:Label>条记录
        当前为<asp:Label ID="lblCurrentPage" runat="server" ForeColor="Red"></asp:Label>/
        <asp:Label ID="lblPageCount" runat="server" ForeColor="Red"></asp:Label>页 &nbsp;
        <asp:DropDownList ID="Ddl_PageNumber" runat="server" AutoPostBack="true" CssClass="lanyu">
        </asp:DropDownList>
        <asp:LinkButton ID="BtnFirst" runat="server" Text="首页" OnCommand="Page_OnClick" CommandName="First"
            Font-Size="10pt">首页</asp:LinkButton>
        <asp:LinkButton ID="lbnPrevPage" runat="server" CommandName="prev" OnCommand="Page_OnClick"
            Text="上一页" Font-Size="10pt"></asp:LinkButton>&nbsp;
        <asp:LinkButton ID="lbnNextPage" runat="server" CommandName="next" OnCommand="Page_OnClick"
            Text="下一页" Font-Size="10pt"></asp:LinkButton>
        <asp:LinkButton ID="BtnLast" OnCommand="Page_OnClick" CommandName="Last" Text="尾页"
            runat="server" Font-Size="10pt">尾页</asp:LinkButton></div>
    <!--/内容底部-->
    </form>
</body>
</html>
