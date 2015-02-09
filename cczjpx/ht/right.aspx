<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="right.aspx.cs" Inherits="IntegrationPlatform_WebApp.NewPage.right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/place.css" />
	<link rel="stylesheet" href="css/Basics.css" />

	<link rel="stylesheet" href="css/style.css" />

    <script type="text/javascript">
<!--
        function iframeAutoFit() {
            try {
                if (window != parent) {
                    var a = parent.document.getElementsByTagName("IFRAME");
                    for (var i = 0; i < a.length; i++) {
                        if (a[i].contentWindow == window) {
                            var h1 = 0, h2 = 0, d = document, dd = d.documentElement;
                            a[i].parentNode.style.height = a[i].offsetHeight + "px";
                            a[i].style.height = "10px";
                            if (dd && dd.scrollHeight) {
                                h1 = dd.scrollHeight;
                            }
                            if (d.body) {
                                h2 = d.body.scrollHeight;
                            }
                            var h = Math.max(h1, h2);
                            if (document.all) {
                                h += 4;
                            }
                            if (window.opera) {
                                h += 1;
                            }
                            a[i].style.height = a[i].parentNode.style.height = h + "px";
                        }
                    }
                }
            } catch (ex) { }
        }

        if (window.attachEvent) {
            window.attachEvent("onload", iframeAutoFit);
        } else if (window.addEventListener) {
            window.addEventListener("load", iframeAutoFit, false);
        }

        function MM_jumpMenu(targ, selObj, restore) { //v3.0
            eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
            if (restore) selObj.selectedIndex = 0;
        }
//-->
</script>


</head>
<body>

	<div class="secr" style="background: #3e5c9a">
		<div class="clear"></div>
		<div class="right_01">
			<h3 class="right_01h">
				<img src="images/righticon.png" width="10" height="10" alt="" /><span></span></h3>
			<ul class="right_ul" id="menu">
			
						<li>
							<img src="images/righticon.png" width="10" height="10" alt="" /><span><a onclick="window.parent.parent.parent.left.location='gType/list.aspx';">信息类别管理</a></span>
                            </li>		

                		<li>
							<img src="images/righticon.png" width="10" height="10" alt="" /><span><a onclick="window.parent.parent.parent.left.location='message/list.aspx';">信息管理</a></span>
                            </li>	
			</ul>

		</div>
		<div class="clear"></div>
		<%--<img src="images/r_down.png" width="255" height="86" alt="" class="r_down" />--%>
		<div class="clear"></div>
	</div>
</body>
</html>
