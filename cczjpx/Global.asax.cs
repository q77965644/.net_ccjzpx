using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Text.RegularExpressions;
using System.Timers;

namespace cczjpx
{
    public class Global : System.Web.HttpApplication
    {

        void Application_Start(object sender, EventArgs e)
        {
            // 在应用程序启动时运行的代码
            //key();
            //bool time = true;
            //Times(time);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  在应用程序关闭时运行的代码

        }

        void Application_Error(object sender, EventArgs e)
        {
            // 在出现未处理的错误时运行的代码

        }

        void Session_Start(object sender, EventArgs e)
        {
            // 在新会话启动时运行的代码
            Session.Timeout = 200;
        }

        void Session_End(object sender, EventArgs e)
        {
            // 在会话结束时运行的代码。 
            // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
            // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer 
            // 或 SQLServer，则不会引发该事件。
        }

        void Application_BeginRequest(object sender, EventArgs e)
        {
                if (Regex.IsMatch(Request.Path, "(aspx|html|htm|ashx)$"))
                {
                    string dataParamsString = "";
                    if (Request.QueryString != null && Request.QueryString.Count > 0)
                    {
                        dataParamsString = Request.QueryString.ToString().ToLower();
                    }
                    if (Request.Form != null && Request.Form.Count > 0)
                    {
                        dataParamsString = Request.Form.ToString().ToLower();
                    }
                    if (!WebHelper.ValidateValue(dataParamsString))
                    {
                        //Logger.WriteErrorLog("IBasePage.cs", "参数中包含敏感字符！", dataParamsString);
                        ScriptHandler.AlertAndRedirect("参数中包含敏感字符，请仔细检查后再提交！", Request.CurrentExecutionFilePath);
                        //Response.Write("参数中包含敏感字符，请仔细检查后再提交！");
                        Response.End();
                    }
                }
            //}
        }

       
   
    }
}
