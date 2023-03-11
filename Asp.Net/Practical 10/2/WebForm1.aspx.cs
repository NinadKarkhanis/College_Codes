using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac10_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
                string a1 = "SELECT Distinct City from City";
                con.Open();
                
            SqlCommand obj = new SqlCommand(a1, con);
                SqlDataReader dr = obj.ExecuteReader();
                DL1.DataSource = dr;
                DL1.DataTextField = "City";
                DL1.DataBind();
                dr.Close();
                con.Close();
            }
        }
        protected void Display_Click(object sender, EventArgs e)
        {
            Label1.Text = "You selected " + DL1.SelectedValue;
        }
    }

}
