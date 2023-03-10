using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Prac9_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [banks](Bank,Customer,AccNo,BranchName,City,State,Zip) values('" + bank.Text + "', '" + customer.Text + "', '" + accno.Text + "','" + branch.Text + "','" + city.Text + "' ,'" + state.Text + "' ,'" + zip.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Inserted";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string del = "Delete from banks where Accno = '" + TextBox.Text + "'";
            SqlCommand com = new SqlCommand(del, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label2.Text = "Deleted";
        }
    }
}
