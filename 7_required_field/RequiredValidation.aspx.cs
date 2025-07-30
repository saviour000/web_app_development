protected void btnSubmit_Click(object sender, EventArgs e)
{
    if (Page.IsValid)
    {
        lblMessage.Text = "Hello, " + txtName.Text + "!";
    }
}