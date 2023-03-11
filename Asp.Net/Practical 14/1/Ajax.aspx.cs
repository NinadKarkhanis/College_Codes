using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac14_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            con.Open();
            String str = "select * from [Table]";
            SqlCommand com = new SqlCommand(str, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text += dr[1].ToString() + "<br>";

            }
            dr.Close();
            con.Close();

        }

    }
}
