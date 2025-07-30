using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin" && txtPassword.Text == "1234")
            {
                Session["User"] = txtUsername.Text;
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid login credentials.";
            }
        }

    }
}