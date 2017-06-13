using System;
using System.Data;
using System.Data.SqlClient;

namespace PizzaDelivery.Home
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-I6O9RHK\SQLEXPRESS;Initial Catalog=PizzaDeliveryDb;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            using (var objConnection = new SqlConnection(connectionString))
            {
                objConnection.Open();
                var objCommand = new SqlCommand();
                objCommand.Connection = objConnection;
                objCommand.CommandText = "insert into tbl_users values('" + txtFirstName.Text + "','" + txtLastName.Text + "','"
                                                                           + txtEmail.Text + "','" + txtPassword.Text + "','"
                                                                          + txtMobileNo.Text + "','" + txtCity.Text + "',getdate())";
                objCommand.ExecuteNonQuery();
              
                Response.Redirect("UserSignIn.aspx");
            }

        }

        private DataSet FetchData()
        {
            using (var objConnection = new SqlConnection(connectionString))
            {
                objConnection.Open();
                var objCommand = new SqlCommand("select * from tbl_users", objConnection);
                var objDataSet = new DataSet();
                var objAdapter = new SqlDataAdapter(objCommand);
                objAdapter.Fill(objDataSet);

                return objDataSet;
            }

        }
    }
}