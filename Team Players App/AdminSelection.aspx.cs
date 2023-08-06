using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_Players_App
{
    public partial class AdminSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Teams_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminTeamsCreation.aspx");
        }

        protected void Player_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPlayerView.aspx");
        }
    }
}