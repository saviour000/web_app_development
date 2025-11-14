using System;
using System.Web;

namespace CookieDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null)
                {
                    txtName.Text = Request.Cookies["UserName"].Value;
                    lblMessage.Text = "Cookie loaded: " + txtName.Text;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserName");
            cookie.Value = txtName.Text;
            cookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(cookie);

            lblMessage.Text = "Cookie saved successfully!";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                lblMessage.Text = "Cookie deleted!";
                txtName.Text = "";
            }
        }
    }
}