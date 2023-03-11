using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac10_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page previous_page = Page.PreviousPage;
            if (previous_page != null && previous_page.IsCrossPagePostBack)
            {
               Label3.Text = ((Label)previous_page.FindControl("Label3")).Text;
            }
            else
            {
                Label3.Text = "Error!";
            }
        }
    }
}
