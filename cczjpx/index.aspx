<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="cczjpx.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>弘晟教育 </title>
    <style type="text/css">
        td
        {
            font-size: 12px;
        }
        
        A:link
        {
            text-decoration: none;
            color: #fff;
        }
        
        访问过的链接 A:visited
        {
            text-decoration: none;
            color: #000000;
        }
        
        鼠标停在上面的链接 A:hover
        {
            color: #000;
            text-decoration: none;
            background-color: #fff;
        }
        
        A.s2:link
        {
            font-size: 12px;
            text-decoration: none;
            color: #ffffff;
        }
        
        A.s2:visited
        {
            text-decoration: none;
            color: #ffffff;
        }
        
        A.s2:hover
        {
            text-decoration: none;
            color: #ffff00;
            font-weight: 800;
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
        
        div.n1 a:visited
        {
            color: #bc0000;
        }
        
        div.n1 ul
        {
            width: 510px;
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
            height: 60px;
            vertical-align: middle;
            padding-top: 7px;
            overflow: hidden;
        }
        
        div.n2
        {
            padding-left: 4px;
            width: 310px;
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
            width: 240px;
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
            width: 300px;
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
        /* // image replacement */
        
        #container
        {
            margin: 0 auto;
            position: relative;
            text-align: left;
            width: 696px;
            background: #fff;
            margin-bottom: 2em;
        }
        
        #header
        {
            height: 80px;
            line-height: 80px;
            background: #5DC9E1;
            color: #fff;
        }
        
        #content
        {
            position: relative;
        }
        
        /* Easy Slider */
        
        #slider ul, #slider li, #slider2 ul, #slider2 li
        {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        
        #slider2
        {
            margin-top: 1em;
        }
        
        #slider li, #slider2 li
        {
            /* 
			define width and height of list item (slide)
			entire slider area will adjust according to the parameters provided here
		*/
            width: 900px;
            height: 241px;
            overflow: hidden;
        }
        
        #prevBtn, #nextBtn, #slider1next, #slider1prev
        {
            display: block;
            width: 30px;
            height: 77px;
            position: absolute;
            left: -30px;
            top: 71px;
            z-index: 1000;
        }
        
        #nextBtn, #slider1next
        {
            left: 900px;
        }
        
        #prevBtn a, #nextBtn a, #slider1next a, #slider1prev a
        {
            display: block;
            position: relative;
            width: 30px;
            height: 77px;
            background: url(images/btn_prev.gif) no-repeat 0 0;
        }
        
        #nextBtn a, #slider1next a
        {
            background: url(images/btn_next.gif) no-repeat 0 0;
        }
        
        /* numeric controls */
        
        ol#controls
        {
            margin: 1em 0;
            padding: 0;
            height: 28px;
        }
        
        ol#controls li
        {
            margin: 0 10px 0 0;
            padding: 0;
            float: left;
            list-style: none;
            height: 28px;
            line-height: 28px;
        }
        
        ol#controls li a
        {
            float: left;
            height: 28px;
            line-height: 28px;
            border: 1px solid #ccc;
            background: #DAF3F8;
            color: #555;
            padding: 0 10px;
            text-decoration: none;
        }
        
        ol#controls li.current a
        {
            background: #5DC9E1;
            color: #fff;
        }
        
        ol#controls li a:focus, #prevBtn a:focus, #nextBtn a:focus
        {
            outline: none;
        }
        
        /* // Easy Slider */
    </style>
    <script src="js/jquery1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/easySlider1.7.js"></script>
    <link type="text/css" rel="stylesheet" href="css/posterTvGrid.css" />
    <link href="css/index_new.css" rel="stylesheet" />
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        
        a, img
        {
            border: 0;
        }
        
        body
        {
            background: #f5f5f5;
            font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
        }
    </style>
</head>
<body style="margin: 0px; font-size: 12px; font-family: 宋体;">
    <form id="form1" runat="server">
    <form name="form1" method="post" action="default.aspx" id="form2">
    <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTkyMzg1NTc5OGRkeErsYZGg5W5s+TytnmR+FP0dw8s=" />
    </div>
    <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
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
                                        <!--<table width="960" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="100">
                                                        <img src="images/qyjj_slogo.jpg"></td>
                                                    <td width="600" height="96" align="left">
                                                        <img height="96" border="0" src="images/wz_logo.png"></td>
                                                    <td width="260" align="right">
                               
                                                        <a href="viewnews.aspx?nid=176">
                                     
                                                            <img border="0" src="images/wz_dzh.gif" alt="" /></a><a href="http://www.jgstudy.com/denglu.aspx" target="_blank"><img border="0" src="images/wz_wlkt.gif" alt="" /></a></td>
                                                </tr>
                                            </table>-->
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
                                        <!--<ul class="top_menu" style="color:#fff">
                                                <li><a href="index.html">首页</a></li>
                                                <li><a href="index.html">菜单一</a></li>
                                                <li><a href="index.html">菜单二</a></li>
                                                <li><a href="index.html">菜单三</a></li>
                                                <li><a href="index.html">菜单四</a></li>
                                            </ul>-->
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
                <div id="posterLayor">
                    <div id="posterTvGrid86804" style="margin: 10px auto 0 auto;">
                    </div>
                </div>
                <script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
                <script type="text/javascript" src="js/posterTvGrid.js"></script>
                <script type="text/javascript">
                    var posterTvGrid86804 = new posterTvGrid('posterTvGrid86804', { className: "posterTvGrid" }, <%=code_imglist%>
                        );
                </script>
                <!--<table id="banner" width="960" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="100%">
                    <div id="content">
                        <div id="slider">
                            <ul>
                            
                                <li><a target="_blank" href="http://WWW.DZHEDU.CN/VIEWNEWS.ASPX?NID=2353&TYPE=1">
                                    <img width="900" height="240" src="images/2014111617311.jpg" alt="" /></a></li>
                                <li><a target="_blank" href="http://WWW.DZHEDU.CN/VIEWNEWS.ASPX?NID=2368">
                                    <img width="900" height="240" src="images/20141126223641.jpg" alt="" /></a></li>
                                <li><a target="_blank" href="http://WWW.DZHEDU.CN/VIEWNEWS.ASPX?NID=2261">
                                    <img width="900" height="240" src="images/2014915155231.jpg" alt="" /></a></li>
                           
                            </ul>
                        </div>
                    </div>
                </td>
            </tr>
        </table>-->
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
        <!--招商简章图-->
        <tr>
            <td>
                <!--ggtp0-->
                <a target="_blank" href="http://WWW.DZHEDU.CN/VIEWNEWS.ASPX?NID=2265">
                    <img style="width: 960px; height: 150px; margin-bottom: 15px;" src="images/201492612165.jpg"
                        alt="" />
                </a>
                <!--/ggtp0-->
            </td>
        </tr>
        <!--招商简章图结束-->
        <tr>
            <!--<td width="100%">
                    <img style="padding:0px 10px;" height="1" border="0" src="images/sp.gif">
                </td>-->
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
                                                <td colspan="3">
                                                    <div class="left_img_title">
                                                        <div class="left_son_img">
                                                        </div>
                                                        <div class="left_son_title">
                                                            给个名字</div>
                                                        <div class="left_song_more">
                                                            <a href="#">更多>></a></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr id="index_img_list" runat="server">
                                                <td>
                                                    <img src="images/pxxc001.jpg">
                                                </td>
                                                <td>
                                                    <img src="images/pxxc002.jpg">
                                                </td>
                                                <td>
                                                    <img src="images/pxxc003.jpg">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!-- <td width="100%" align="center" valign="top">
                            
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                               <td width=660 height=42 align=left style="padding-left:6px;background:url('images/t_bk4.jpg')">请各区需要报名的同学和各分校联系</td>
                              
                            </tr>
                            <tr><td width="100%" height=100 valign=top align=center style="border-left:1px #a60000 solid;border-right:1px #a60000 solid;border-bottom:1px #a60000 solid;" >
                               <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                 <tr><td width=100% style="padding-top:6px"><img src="images/bmdz1.jpg"></td></tr>
                               </table>
                            </td></tr>
                            <tr><td><img height=4 src="images/sp.gif"></td></tr>
                            </table>
                </td>  
                </tr> -->
                                <tr>
                                    <td width="100%" align="center" valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="328" align="center" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #c3c3c3">
                                                        <tr>
                                                            <td height="32" align="right" valign="bottom" style="background: url('images/t_br_kbxx.png') no-repeat;">
                                                                <!--c1b_0_0-->
                                                                <a href="viewlist.aspx?cls=1">
                                                                    <!--c1b_0_0-->
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="220" valign="top" align="left" style="padding-left: 10px">
                                                                <!--b1b_0_0-->
                                                                <div class="n3" id="news_type_01" runat="server">
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2063"
                                                                            title="2013年一级建造师建设工程经济自测题8">2013年一级建造师建设工程经济自测题8</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2046"
                                                                            title="2013年一级建造师建设工程经济模拟题1">2013年一级建造师建设工程经济模拟题1</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1963"
                                                                            title="2013年一级建造师建设工程项目管理练习题10">2013年一级建造师建设工程项目管理练习题10</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1933"
                                                                            title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1927"
                                                                            title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                </div>
                                                                <!-- <div class="n1">
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2394" title="2015年大智慧第一阶段课表">2015年大智慧第一阶段课表</a><br>
                                                                            3月14开课！&nbsp;<a target="_blank" href="viewnews.aspx?nid=2394">[查看全文]</a></li>
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2353" title="2015二级建造师12月份摸底考试火热预约中">2015二级建造师12月份摸底考试火热预约中</a><br>
                                                                            什么水平，测测就知道！&nbsp;<a target="_blank" href="viewnews.aspx?nid=2353">[查看全文]</a></li>
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2264" title="一级建造师押题已到，欢迎订阅">一级建造师押题已到，欢迎订阅</a><br>
                                                                            房建、市政、机电全科已到押题&nbsp;<a target="_blank" href="viewnews.aspx?nid=2264">[查看全文]</a></li>
                                                                    </div>-->
                                                                <!--b1e_0_0-->
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="4" align="center" valign="top">
                                                </td>
                                                <td width="328" align="center" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #c3c3c3">
                                                        <tr>
                                                            <td height="32" align="right" valign="bottom" style="background: url('images/t_br_xxdt.png') no-repeat;">
                                                                <a href="viewlist.aspx?cls=2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="220" valign="top" align="left" style="padding-left: 10px">
                                                                <div class="n3">
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2063"
                                                                            title="2013年一级建造师建设工程经济自测题8">2013年一级建造师建设工程经济自测题8</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2046"
                                                                            title="2013年一级建造师建设工程经济模拟题1">2013年一级建造师建设工程经济模拟题1</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1963"
                                                                            title="2013年一级建造师建设工程项目管理练习题10">2013年一级建造师建设工程项目管理练习题10</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1933"
                                                                            title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1927"
                                                                            title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                    <li>
                                                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                            title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                </div>
                                                                <!--<div class="n1">
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2393" title="2015年江西省二级建造师报名开启中">2015年江西省二级建造师报名开启中</a><br>
                                                                            1月7~1月23日报名启动
&nbsp;<a target="_blank" href="viewnews.aspx?nid=2393">[查看全文]</a></li>
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2368" title="大智慧2015年二级建造师培训流程">大智慧2015年二级建造师培训流程</a><br>
                                                                            每一步的准备都只为一次通过！！&nbsp;<a target="_blank" href="viewnews.aspx?nid=2368">[查看全文]</a></li>
                                                                        <li>
                                                                            <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2265" title="大智慧玉石小铺试营业，专为高端的您打造！">大智慧玉石小铺试营业，专为高端的...</a><br>
                                                                            凭大智慧建造师缴费记录有优惠哦！&nbsp;<a target="_blank" href="viewnews.aspx?nid=2265">[查看全文]</a></li>
                                                                    </div>-->
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!-- <tr>
                                        <td>
                                            <img src="images/lxfs.png"></td>
                                    </tr>-->
                                <tr>
                                    <td width="100%" align="center" valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%" align="center" valign="top">
                                                    <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #c3c3c3">
                                                        <tr>
                                                            <td height="32" align="right" valign="bottom" style="background: url('images/t_br_xmzl.png') no-repeat;">
                                                                <a href="111">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="260" valign="top">
                                                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img height="5" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="50%" height="160" align="center" valign="top" style="padding-top: 4px;
                                                                            border-right: solid 1px  #cccccc">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[项目资料]一级建造师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=7">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2063"
                                                                                                    title="2013年一级建造师建设工程经济自测题8">2013年一级建造师建设工程经济自测题8</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2046"
                                                                                                    title="2013年一级建造师建设工程经济模拟题1">2013年一级建造师建设工程经济模拟题1</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1963"
                                                                                                    title="2013年一级建造师建设工程项目管理练习题10">2013年一级建造师建设工程项目管理练习题10</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1933"
                                                                                                    title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1927"
                                                                                                    title="2013年一级建造师建设工程法规及相关知识考点剖析3">2013年一级建造师建设工程法规及相关知识考...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1592"
                                                                                                    title="2011年一级建造师项目管理模拟考试4">2011年一级建造师项目管理模拟考试4</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td width="50%" align="center" valign="top" style="padding-top: 4px;">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[项目资料]二级建造师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=10">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2" align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2366"
                                                                                                    title="2015公路练习题3">2015公路练习题3</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2365"
                                                                                                    title="2015公路练习题2">2015公路练习题2</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2364"
                                                                                                    title="2015公路练习题1">2015公路练习题1</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2363"
                                                                                                    title="2015法规练习题17">2015法规练习题17</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2362"
                                                                                                    title="2015法规练习题17">2015法规练习题17</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2361"
                                                                                                    title="2015法规练习题16">2015法规练习题16</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <img height="10" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="50%" height="160" align="center" valign="top" style="padding-top: 4px;
                                                                            border-right: solid 1px  #cccccc">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[项目资料]造价工程师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=11">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2" align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=302"
                                                                                                    title="浅谈外墙保温施工的质量要点">浅谈外墙保温施工的质量要点</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=301"
                                                                                                    title="2011造价工程师《理论与法规》讲义1">2011造价工程师《理论与法规》讲义1</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=300"
                                                                                                    title="2011造价工程师《理论与法规》讲义2">2011造价工程师《理论与法规》讲义2</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=299"
                                                                                                    title="2011年造价工程师考试基础理论特点汇总">2011年造价工程师考试基础理论特点汇总</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=298"
                                                                                                    title="造价工程师重点解析（1）">造价工程师重点解析（1）</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=297"
                                                                                                    title="造价工程师考前学习方法指导">造价工程师考前学习方法指导</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td width="50%" align="center" valign="top" style="padding-top: 4px;">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[项目资料]快速学历
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=12">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2" align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1831"
                                                                                                    title="2013年10月快速学历一览表">2013年10月快速学历一览表</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=251"
                                                                                                    title="中国建设监理协会2011年项目分工">中国建设监理协会2011年项目分工</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <img height="10" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
                                                                </table>
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
                                <tr>
                                    <td width="100%" align="center" valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%" align="center" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #c3c3c3">
                                                        <tr>
                                                            <td height="32" align="right" valign="bottom" style="background: url('images/t_br_lnkt.png') no-repeat;">
                                                                <a href="111">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="106" valign="top">
                                                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img height="5" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="50%" height="160" align="center" valign="top" style="padding-top: 4px;
                                                                            border-right: solid 1px  #cccccc">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[历年考题]一级建造师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=15">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2090"
                                                                                                    title="2013年一级建造师建设工程管理与实务（建设工程）模拟习题3">2013年一级建造师建设工程管理与实务（建设工程...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2089"
                                                                                                    title="2013年一级建造师建设工程管理与实务（建设工程）模拟习题2">2013年一级建造师建设工程管理与实务（建设工程...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2088"
                                                                                                    title="2013年一级建造师建设工程管理与实务（建设工程）模拟习题1">2013年一级建造师建设工程管理与实务（建设工程...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2087"
                                                                                                    title="2013年一级建造师建设工程法规及相关知识模拟习题10">2013年一级建造师建设工程法规及相关知识模拟习...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2086"
                                                                                                    title="2013年一级建造师建设工程法规及相关知识模拟习题9">2013年一级建造师建设工程法规及相关知识模拟习...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2085"
                                                                                                    title="2013年一级建造师建设工程法规及相关知识模拟习题8">2013年一级建造师建设工程法规及相关知识模拟习...</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td width="50%" align="center" valign="top" style="padding-top: 4px;">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[历年考题]二级建造师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=16">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2392"
                                                                                                    title="施工管理二（1）">施工管理二（1）</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2391"
                                                                                                    title="施工管理一（9）">施工管理一（9）</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2390"
                                                                                                    title="施工管理一（8）">施工管理一（8）</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2389"
                                                                                                    title="施工管理一(7)">施工管理一(7)</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2388"
                                                                                                    title="施工管理一（6）">施工管理一（6）</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=2387"
                                                                                                    title="施工管理一（5）">施工管理一（5）</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <img height="10" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="50%" height="160" align="center" valign="top" style="padding-top: 4px;
                                                                            border-right: solid 1px  #cccccc">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[历年考题]造价工程师
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=17">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1749"
                                                                                                    title="2013年二级建造师管理与实务（公路工程）模拟习题八">2013年二级建造师管理与实务（公路工程）模拟习...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=1748"
                                                                                                    title="2013年二级建造师管理与实务（公路工程）模拟习题八">2013年二级建造师管理与实务（公路工程）模拟习...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=271"
                                                                                                    title="2009年度全国造价工程师执业资格考试试卷2">2009年度全国造价工程师执业资格考试试卷2</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=270"
                                                                                                    title="2009年度全国造价工程师执业资格考试试卷3">2009年度全国造价工程师执业资格考试试卷3</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=269"
                                                                                                    title="2009年造价工程师执业资格考试试题及答案4">2009年造价工程师执业资格考试试题及答案4</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=268"
                                                                                                    title="2008年度全国造价工程师执业资格考试试卷5">2008年度全国造价工程师执业资格考试试卷5</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                        <td width="50%" align="center" valign="top" style="padding-top: 4px;">
                                                                            <table width="310" border="0" cellpadding="0" cellspacing="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table class="tab_news" width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                            <tr>
                                                                                                <td height="24px" align="left" style="border-bottom: solid 1px #cccccc">
                                                                                                    <img src="images/wz_arrow.gif">[历年考题]快速学历
                                                                                                </td>
                                                                                                <td width="44" style="text-indent: 4px; border: solid 1px #cccccc">
                                                                                                    <a href="viewlist.aspx?cls=18">更多>></a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <div class="n3">
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=276"
                                                                                                    title="06年安全工程师考试真题及答案—《安全生产事故案例分析》">06年安全工程师考试真题及答案—《安全生产事故...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=275"
                                                                                                    title="2006年安全工程师试卷《安全生产法及相关法律知识》">2006年安全工程师试卷《安全生产法及相关法律知...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=274"
                                                                                                    title="2006年安全工程师考试试卷《安全生产管理知识》">2006年安全工程师考试试卷《安全生产管理知识》</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=273"
                                                                                                    title="2005年注册安全工程师考试真题（安全生产事故案例分析）">2005年注册安全工程师考试真题（安全生产事故案...</a></li>
                                                                                            <li>
                                                                                                <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=272"
                                                                                                    title="2005年注册安全工程师考试真题及答案（安全生产管理知识）">2005年注册安全工程师考试真题及答案（安全生产...</a></li>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <img height="10" src="images/sp.gif">
                                                                        </td>
                                                                    </tr>
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
                        </td>
                        <td width="16" align="left">
                            <img width="16" src="images/sp.gif">
                        </td>
                        <!-- right -->
                        <td width="284" align="right" valign="top">
                            <div class="right_title" style="border-top: 5px solid #bc0000;">
                                <div class="r_son_img">
                                    <img src="images/arrow.gif" />
                                </div>
                                <div class="r_son_title">
                                    <b>代理展示</b></div>
                            </div>
                            <div class="right_con">
                            </div>
                            <div class="right_title">
                                <div class="r_son_img">
                                    <img src="images/arrow.gif" />
                                </div>
                                <div class="r_son_title">
                                    <b>代理展示</b></div>
                            </div>
                            <div class="right_con">
                            </div>
                            <div class="right_title">
                                <div class="r_son_img">
                                    <img src="images/arrow.gif" />
                                </div>
                                <div class="r_son_title">
                                    <b>报考指南</b></div>
                                <div class="r_son_more">
                                    <a href="#">更多>></a></div>
                            </div>
                            <div class="right_con">
                                <ul>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=289"
                                            title="一级建造师考前准备攻略">一级建造师考前准备攻略</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=288"
                                            title="一级建造师考试：进考场注意的问题">一级建造师考试：进考场注意的问题</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=287"
                                            title="大智慧专家：一级建造师考试的最佳复习计划">大智慧专家：一级建造师考试的最佳复习计划</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=286"
                                            title="2011一级建造师考试备考四大法则">2011一级建造师考试备考四大法则</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=285"
                                            title="2011年一级建造师备考如何制订学习计划">2011年一级建造师备考如何制订学习计划</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=284"
                                            title="一级建造师考试辅导：试题的背景材料">一级建造师考试辅导：试题的背景材料</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=283"
                                            title="一级建造师建筑实务考纲">一级建造师建筑实务考纲</a></li>
                                </ul>
                            </div>
                            <div class="right_title">
                                <div class="r_son_img">
                                    <img src="images/arrow.gif" />
                                </div>
                                <div class="r_son_title">
                                    <b>备考指南</b></div>
                                <div class="r_son_more">
                                    <a href="#">更多>></a></div>
                            </div>
                            <div class="right_con">
                                <ul>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=289"
                                            title="一级建造师考前准备攻略">一级建造师考前准备攻略</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=288"
                                            title="一级建造师考试：进考场注意的问题">一级建造师考试：进考场注意的问题</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=287"
                                            title="大智慧专家：一级建造师考试的最佳复习计划">大智慧专家：一级建造师考试的最佳复习计划</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=286"
                                            title="2011一级建造师考试备考四大法则">2011一级建造师考试备考四大法则</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=285"
                                            title="2011年一级建造师备考如何制订学习计划">2011年一级建造师备考如何制订学习计划</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=284"
                                            title="一级建造师考试辅导：试题的背景材料">一级建造师考试辅导：试题的背景材料</a></li>
                                    <li>
                                        <img src="images/arrow02.gif">&nbsp;<a target="_blank" href="viewnews.aspx?nid=283"
                                            title="一级建造师建筑实务考纲">一级建造师建筑实务考纲</a></li>
                                </ul>
                            </div>
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
                            <ul id="Links" runat="server">
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
                            <!--<table width="100%" border="0" cellpadding="0" cellspacing="0">
  
                                    <tr></tr>
                                    <tr>
                                        <td width="25%"><a href="http://WWW.JXJST.GOV.CN/">
                                            <img width="200" height="50" border="0" src="images/2014915163136.jpg"><br />
                                            江西省建设厅</a></td>
                                        <td width="25%"><a href="http://333">
                                            <img width="200" height="50" border="0" src="images/201111221379.jpg"><br />
                                            友情链接</a></td>
                                        <td width="25%"><a href="http://222">
                                            <img width="200" height="50" border="0" src="images/201111221379.jpg"><br />
                                            友情链接</a></td>
                                        <td width="25%"><a href="http://111">
                                            <img width="200" height="50" border="0" src="images/201111221379.jpg"><br />
                                            友情链接</a></td>
                                    </tr>
                                    <tr>
                                        <td width="25%"><a href="http://www.jxpta.com/news/4_317.html">
                                            <img width="200" height="50" border="0" src="images/lnk002.png"><br />
                                            2011年二级成绩查询</a></td>
                                        <td width="25%"><a href="http://baidu.com">
                                            <img width="200" height="50" border="0" src="images/201111221379.jpg"><br />
                                            友情链接</a></td>
                                        <td width="25%"><a href="http://www.jxpta.com/index.html">
                                            <img width="200" height="50" border="0" src="images/lnk001.png"><br />
                                            江西人事考试网</a></td>
                                  
                                </table>-->
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
            <td width="100%" height="60" align="center" valign="top">
                <table width="960" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="2" align="center" style="padding-left: 40px; font-size: 12px; color: #ac0000">
                            Copyright @ 2015 吉林长春弘晟教育培训学校 &nbsp;吉ICP备11007475号
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </td></tr></table>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#slider").easySlider({
                auto: true,
                continuous: true,
                speed: 500,       //滚动速度  
                pause: 10000       //滚动停留时间  
            });
        });
    </script>
    <!--<script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F248da5d4667c75e9d17decf7d533c13c' type='text/javascript'%3E%3C/script%3E"));
    </script>-->
    <!--<script type="text/javascript" src="http://lead.soperson.com/10012811/10013391.js"></script>-->
    <div id="banner_Left">
    </div>
    <div id="banner_right">
    </div>
    <script>

        window.onload = function () {
            _PageLoad();
        }
        window.onresize = function () {
            _PageLoad();
        }

        function _PageLoad() {
            $("#banner_Left").css("right", document.body.offsetWidth / 2 + 480);
            $("#banner_right").css("left", document.body.offsetWidth / 2 + 480);
        }
    </script>
    </form>
</body>
</html>
