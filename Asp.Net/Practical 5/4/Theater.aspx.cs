using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac5_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Inox");
            DropDownList1.Items.Add("Pvr");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Cinepolis");
            DropDownList1.Items.Add("Miraj Cinemas");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedValue == "Inox")
            {
                Label2.Text = "Movie Playing in Inox : RRR";
            }
            else if (DropDownList1.SelectedValue == "Pvr")
            {
                Label2.Text = "Movie Playing in PVR : Avatar";
            }
            else if (DropDownList1.SelectedValue == "Cinepolis")
            {
                Label2.Text = "Movie Playing in Cinepolis : Jujutsu Kaisen";
            }
            else if (DropDownList1.SelectedValue == "Miraj Cinemas")
            {
                Label2.Text = "Movie Playing in Miraj Cinemas : Batman";
            }
        }

    }
}
