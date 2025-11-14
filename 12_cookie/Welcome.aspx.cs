using System;

namespace CookieDemo
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null)
            {
                string userName = Request.Cookies["UserName"].Value;
                lblWelcome.Text = "Hello, " + userName + "! Welcome back.";
            }
            else
            {
                lblWelcome.Text = "Hello, Guest! (No cookie found)";
            }
        }
    }
}