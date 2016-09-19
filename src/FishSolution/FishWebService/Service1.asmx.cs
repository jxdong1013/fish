using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;

namespace FishWebService
{
    /// <summary>
    /// Service1 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class Service1 : System.Web.Services.WebService
    {
        static object lockObject = new object();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string GetSequence(string keyName)
        {
            return string.Empty;
            lock (lockObject)
            {

                //FishBll.Bll.SequenceBll bll = new FishBll.Bll.SequenceBll();
                //return bll.GetSequence(keyName);
            }
        }
    }
}