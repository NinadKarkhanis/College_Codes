using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac10_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = 0;
            int x = int.Parse(TextBox1.Text);
            int calc = 0;
            if (DropDownList1.SelectedValue == "apple")
            {
                y = 10;
                calc = x * y;

            }
            else if (DropDownList1.SelectedValue == "banana")
            {
                y = 5;
                calc = x * y;
            }
            else if (DropDownList1.SelectedValue == "orange")
            {
                y = 2;
                calc = x * y;
            }
            Label3.Text = calc.ToString();


        }

    }
}
