<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="cczjpx.ht.gType.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/place.css" />
    <link rel="stylesheet" href="../css/Basics.css" />
    <link rel="stylesheet" href="../css/purple2.css" id="link_theme" />
    <link rel="stylesheet" href="../lib/jBreadcrumbs/css/BreadCrumb.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <script type="text/javascript" src=" ../common/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src=" ../common/jquery.pngFix.pack.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input[id*=btnPush]").click(function () {
                var cb = $(".list1table").find("input[type=checkbox]:checked=true");
                if (cb.length != 1) {
                    alert("请选择一条新闻")
                    return false;
                }
                var id = $(cb).next().val();
                window.location.href = "push_news.aspx?typeid=0&id=" + id;
                return false;
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="serbox">
            <p>
                <a href="news_edit.aspx" runat="server" id="btnAdd" class="btn04 fl ml20" visible="false">新增</a>
                <asp:LinkButton ID="btnEdit" runat="server" OnClick="btnEdit_Click" class="btn05 fl ml12" Visible="false">修改</asp:LinkButton>
                <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" class="btn07 fl ml12" Visible="false">删除</asp:LinkButton>
                <asp:Button ID="btnPush" runat="server" Text="推送" class="btn04 fl ml20" />
            </p>

            <p>
                <label class="serh">关键字：</label>

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
                            <td width="5%" height="30" class="Txt_cu Teacher_red Teacher_red_background">选择</td>
                            <td width="24%" height="30" class="Txt_cu Teacher_red Teacher_red_background">标题</td>
                            <%--<td width="13%" height="30" class="Txt_cu Teacher_red Teacher_red_background">内容</td>--%>
                            <td width="18%" height="30" class="Txt_cu Teacher_red Teacher_red_background">创建时间</td>
                            <td width="12%" height="30" class="Txt_cu Teacher_red Teacher_red_background">创建人</td>
                            <td width="18%" height="30" class="Txt_cu Teacher_red Teacher_red_background">更新时间</td>
                            <td width="12%" height="30" class="Txt_cu Teacher_red Teacher_red_background">更新人</td>
                            <td width="6%" height="30" class="Txt_cu Teacher_red Teacher_red_background">访问量</td>
                            <td width="5%" height="30" class="Txt_cu Teacher_red Teacher_red_background">详细</td>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tbody>
                    <tr>
                        <td style="text-align: center" height="24" class="Txt_center">
                            <asp:CheckBox ID="chkId" runat="server" /><asp:HiddenField ID="hidId" Value='<%#Eval("NewsID")%>' runat="server" />
                        </td>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("NewsTitle")%></td>
                        <%--<td style="text-align: center" height="24" class="Txt_center"><%#Eval("NewsContent")%></td>--%>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("CreateTime")%></td>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("creater")%></td>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("updatetime")%></td>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("updater")%></td>
                        <td style="text-align: center" height="24" class="Txt_center"><%#Eval("clicknum")%></td>
                        <td style="text-align: center" height="24" class="Txt_center"><a href="infomation_show.aspx?&type=new&id=<%#Eval("NewsID")%>">查看</td>

                    </tr>
                </tbody>

            </ItemTemplate>
            <FooterTemplate>

                <%#rptList1.Items.Count == 0 ? "<tr><td align=\"center\" colspan=\"7\">暂无记录</td></tr>" : ""%>
                 </table>
            </FooterTemplate>
        </asp:Repeater>
        <!--内容底部-->
        <div class="line20"></div>
        <div class="pagelist">
            <div class="l-btns">
                <span>显示</span><asp:TextBox ID="txtPageNum" runat="server" CssClass="pagenum" onkeydown="return checkNumber(event);" OnTextChanged="txtPageNum_TextChanged" AutoPostBack="True"></asp:TextBox><span>条/页</span>
            </div>
            <div id="PageContent" runat="server" class="default"></div>
        </div>
        <!--/内容底部-->

    </form>
</body>
</html>
