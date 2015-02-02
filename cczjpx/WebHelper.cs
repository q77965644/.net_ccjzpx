using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web;
using System.Collections.Specialized;
using System.Web.UI.WebControls;
//using Weixin.Library.Base;
//using Weixin.Library.Web.Handler;
//using Weixin.Library.Model;

namespace BookWeb
{
	public class WebHelper
	{
		/// <summary>
		/// 把外部链接地址转换成可用的链接地址 
		/// </summary>
		/// <example>
		/// http://xxx.com 和 ~/Admin/xxx.aspx 其余返回#号。
		/// </example>
		/// <param name="page"></param>
		/// <param name="url"></param>
		/// <returns></returns>
		public static string CheckUrl(Page page, string url)
		{
			if (url.Length > 1 && url.Substring(0, 1) == "~")
				return page.ResolveUrl(url);
			else if (url.Length > 7 && url.Substring(0, 7).ToLower() == @"http://")
				return url;
			else
				return "#";
		}

		// public static string[] SqlKeys = "exec|insert+|select+|delete+|update+|count|chr|mid|master+|truncate|char|declare|drop+|drop+table|creat+|creat+table".Split('|');
		// public static string[] SqlKeys_2 = "exec+|insert|insert+|delete+|update+|count(|count+|chr+|+mid(|+mid+|+master+|truncate+|char+|+char(|declare+|drop+|creat+|drop+table|creat+table".Split('|');
		public readonly static string SqlKeysRegexString = "=[^=&]*(exec|insert|select|delete|update|count|chr|mid|master|truncate|char|declare|drop|creat|with)([ \\+\\(\\*]|(%20))[^&=]*(&|$)";

		public static bool ValidateValue(string dataParamsString)
		{
			if (dataParamsString.Length > 2)
			{
				if (Regex.IsMatch(dataParamsString, WebHelper.SqlKeysRegexString))
				{
					return false;
				}
			}
			return true;
		}
		
		public static void CheckValue(Page page)
		{
			ControlCollection Controls = page.Form == null ? page.Controls : page.Form.Controls;
			foreach (Control control in Controls)
			{
				Type controlType = control.GetType();
				switch (controlType.ToString())
				{
					case "System.Web.UI.WebControls.TextBox":
						TextBox controlTextBoxObj = (TextBox)control;
						controlTextBoxObj.Text = StringHelper.ReplaceKeyword(controlTextBoxObj.Text);
						break;
					case "System.Web.UI.WebControls.Label":
						//Label controlLabelObj = (Label)control;
						//controlLabelObj.Text = StringHelper.ReplaceKeyword(controlLabelObj.Text);
						break;
					case "System.Web.UI.WebControls.HiddenField":
						//HiddenField controlHiddenFieldObj = (HiddenField)control;
						//controlHiddenFieldObj.Value = StringHelper.ReplaceKeyword(controlHiddenFieldObj.Value);
						break;
					case "System.Web.UI.WebControls.DropDownList":
						//DropDownList controlDropDownListObj = (DropDownList)control;
						//controlTextBoxObj.Text = StringHelper.ReplaceKeyword(controlTextBoxObj.Text);
						break;
					default:
						break;
				}
			}
		}
		
		public static void UnCheckValue(Page page)
		{
			ControlCollection Controls = page.Form == null ? page.Controls : page.Form.Controls;
			foreach (Control control in Controls)
			{
				Type controlType = control.GetType();
				switch (controlType.ToString())
				{
					case "System.Web.UI.WebControls.TextBox":
						TextBox controlTextBoxObj = (TextBox)control;
						controlTextBoxObj.Text = StringHelper.UnReplaceKeyword(controlTextBoxObj.Text);
						break;
					case "System.Web.UI.WebControls.Label":
						//Label controlLabelObj = (Label)control;
						//controlLabelObj.Text = StringHelper.UnReplaceKeyword(controlLabelObj.Text);
						break;
					case "System.Web.UI.WebControls.HiddenField":
						//HiddenField controlHiddenFieldObj = (HiddenField)control;
						//controlHiddenFieldObj.Value = StringHelper.UnReplaceKeyword(controlHiddenFieldObj.Value);
						break;
					case "System.Web.UI.WebControls.DropDownList":
						//DropDownList controlDropDownListObj = (DropDownList)control;
						//controlTextBoxObj.Text = StringHelper.UnReplaceKeyword(controlTextBoxObj.Text);
						break;
					default:
						break;
				}
			}
		}

		/// <summary>
		/// 将文本框的值转换为数字类型，值不等于0时返回 true ，否则返回 false 。
		/// </summary>
		/// <param name="textBox">文本框 <seealso cref="System.Web.UI.WebControls.TextBox"/>。</param>
		/// <param name="message">错误提示信息 <seealso cref="System.String"/>。</param>
		/// <param name="value">输出转换后的值 <seealso cref="System.Decimal"/>。</param>
		/// <returns>验证结果 <seealso cref="System.Boolean"/>。</returns>
		public static bool ConvertToDecimal(TextBox textBox, string message, out decimal value)
		{
			if (!Decimal.TryParse(textBox.Text, out value))
			{
				ScriptHandler.Alert(HttpContext.Current.Response, message);
				textBox.Focus();
				HttpContext.Current.Response.Flush();
				return false;
			}
			return value != 0;
		}
	}
}
