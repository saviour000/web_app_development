protected void cvUsername_ServerValidate(object source, ServerValidateEventArgs args)
{
    if (args.Value.Length >= 5)
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }
}

protected void btnSubmit_Click(object sender, EventArgs e)
{
    if (Page.IsValid)
    {
        Response.Write("Validation Successful! Username: " + txtUsername.Text);
    }
}