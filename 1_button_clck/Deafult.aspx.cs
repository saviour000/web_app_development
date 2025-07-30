using System;

namespace WelcomeApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnWelcome_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Welcome to the world of ASP.NET";
        }
    }
}