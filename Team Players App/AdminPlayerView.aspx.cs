using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_Players_App
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=TINUS\SQLEXPRESS;Initial Catalog=TeamPlayers;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            connection.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            display_data();
        }

        public void display_data()
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM dbo.Players WHERE TeamSelection='" + TeamSelection.Text + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

    }
}