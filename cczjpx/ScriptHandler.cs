using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace cczjpx
{
	// 注：使用 ScriptManager 要添加对 System.Web.Extensions 的引用。
	public class ScriptHandler
	{
		/// <summary>
		/// 弹出消息盒子
		/// </summary>
		/// <param name="page">当前页面 <seealso cref="System.Web.IO.Page"/>。</param>
		/// <param name="str"></param>
		public static void MessageBox(Page page, String str)
		{
			ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString(), "alert('" + str + "');", true);
		}

		/// <summary>
		/// 弹出 JavaScript 消息窗口。
		/// </summary>
		/// <param name="page">当前页面 <seealso cref="System.Web.IO.Page"/>。</param>        
		/// <param name="message">窗口信息</param>
		public static void Alert(Page page, string message)
		{
			string js = @"<script type='text/javascript' language='javascript'>alert('" + message + "');</script>";
			string scriptBlockName = Convert.ToString(Guid.NewGuid());
			if (!page.ClientScript.IsStartupScriptRegistered(scriptBlockName))
			{
				page.ClientScript.RegisterStartupScript(page.GetType(), scriptBlockName, js);
			}
		}
		
		/// <summary>
		/// 弹出 JavaScript 消息窗口。
		/// </summary>
		/// <param name="page">当前页面 <seealso cref="System.Web.IO.Page"/>。</param>        
		/// <param name="message">窗口信息</param>
		public static void Alert(HttpResponse response, string message)
		{
			string js = @"<script type='text/javascript' language='javascript'>alert('" + message + "');</script>";
			response.Write(js);
		}

		/// <summary>
		/// 弹出 JavaScript 消息窗口。
		/// </summary>
		/// <param name="message">窗口信息</param>
		public static void Alert(string message)
		{
			string js = @"<script type='text/javascript' language='javascript'>alert('{0}');</script>";
			HttpContext.Current.Response.Write(string.Format(js, message));
		}

		/// <summary>
		/// 弹出消息框并且转向到新的 URL。
		/// </summary>
		/// <param name="message">消息内容 <seealso cref="System.String"/>。</param>
		/// <param name="toURL">重定向 URL 地址 <seealso cref="System.String"/>。</param>
		public static void AlertAndRedirect(string message, string toURL)
		{
			string js = "<script type='text/javascript' language='javascript'>alert('{0}');window.location.replace('{1}');</script>";
			HttpContext.Current.Response.Write(string.Format(js, message, toURL));
		}

		/// <summary>
		/// 弹出消息框并且整页转向到新的 URL。
		/// </summary>
		/// <param name="message">消息内容 <seealso cref="System.String"/>。</param>
		/// <param name="toURL">重定向 URL 地址 <seealso cref="System.String"/>。</param>
		public static void AlertAndRedirectTop(string message, string toURL)
		{
			string js = "<script type='text/javascript' language='javascript'>alert('{0}');window.top.location.href='{1}';</script>";
			HttpContext.Current.Response.Write(string.Format(js, message, toURL));
		}

		/// <summary>
		/// 回发重定向脚本。
		/// </summary>
		/// <param name="toURL">重定向 URL 地址 <seealso cref="System.String"/>。</param>
		/// <param name="target">重定向目标框架 <seealso cref="System.String"/>。</param>
		public static void Redirect(string toURL, string target)
		{
			string js = "<script type='text/javascript' language='javascript'>window.parent.frames.location.href='{1}')</script>";
			HttpContext.Current.Response.Write(string.Format(js, toURL));
		}

		/// <summary>
		/// 回到历史页面
		/// </summary>
		/// <param name="value">-1/1</param>
		public static void GoHistory(int value)
		{
			string js = @"<script type='text/javascript' language='javascript'>history.go({0});</script>";
			HttpContext.Current.Response.Write(string.Format(js, value));
		}

		/// <summary>
		/// 关闭当前窗口
		/// </summary>
		public static void CloseWindow()
		{
			string js = @"<script type='text/javascript' language='javascript'>parent.opener=null;window.close();</script>";
			HttpContext.Current.Response.Write(js);
			HttpContext.Current.Response.End();
		}

		/// <summary>
		/// 刷新父窗口。
		/// </summary>
		public static void RefreshParent(string url)
		{
			string js = @"<Script language='JavaScript'>window.opener.location.href='" + url + "';window.close();</Script>";
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 刷新打开的窗口。
		/// </summary>
		public static void RefreshOpener()
		{
			string js = @"<Script language='JavaScript'>opener.location.reload();</Script>";
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 打开窗口。
		/// </summary>
		/// <param name="url">地址 <seealso cref="System.String"/>。</param>
		public static void OpenWebForm(string url)
		{
			string js = @"<Script language='JavaScript'>window.open('" + url + @"');</Script>";
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 打开全屏窗口。
		/// </summary>
		/// <param name="page">当前页面 <seealso cref="System.Web.UI.Page"/>。</param>
		/// <param name="url">地址 <seealso cref="System.String"/>。</param>
		public static void OpenWebFormFull(Page page, string url)
		{
			string js = @"<Script language='JavaScript'>window.open('" + url + @"','_blank','fullscreen,scrollbars');</Script>";
			string scriptBlockName = Convert.ToString(Guid.NewGuid());
			if (!page.ClientScript.IsStartupScriptRegistered(scriptBlockName))
			{
				page.ClientScript.RegisterStartupScript(page.GetType(), scriptBlockName, js);
			}
		}

		/// <summary>
		/// 打开指定大小的新窗体。
		/// </summary>
		/// <param name="url">地址 <seealso cref="System.String"/>。</param>
		/// <param name="width">宽 <seealso cref="System.Int32"/>。</param>
		/// <param name="heigth">高 <seealso cref="System.Int32"/>。</param>
		/// <param name="top">距离上边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="left">距离左边位置 <seealso cref="System.Int32"/>。</param>
		public static void OpenWebFormSize(string url, int width, int heigth, int top, int left)
		{
			string js = @"<Script language='JavaScript'>window.open('" + url + @"','','height=" + heigth + ",width=" + width + ",top=" + top + ",left=" + left + ",location=no,menubar=no,resizable=yes,scrollbars=yes,status=yes,titlebar=no,toolbar=no,directories=no');</Script>";
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 转向Url制定的页面。
		/// </summary>
		/// <param name="url">连接地址</param>
		public static void JavaScriptLocationHref(string url)
		{
			string js = @"<Script language='JavaScript'>window.location.replace('{0}');</Script>";
			js = string.Format(js, url);
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 页面重定向。
		/// </summary>
		public static void Redirect(Page page, String url)
		{
			string js = " window.location.replace('" + url + "');";
			ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString(), js, true);

		}

		/// <summary>
		/// 页面跳转。
		/// </summary>
		/// <param name="url">连接地址 <seealso cref="System.String"/>。</param>
		public static void JsGotoUrl(string url)
		{
			string js = @"<Script language='JavaScript'>window.location = '{0}';</Script>";
			js = string.Format(js, url);
			HttpContext.Current.Response.Write(js);
		}

		/// <summary>
		/// 打开指定大小位置的模式对话框。
		/// </summary>
		/// <param name="webFormUrl">连接地址 <seealso cref="System.String"/>。</param>
		/// <param name="width">宽 <seealso cref="System.Int32"/>。</param>
		/// <param name="heigth">高 <seealso cref="System.Int32"/>。</param>
		/// <param name="top">距离上边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="left">距离左边位置 <seealso cref="System.Int32"/>。</param>
		public static void ShowModalDialogWindow(string webFormUrl, int width, int height, int top, int left)
		{
			string features = "dialogWidth:" + width.ToString() + "px;" +
				"dialogHeight:" + height.ToString() + "px;" +
				"dialogLeft:" + left.ToString() + "px;" +
				"dialogTop:" + top.ToString() + "px;" +
				"center:yes;help=no;resizable:no;status:no;scroll=yes";
			ShowModalDialogWindow(webFormUrl, features);
		}

		/// <summary>
		/// 打开指定大小位置的模式窗口。
		/// </summary>
		/// <param name="webFormUrl">连接地址 <seealso cref="System.String"/>。</param>
		/// <param name="width">宽 <seealso cref="System.Int32"/>。</param>
		/// <param name="heigth">高 <seealso cref="System.Int32"/>。</param>
		/// <param name="top">距离上边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="left">距离左边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="currPage">当前 web 页对象 <seealso cref="System.Web.UI.Page"/>。</param>
		public static void ShowModalPage(string webFormUrl, int width, int height, int top, int left, Page currPage)
		{
			string features = "dialogWidth:" + width.ToString() + "px;" +
			   "dialogHeight:" + height.ToString() + "px;" +
			   "dialogLeft:" + left.ToString() + "px;" +
			   "dialogTop:" + top.ToString() + "px;" +
			   "center:yes;help=no;resizable:no;status:no;scroll=no";
			ShowModalDialogPage(webFormUrl, features, currPage);
		}

		/// <summary>
		/// 弹出一个模态对话框，关闭后刷新父窗口。
		/// </summary>
		/// <param name="webFormUrl">连接地址 <seealso cref="System.String"/>。</param>
		/// <param name="width">宽 <seealso cref="System.Int32"/>。</param>
		/// <param name="heigth">高 <seealso cref="System.Int32"/>。</param>
		/// <param name="top">距离上边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="left">距离左边位置 <seealso cref="System.Int32"/>。</param>
		/// <param name="currPage">当前 web 页对象 <seealso cref="System.Web.UI.Page"/>。</param>
		public static void ShowModalRefreshParentPage(string webFormUrl, int width, int height, int top, int left, Page currPage)
		{
			string features = "dialogWidth:" + width.ToString() + "px;" +
			   "dialogHeight:" + height.ToString() + "px;" +
			   "dialogLeft:" + left.ToString() + "px;" +
			   "dialogTop:" + top.ToString() + "px;" +
			   "center:yes;help=no;resizable:no;status:no;scroll=no";
			string js = @"window.showModalDialog('" + webFormUrl + "','" + features + "');" + "window.location.href = window.location.href";
			currPage.ClientScript.RegisterStartupScript(currPage.GetType(), "", js, true);
		}

		/// <summary>
		/// 打开指定大小位置的模式对话框。
		/// </summary>
		/// <param name="webFormUrl">连接地址 <seealso cref="System.String"/>。</param>
		/// <param name="features">对话框特征 <seealso cref="System.String"/>。</param>
		public static void ShowModalDialogWindow(string webFormUrl, string features)
		{
			string js = ShowModalDialogJavascript(webFormUrl, features);
			HttpContext.Current.Response.Write(js);
		}

		public static void ShowModalDialogPage(string webFormUrl, string features, Page curPage)
		{
			string js = ShowModalDialogJavascript(webFormUrl, features);
			curPage.ClientScript.RegisterStartupScript(curPage.GetType(), Guid.NewGuid().ToString(), js);
		}

		public static string ShowModalDialogJavascript(string webFormUrl, string features)
		{
			string js = @"<script language=javascript>showModalDialog('" + webFormUrl + "',window,'" + features + "');</script>";
			// (url,window,"dialogHeight=350px;dialogWidth=400px;center=yes;status=no;scroll=no;resizable=yes");
			return js;
		}

		/// <summary>
		/// 设置页面焦点
		/// </summary>
		/// <param name="Ctrl">控件ID</param>
		public static void SetEnterControl(System.Web.UI.Control Ctrl)
		{
			Page mPage = Ctrl.Page;
			string mScript;
			mScript = @"<script language=""javascript"">
                function document.onkeydown() {
					var k = event.keyCode;
					if (k == 13) {
						document.all." + Ctrl.ClientID + @".click();
						event.cancelBubble = true;
						event.returnValue = false;
					}
                }
                </script>";
			if (!mPage.ClientScript.IsClientScriptBlockRegistered("SetEnterControl"))
			{
				mPage.ClientScript.RegisterClientScriptBlock(mPage.GetType(), "SetEnterControl", mScript);
			}
		}
	}
}
