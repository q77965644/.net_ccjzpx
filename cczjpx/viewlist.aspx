<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewlist.aspx.cs" Inherits="cczjpx.viewlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>弘晟教育</title>
    <link href="css/index_new.css" rel="stylesheet" />
    <style type="text/css">
        td
        {
            font-size: 12px;
        }
        
        A:link
        {
            text-decoration: none;
            color: #000000;
        }
        /*访问过的链接*/
        A:visited
        {
            text-decoration: none;
            color: #000000;
        }
        /*鼠标停在上面的链接*/
        A:hover
        {
            color: #ff0000;
            text-decoration: none;
        }
        
        A.s1:link
        {
            font-size: 14px;
            text-decoration: none;
            color: #ffffff;
            font-weight: 800;
        }
        
        A.s1:visited
        {
            font-size: 14px;
            text-decoration: none;
            color: #ffffff;
            font-weight: 800;
        }
        
        A.s1:active
        {
            text-decoration: none;
            color: #ffffff;
            font-weight: normal;
        }
        
        A.s1:hover
        {
            text-decoration: none;
            color: #ffff00;
            font-weight: 800;
        }
        
        div.n1
        {
            padding-left: 4px;
        }
        
        div.n1 a
        {
            color: #bc0000;
            font-size: 14px;
            text-decoration: none;
        }
        
        div.n1 a:hover
        {
            color: red;
        }
        
        div.n1 ul
        {
            width: 625px;
            padding-bottom: 2px;
            margin-left: 15px;
            width: 100%;
            padding-right: 10px;
            padding-top: 2px;
        }
        
        div.n1 li
        {
            float: left;
            width: 300px;
            font-size: 12px;
            height: 80px;
            vertical-align: middle;
            padding-top: 7px;
            overflow: hidden;
        }
        
        div.n2
        {
            padding-left: 4px;
            width: 310;
        }
        
        div.n2 a
        {
            color: #000000;
            font-size: 12px;
            text-decoration: none;
        }
        
        div.n2 a:hover
        {
            color: red;
        }
        
        div.n2 li
        {
            float: left;
            width: 230px;
            font-size: 12px;
            height: 16px;
            line-height: 16px;
            text-indent: 5px;
            padding-top: 5px;
            overflow: hidden;
            list-style: none;
        }
        
        div.n3
        {
            padding-left: 4px;
            width: 310;
        }
        
        div.n3 a
        {
            color: #000000;
            font-size: 12px;
            text-decoration: none;
        }
        
        div.n3 a:hover
        {
            color: red;
        }
        
        div.n3 li
        {
            float: left;
            width: 260px;
            font-size: 12px;
            height: 16px;
            line-height: 16px;
            text-indent: 5px;
            padding-top: 5px;
            overflow: hidden;
            list-style: none;
        }
        
        div.n5
        {
            padding-left: 4px;
            width: 100%;
        }
        
        div.n5 a
        {
            color: #000000;
            font-size: 12px;
            text-decoration: none;
        }
        
        div.n5 a:hover
        {
            color: red;
        }
        
        div.n5 ul
        {
            width: 510px;
            padding-bottom: 2px;
            margin-left: 15px;
            width: 100%;
            padding-right: 10px;
            padding-top: 2px;
        }
        
        div.n5 li
        {
            float: left;
            width: 210px;
            font-size: 12px;
            height: 20px;
            line-height: 20px;
            text-indent: 5px;
            padding-top: 7px;
            overflow: hidden;
            list-style: none;
        }
        
        img
        {
            border: none;
        }
    </style>
</head>
<body style="margin: 0px; font-size: 12px; font-family: 宋体;">
    <form id="form1" runat="server">
    <script type="text/javascript" charset="utf-8" src="10012811/10013391.js"></script>
