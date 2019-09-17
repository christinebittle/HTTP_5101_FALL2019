using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP_5101_FALL2019
{
    public partial class codebehind_lesson_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ptarget.InnerHtml = "I am still writing to you from the server, however, I'm tucked away in the codebehind!";
        }
    }
}