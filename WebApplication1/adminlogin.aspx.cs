using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class adminlogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblMessage.Text = "";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (ValidateUser(username, password))
            {
                // Redirect to admin dashboard or another page
                Response.Redirect("dashboardadmin.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }

        private bool ValidateUser(string username, string password)
        {
            // Replace with actual authentication logic
            // This is just a placeholder
            return username == "ankit" && password == "123";
        }
    }
}
