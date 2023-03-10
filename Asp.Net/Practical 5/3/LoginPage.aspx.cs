using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac5_3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String uname = "Nnk";
            String pass = "admin";


            if (TextBox1.Text == uname && TextBox2.Text == pass)
            {
                Response.Redirect("homepage.aspx");
            }
            if (TextBox1.Text != uname || TextBox2.Text != pass)
            {
                Response.Redirect("invalid.aspx");

            }
        }
    }
}
