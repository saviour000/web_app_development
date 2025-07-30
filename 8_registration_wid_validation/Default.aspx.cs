protected void btnSubmit_Click(object sender, EventArgs e)
{
    string name = txtName.Text;
    string email = txtEmail.Text;
    string password = txtPassword.Text;

    Response.Write("Registration Successful!<br/>");
    Response.Write("Name: " + name + "<br/>");
    Response.Write("Email: " + email + "<br/>");
}