using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestWcfBytes
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = new ServiceReference1.Service1Client().GetName( System.Text.Encoding.ASCII.GetBytes(@"abcddsfsdfsdfsdsfdfsdf

"), new byte[] { 1 });
            Console.Write(result);
        }
    }
}
