using System;

public partial class CalendarDemo : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblResult.Text = "You selected: " + txtDate.Text;
    }
}