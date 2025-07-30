using System;

namespace FruitImageViewer
{
    public partial class FruitViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Please select a fruit to view its image.";
            }
        }

        protected void lstFruits_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedImage = lstFruits.SelectedValue;
            imgFruit.ImageUrl = "~/Images/" + selectedImage;
            lblMessage.Text = "You selected: " + lstFruits.SelectedItem.Text;
        }
    }
}