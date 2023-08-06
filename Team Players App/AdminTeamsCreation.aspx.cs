using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Team_Players_App
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=TINUS\SQLEXPRESS;Initial Catalog=TeamPlayers;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            connection.Open();

            display_data();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO dbo.Teams Values ('" + Name.Text + "','" + CreatedDate.Text + "','" + IsActive.Text + "'); SELECT CAST(scope_identity() AS int);";
            cmd.ExecuteNonQuery();

            Name.Text = "";
            CreatedDate.Text = "";
            IsActive.Text = "";

            //if player = registered - return page "already registered. Additional registrations are not possible." 
            lblmessage.Text = "Inserted Successfully!";

            display_data();
        }

        public void display_data()
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM dbo.Teams";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            gvTeams.DataSource = dt;
            gvTeams.DataBind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE dbo.Teams SET Name='" + Name.Text + "', CreatedDate='" + CreatedDate.Text + "', IsActive='" + IsActive.Text + "' WHERE TeamID =" + Convert.ToInt32(oldid.Text) + "";
            cmd.ExecuteNonQuery();

            Name.Text = "";
            CreatedDate.Text = "";
            IsActive.Text = "";

            lblmessage.Text = "Updated Successfully!";

            display_data();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM dbo.Teams where Name = '" + Name.Text + "'";
            cmd.ExecuteNonQuery();

            Name.Text = "";

            lblmessage.Text = "Deleted!";

            display_data();

        }
    }
}