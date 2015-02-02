<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="IntegrationPlatform_WebApp.NewPage.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<title></title>
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/place.css" />
	<link rel="stylesheet" href="css/Basics.css" />

	<link rel="stylesheet" href="css/style.css" />

</head>
<body style="margin: 0px; padding: 0px;">
	<iframe src="head.aspx" style="width: 100%; height: 45px" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"></iframe>
	<div id="seccon">
		<div class="secshadow"></div>
		<div class="secr"   style="background: #3e5c9a">
			<iframe id="right" name="right" src="right.aspx" style="width: 255px; margin: 0px; padding: 0px; min-height: 800px; background: none; float: right;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"></iframe>
		</div>
		<div class="secl">
			<div class="crumbs breadCrumb">
				您当前的位置：首页 <span>>> </span>
					<span id="currentNav"></span>
			</div>
			<div class="list0">
				<iframe id="left" name="left" src="../Anysis/Alert.html" style="width: 100%; min-height: 750px" marginwidth="0" marginheight="0"  frameborder="0" onload='IFrameReSize("left");IFrameReSizeWidth("mainFrame");'></iframe>
<%--				<iframe src="Main.htm" scrolling="no" frameborder="0" height="100%" id="mainFrame" width="100%" onload='IFrameReSize("mainFrame");IFrameReSizeWidth("mainFrame");'></iframe>--%>
			</div>
		</div>
	</div>
	<div style="margin: 0px; width: 100%">
		<iframe src="foot.aspx" style="height: 85px; width: 100%; margin: 0px; padding: 0px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"></iframe>
	</div>
</body>
</html>
