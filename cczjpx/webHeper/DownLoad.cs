using System;
using System.Collections;
using System.Web;
using System.IO;
using System.Net;
using System.Configuration;

namespace BookWeb
{
    public class DownLoad
    {

        /// <summary>
        /// 下载文件
        /// </summary>
        /// <param name="fp"></param>
        public byte[] GetDown(string fp)
        {
            FileStream fileStream = new FileStream(fp, FileMode.Open);

            long fileSize = fileStream.Length;
            byte[] fileBuffer = new byte[fileSize];
            fileStream.Read(fileBuffer, 0, (int)fileSize);

            //如果不写fileStream.Close()语句，用户在下载过程中选择取消，将不能再次下载
            fileStream.Close();
            return fileBuffer;
        }
    }
}
