using System;
namespace GenderApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnShowGender_Click(object sender, EventArgs e)
        {
            if (rbMale.Checked)
                lblGender.Text = "Selected Gender: Male";
            else if (rbFemale.Checked)
                lblGender.Text = "Selected Gender: Female";
            else
                lblGender.Text = "Please select a gender.";
        }
    }
}