<%--    <form name="form1" method="post" action="viewlist.aspx?cls=7" id="form2">--%>
    <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk0MDEzODUyNQ9kFgICAw9kFg5mDxYCHgtfIUl0ZW1Db3VudAIKFhRmD2QWAmYPFQQEMjA0NjIyMDEz5bm05LiA57qn5bu66YCg5biI5bu66K6+5bel56iL57uP5rWO5qih5ouf6aKYMQkyMDEzLTgtMjUi5bu66K6+5bel56iL57uP5rWO5qih5ouf6aKYMSZuYnNwO2QCAQ9kFgJmDxUEBDIwNjMyMjAxM+W5tOS4gOe6p+W7uumAoOW4iOW7uuiuvuW3peeoi+e7j+a1juiHqua1i+mimDgJMjAxMy04LTIwHOW3peeoi+e7j+a1juiHqua1i+mimDgmbmJzcDtkAgIPZBYCZg8VBAQxOTYzOTIwMTPlubTkuIDnuqflu7rpgKDluIjlu7rorr7lt6XnqIvpobnnm67nrqHnkIbnu4PkuaDpopgxMAgyMDEzLTctMSnlu7rorr7lt6XnqIvpobnnm67nrqHnkIbnu4PkuaDpopgxMCZuYnNwO2QCAw9kFgJmDxUEBDE5MzNEMjAxM+W5tOS4gOe6p+W7uumAoOW4iOW7uuiuvuW3peeoi+azleinhOWPiuebuOWFs+efpeivhuiAg+eCueWJluaekDMJMjAxMy02LTExKOazleinhOWPiuebuOWFs+efpeivhuiAg+eCueWJluaekDMmbmJzcDtkAgQPZBYCZg8VBAQxOTI3RDIwMTPlubTkuIDnuqflu7rpgKDluIjlu7rorr7lt6XnqIvms5Xop4Tlj4rnm7jlhbPnn6Xor4bogIPngrnliZbmnpAzCTIwMTMtNS0yOTTlu7rorr7lt6XnqIvms5Xop4Tlj4rnm7jlhbPnn6Xor4bogIPngrnliZbmnpAzJm5ic3A7ZAIFD2QWAmYPFQQEMTU5Mi8yMDEx5bm05LiA57qn5bu66YCg5biI6aG555uu566h55CG5qih5ouf6ICD6K+VNAgyMDEzLTEtNR/pobnnm67nrqHnkIbmqKHmi5/ogIPor5U0Jm5ic3A7ZAIGD2QWAmYPFQQEMTQwM0YyMDEz5bm05LiA57qn5bu66YCg5biI6ICD6K+V6L6F5a+877ya54Ot5Yqb5a2m5Y+v6YCG5ZKM5LiN5Y+v6YCG6L+H56iLCjIwMTItMTItMjAn54Ot5Yqb5a2m5Y+v6YCG5ZKM5LiN5Y+v6YCG6L+H56iLJm5ic3A7ZAIHD2QWAmYPFQQEMTQwMkAyMDEz5bm05LiA57qn5bu66YCg5biI6ICD6K+V6L6F5a+877ya5bi46KeB55qE5Z+65pys54Ot5Yqb6L+H56iLCjIwMTItMTItMjAh5bi46KeB55qE5Z+65pys54Ot5Yqb6L+H56iLJm5ic3A7ZAIID2QWAmYPFQQEMTQwMT0yMDEz5bm05LiA57qn5bu66YCg5biI6ICD6K+V6L6F5a+877ya5rWB5L2T5py65qKw6IO955qE54m55oCnCjIwMTItMTItMjAe5rWB5L2T5py65qKw6IO955qE54m55oCnJm5ic3A7ZAIJD2QWAmYPFQQEMTQwMDcyMDEz5bm05LiA57qn5bu66YCg5biI6ICD6K+V6L6F5a+877ya5rWB5L2T5Yqb5a2m54m55oCnCjIwMTItMTItMjAY5rWB5L2T5Yqb5a2m54m55oCnJm5ic3A7ZAIBDw8WAh4EVGV4dAUBMWRkAgIPDxYCHwEFAjYxZGQCAw8PFgIfAQUDNjAxZGQCBA8PFgIfAQUCMTBkZAIHDw8WAh4LTmF2aWdhdGVVcmwFGy92aWV3bGlzdC5hc3B4P2Nscz03JlBhZ2U9MmRkAggPDxYCHwIFHC92aWV3bGlzdC5hc3B4P2Nscz03JlBhZ2U9NjFkZGRBNIPc9W22N3qjo3Fjcui36U2uQA==" />
    </div>
    <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="FBD24D15" />
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100%" align="center" valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100%" align="center" valign="top" style="height: 132px; background: url('images/t_bk0.jpg')">
                            <!-- logo -->
                            <table width="960" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="100%">
                                        <div class="top_logo">
                                            <img src="images/top.jpg" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="35" align="center" valign="middle">
                                        <table class="tab_menu" width="960" border="0" cellpadding="0" cellspacing="0" style="color: #ffffff;
                                            font-size: 16px; font-weight: 800;">
                                            <tr>
                                                <td width="100">
                                                    <a href="index.html" class="s1">首 页</a>
                                                </td>
                                                <td>
                                                    <img height="35" border="0" src="images/nv_fg.jpg" alt="" />
                                                </td>
                                                <td width="100">
                                                    <a href="/2013/yiji.html" class="s1" target="_blank">一级建造师</a>
                                                </td>
                                                <td>
                                                    <img height="35" border="0" src="images/nv_fg.jpg" alt="" />
                                                </td>
                                                <td width="100">
                                                    <a href="/2013/erji.html" class="s1" target="_blank">二级建造师</a>
                                                </td>
                                                <td>
                                                    <img height="35" border="0" src="images/nv_fg.jpg" alt="" />
                                                </td>
                                                <td width="100">
                                                    <a href="/ncdzh/product_list_84.html" class="s1" target="_blank">考试宝典</a>
                                                </td>
                                                <td>
                                                    <img height="35" border="0" src="images/nv_fg.jpg" alt="" />
                                                </td>
                                                <td width="100">
                                                    <a href="/2013/xueli.html" class="s1">快速学历</a>
                                                </td>
                                                <td width="*">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/sp.gif" height="1">
                        </td>
                    </tr>
                </table>
                <table width="960" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100%" style="height: 35px; background: #b41e1f; color: white;">
                            <table id="tab_leftAdvert" width="960" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="110" style="text-align: center; font-size: 16px">
                                        招生简章
                                    </td>
                                    <td align="left">
                                        <marquee behavior="alternate" scrollamount="2" direction="right">
                                                <marquee direction="left">
                                                    <a href="/2013/jiyi.html" target="_blank">2013年一级建造师招生简章</a>
                                                    <a href="/2013/erji.html" target="_blank">2013年二级建造师招生简章</a>   
                                                </marquee>
                                            </marquee>
                                    </td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <!--ggtp0-->
                <img style="width: 960px; height: 150px; margin-bottom: 15px;" src="images/201492612165.jpg"
                    alt="" />
                <!--/ggtp0-->
            </td>
        </tr>
        <tr>
            <td width="100%">
                <img height="1" border="0" src="images/sp.gif">
            </td>
        </tr>
        <tr>
            <td width="100%">
                <img width="960" height="14" border="0" src="images/t_fg0.jpg">
            </td>
        </tr>
        <tr>
            <td width="100%">
                <img height="5" border="0" src="images/sp.gif">
            </td>
        </tr>
    </table>
    <!-- body -->
    <table width="960" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="100%" align="center" valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <!-- left -->
                        <td width="660" align="left" valign="top">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="100%" align="center" valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%" align="center" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #c3c3c3">
                                                        <tr>
                                                            <td height="32" align="left" valign="center" style="text-indent: 35px; background: url('images/t_br_lsbk0.png')">
                                                                &nbsp;当前位置:首页&nbsp;>&nbsp;[项目资料]一级建造师
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="640" valign="top">
                                                                <ul id="list" runat="server">
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif" />
                                                                        <div class="list_title">
                                                                            <a href="#">新闻标题</a></div>
                                                                        <div class="list_time">
                                                                            2015-01-01</div>
                                                                    </li>
                                                                </ul>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img border="0" height="6" src="images/sp.gif">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="16" align="left">
                            <img width="16" src="images/sp.gif">
                        </td>
                        <!-- right -->
                        <td width="284" align="right" valign="top">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="100%" height="610" valign="top" style="border: 1px solid #cccccc; font-size: 14px;
                                        color: #ffffff;">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="32" align="left" style="color: #b40000; font-size: 14px; text-indent: 45px;
                                                    background: url('images/t_br_lsbk1.jpg')">
                                                    栏目分类列表
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="240" width="100%" valign="top" align="center">
                                                    <table width="260" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height="25">
                                                                <a href="viewlist.aspx?cls=1">开班信息</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=2'>学校动态</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=3'>报考指南</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=6'>招生简章</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=7'>[项目资料]一级建造师</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=10'>[项目资料]二级建造师</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=11'>[项目资料]造价工程师</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 13px; background: url('images/r_br_ls0.gif')" height='25'>
                                                                <a href='viewlist.aspx?cls=12'>[项目资料]快速学历</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="32" align="left" style="color: #b40000; font-size: 14px; text-indent: 45px;
                                                    background: url('images/t_br_lsbk1.jpg')">
                                                    本栏热点内容
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="170" width="100%" valign="top" align="center">
                                                    <table width="270" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                <img height="4" src="images/sp.gif">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=612'>材料损耗量的确定</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=208'>2011一级建造师机电工程案例分析题整合</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=207'>2011一建建设工程经济辅导</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=334'>2012年建设工程经济内部讲义等额支付系列</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=209'>2011一级建造师市政工程实务辅导</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=527'>一级建造师2012年考试考模拟试题5</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=193'>最新调查一级建造师的就业前景</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-size: 12px;" height='20'>
                                                                &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=198'>一建考试机电工程平面测量方法</a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <tr>
                                                    <td height="32" align="left" style="color: #b40000; font-size: 14px; text-indent: 45px;
                                                        background: url('images/t_br_lsbk1.jpg')">
                                                        最新热点内容
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="172" width="100%" valign="top" align="center">
                                                        <table width="260" border="0" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img height="4" src="images/sp.gif">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=2261'>2015年二级建造师招生正式启动，赢在起点!</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=612'>材料损耗量的确定</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=2178'>大智慧2014年二级建造师南昌分校课表</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=1622'>2013年二级建造师课程安排及报名通知</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=483'>2012年二级管公用工程)备考模拟题</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=1706'>2013年一级建造师正式招生！！</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=600'>一级建造师新增报考专业</a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valign="center" style="font-size: 12px;" height='20'>
                                                                    &nbsp;<img src="images/arrow03.gif">&nbsp;<a href='viewnews.aspx?nid=231'>2012年二建市政公用考试重点汇总2</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <!-- body -->
    <!-- link -->
    <table width="960" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <img height="6" src="images/sp.gif">
            </td>
        </tr>
        <tr>
            <td width="100%" style="border: 1px solid #c3c3c3">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" width="32" height="124">
                            <img src="images/t_br_yqlj.png">
                        </td>
                        <td width="*">
                            <ul id="Links">
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                                <li><a href="#">
                                    <img src="images/201111221379.jpg" /></a></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" height="30" style="background: url('images/bottom_bg.gif')">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="padding-left: 40px; font-size: 12px; color: #ac0000">
                Copyright @ 2015 吉林长春弘晟教育培训学校 &nbsp;吉ICP备11007475号
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
