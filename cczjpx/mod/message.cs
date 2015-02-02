using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cczjpx
{
    public class message
    {
        private string id;

        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }
        private string content;

        public string Content
        {
            get { return content; }
            set { content = value; }
        }
        private string type;

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        private string isDelete;

        public string IsDelete
        {
            get { return isDelete; }
            set { isDelete = value; }
        }
        private string dateTime;

        public string DateTime
        {
            get { return dateTime; }
            set { dateTime = value; }
        }

        private string top;

        public string Top
        {
            get { return top; }
            set { top = value; }
        }
    
    }
}