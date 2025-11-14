using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace WebApplication11
{
    public partial class _Default : Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM info", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string sql = "INSERT INTO info (Name, Password) VALUES (@Name, @Password)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            Clear();
            Response.Write("<script>alert('Record Inserted Successfully');</script>");
            LoadData();
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string sql = "SELECT * FROM info WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtName.Text = dr["Name"].ToString();
                    txtPassword.Text = dr["Password"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Record Not Found');</script>");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string sql = "UPDATE info SET Name=@Name, Password=@Password WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            Clear();
            Response.Write("<script>alert('Record Updated Successfully');</script>");
            LoadData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string sql = "DELETE FROM info WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", txtId.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            Clear();
            Response.Write("<script>alert('Record Deleted Successfully');</script>");
            LoadData();
        }

        private void Clear()
        {
            txtId.Text = "";
            txtName.Text = "";
            txtPassword.Text = "";
        }
    }
}