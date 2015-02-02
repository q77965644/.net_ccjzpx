using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cczjpx
{
    public class gtype
    {

        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string typeName;

        public string TypeName
        {
            get { return typeName; }
            set { typeName = value; }
        }
        private string isDelete;

        public string IsDelete
        {
            get { return isDelete; }
            set { isDelete = value; }
        }
    }
}