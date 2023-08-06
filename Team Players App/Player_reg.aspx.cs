using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Cache;
using Microsoft.Ajax.Utilities;

namespace Team_Players_App
{
    public partial class Player_reg : System.Web.UI.Page
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
            SqlCommand cmdIDCheck = connection.CreateCommand();
            cmdIDCheck.CommandType = CommandType.Text;
            cmdIDCheck.CommandText = "SELECT ID FROM dbo.Players WHERE ID = '" + Convert.ToInt64(ID.Text)+ "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmdIDCheck);
            adapter.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();
            if (dt.Rows.Count > 0)
            {
                lblmessage.Text = "This ID number has already been registered. Additional registrations are not possible.";
            }
            else { 

            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO dbo.Players Values ('" + FirstName.Text + "','" + LastName.Text + "','" + Age.Text + "','" + Address.Text + "','" + ID.Text + "','" + TeamSelection.Text + "'); SELECT CAST(scope_identity() AS int);";
            cmd.ExecuteNonQuery();

            FirstName.Text = "";
            LastName.Text = "";
            Age.Text = "";
            Address.Text = "";
            ID.Text = "";


            //if player = registered - return page "already registered. Additional registrations are not possible." 
            lblmessage.Text = "Inserted Successfully!";

            display_data();
            }
        }

        public void display_data()
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM dbo.Players";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();            
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE dbo.Players SET FirstName='"+ FirstName.Text +"', LastName='"+ LastName.Text +"', Age='"+ Age.Text +"', Address='"+ Address.Text+ "', ID='"+ Convert.ToInt64(ID.Text) + "', TeamSelection='" + TeamSelection.Text.ToString() + "' WHERE PlayerID =" + Convert.ToInt32(oldid.Text) + "";
            cmd.ExecuteNonQuery();

            FirstName.Text = "";
            LastName.Text = "";
            Age.Text = "";
            Address.Text = "";
            ID.Text = "";

            lblmessage.Text = "Updated Successfully!";

            display_data();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM dbo.Players WHERE PlayerID =" + Convert.ToInt32(oldid.Text) + "";
            cmd.ExecuteNonQuery();

            ID.Text = "";

            lblmessage.Text = "Deleted!";

            display_data();

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}