using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac5_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = TextBox1.Text;
            if (RadioButton1.Checked)
            {
                Label2.ForeColor = System.Drawing.Color.Blue;
            }
            if (RadioButton2.Checked)
            {
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            if (RadioButton3.Checked)
            {
                Label2.ForeColor = System.Drawing.Color.Green;
            }

            if (CheckBox1.Checked)
            {
                Label2.Font.Bold = true;
            }
            else
            {
                Label2.Font.Bold = false;
            }

            if (CheckBox2.Checked)
            {
                Label2.Font.Italic = true;
            }
            else
            {
                Label2.Font.Italic = false;
            }

            if (CheckBox3.Checked)
            {
                Label2.Font.Underline = true;
            }
            else
            {
                Label2.Font.Underline = false;
            }
        }
    }
}
