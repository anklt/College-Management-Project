using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dashboardadmin : System.Web.UI.Page
    {
        // Connection string from Web.config
        string connString = ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();  // Load data when the page first loads
            }
        }

        // Method to load data into GridView (specifically from Students table)
        private void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Students", conn);  // Use Students table
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        // Add new student record
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Students (StudentName, Email, ContactNumber, EnrollmentDate) VALUES (@Name, @Email, @ContactNumber, @EnrollmentDate)", conn);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@ContactNumber", txtContact.Text);
                cmd.Parameters.AddWithValue("@EnrollmentDate", txtEnrollmentDate.Text);
                cmd.ExecuteNonQuery();
            }
            LoadData(); // Reload data after insertion
        }

        // GridView Edit Mode
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        // GridView Update Record
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string contactNumber = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string enrollmentDate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Students SET StudentName=@Name, Email=@Email, ContactNumber=@ContactNumber, EnrollmentDate=@EnrollmentDate WHERE StudentID=@StudentID", conn);
                cmd.Parameters.AddWithValue("@StudentID", studentId);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@ContactNumber", contactNumber);
                cmd.Parameters.AddWithValue("@EnrollmentDate", enrollmentDate);
                cmd.ExecuteNonQuery();
            }

            GridView1.EditIndex = -1;
            LoadData(); // Reload data after update
        }

        // Cancel Edit Mode
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
        }

        // GridView Delete Record
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int studentId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM Students WHERE StudentID=@StudentID", conn);
                cmd.Parameters.AddWithValue("@StudentID", studentId);
                cmd.ExecuteNonQuery();
            }

            LoadData(); // Reload data after deletion
        }
    }
}
