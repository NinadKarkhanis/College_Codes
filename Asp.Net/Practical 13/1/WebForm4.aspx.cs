using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac13_1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Label2.Text = Session["name"].ToString();
            }

            if (Session["book"] != null)
            {
                Label3.Text = Session["book"].ToString();
            }

            if (Session["player"] != null)
            {
                Label4.Text = Session["player"].ToString();
            }
        }
    }
}
