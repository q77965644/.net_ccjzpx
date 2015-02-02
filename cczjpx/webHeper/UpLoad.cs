using System;
using System.Collections;
using System.Web;
using System.IO;
using System.Net;
using System.Configuration;

namespace BookWeb
{
    public class UpLoad
    {
        /// <summary>
        /// 文件上传方法
        /// </summary>
        /// <param name="postedFile">文件流</param>
        /// <param name="_isReOriginal">是否返回文件原名称</param>
        /// <returns>服务器文件路径</returns>
        public string fileSaveAs(HttpPostedFile postedFile, bool _isReOriginal)
        {
            try
            {
                string fileExt = Utils.GetFileExt(postedFile.FileName); //文件扩展名，不含“.”
                string originalFileName = postedFile.FileName.Substring(postedFile.FileName.LastIndexOf(@"\") + 1); //取得文件原名
                string fileName = Utils.GetRamCode() + "." + fileExt; //随机文件名
                string dirPath = GetUpLoadPath(); //上传目录相对路径
                int FileSize = postedFile.ContentLength / 1024;
                //检查文件扩展名是否合法
                if (!CheckFileExt(fileExt))
                {
                    return "{\"msg\": 0, \"msgbox\": \"不允许上传" + fileExt + "类型的文件！\"}";
                }

                //检查文件大小是否合法
                //if (!CheckFileSize(fileExt, postedFile.ContentLength))
                //{
                //    return "{\"msg\": 0, \"msgbox\": \"文件超过限制的大小啦！\"}";
                //}
                //获得要保存的文件路径
                string serverFileName = dirPath + fileName;
                string returnFileName = serverFileName;
                //物理完整路径                    
                string toFileFullPath = Utils.GetMapPath(dirPath);
                //检查有该路径是否就创建
                if (!Directory.Exists(toFileFullPath))
                {
                    Directory.CreateDirectory(toFileFullPath);
                }
                //保存文件
                postedFile.SaveAs(toFileFullPath + fileName);

                //如果需要返回原文件名
                if (_isReOriginal)
                {
                    return "{\"msg\": 1, \"msgbox\": \"" + serverFileName + "\", \"msSize\":\"" + FileSize + "\", \"mstitle\": \"" + originalFileName + "\"}";
                }
                return "{\"msg\": 1, \"msgSize\":\"" + FileSize + "\",\"msgbox\": \"" + returnFileName + "\"}";
            }
            catch
            {
                return "{\"msg\": 0, \"msgbox\": \"上传过程中发生意外错误！\"}";
            }
        }


        #region 返回上传目录相对路径
        /// <summary>
        /// 返回上传目录相对路径
        /// </summary>
        /// <param name="fileName">上传文件名</param>
        private string GetUpLoadPath()
        {
            return "../upload/" + DateTime.Now.ToString("yyyyMM") + "/" + DateTime.Now.ToString("dd") + "/";
        }
        #endregion

        #region 检查是否为合法的上传文件
        /// <summary>
        /// 检查是否为合法的上传文件
        /// </summary>
        private bool CheckFileExt(string _fileExt)
        {
            //检查危险文件
            string[] excExt = { "asp", "aspx", "php", "jsp", "htm", "html" };
            for (int i = 0; i < excExt.Length; i++)
            {
                if (excExt[i].ToLower() == _fileExt.ToLower())
                {
                    return false;
                }
            }
            return true;
        }
        #endregion

        /// <summary>
        /// 获取指定文件的MD5码
        /// </summary>
        /// <param name="FilePath">文件路径</param>
        /// <returns>string</returns>
        private string GetMd5(string FilePath)
        {
            byte[] data = File.ReadAllBytes(FilePath);
            System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] result = md5.ComputeHash(data);
            string Md5str = BitConverter.ToString(result).Replace("-", "");
            return Md5str;
        }
    }
}
