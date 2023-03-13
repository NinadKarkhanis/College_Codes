using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prac9_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            string ins = "Insert into [Table] values ('" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + TextBox3.Text  + "','" + Calendar1.SelectedDate.ToString() + "')";
            SqlCommand obj = new SqlCommand(ins, con);
            con.Open();
            int i = obj.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                Response.Write("Inserted");
                // Response.Redirect("~/WebForm2.aspx");
            }
            else
            {
                Response.Write("Failed");
            }
        }
       

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");

            string del = "delete from [Table] where First_Name = '" + TextBox1.Text + "'";
            SqlCommand obj = new SqlCommand(del, con);
            con.Open();
            int i = obj.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                Response.Write("Deleted");
                // Response.Redirect("~/WebForm2.aspx");
            }
            else
            {
                Response.Write("Failed");
            }
            // Response.Redirect("~/WebForm2.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");


            string res = "TRUNCATE TABLE [Table];";
            SqlCommand obj = new SqlCommand(res, con);
            con.Open();
            int i = obj.ExecuteNonQuery();
            con.Close();
            

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox3.Text = string.Empty;
            Calendar1.SelectedDate = DateTime.Now;
        }
    }
}
