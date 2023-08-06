using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Team_Players_App
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=TINUS\SQLEXPRESS;Initial Catalog=TeamPlayers;Integrated Security=True");
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            i = 0;
            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM Admin WHERE username='"+Username.Text+"' AND password='"+Password.Text+"' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i == 1)
            {
                Response.Redirect("AdminSelection.aspx");

            } else
            {
                lblmessage.Text = "Invalid username or password entered";
            }

            connection.Close();
        }
    }
}