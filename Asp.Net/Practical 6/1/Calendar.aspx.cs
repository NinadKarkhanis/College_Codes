using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac6_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Day == 5 && e.Day.Date.Month == 9)
            {
                e.Cell.BackColor = System.Drawing.Color.Yellow;
                Label lbl = new Label();
                lbl.Text = "<br>Teachers Day";
                e.Cell.Controls.Add(lbl);
                Image img = new Image();
                img.ImageUrl = "teacher.jpg";
                img.Width = 20;
                img.Height = 20;
                e.Cell.Controls.Add(img);

            }

            if ((e.Day.Date >= new DateTime(2023, 11, 23)) && (e.Day.Date <= new DateTime(2023, 11, 30)))
            {
                Label lbl1 = new Label();
                lbl1.Text = "<br>Diwali";
                e.Cell.Controls.Add(lbl1);
                e.Cell.BackColor = System.Drawing.Color.Orange;
                e.Cell.BorderColor = System.Drawing.Color.Black;
                e.Cell.BorderWidth = new Unit(3);
            }

            Label1.Text = Calendar1.SelectedDate.ToString();
            Label2.Text = DateTime.Now.ToString();


            Label3.Text = (Calendar2.SelectedDate - Calendar1.SelectedDate).Days.ToString();
        }
    }
}
