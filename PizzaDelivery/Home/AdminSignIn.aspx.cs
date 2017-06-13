using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace PizzaDelivery.Home
{
    public partial class AdminSignIn : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-I6O9RHK\SQLEXPRESS;Initial Catalog=PizzaDeliveryDb;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnSignIn_Click1(object sender, EventArgs e)
        {
            using (var objConnection = new SqlConnection(connectionString))
            {
                objConnection.Open();
                var objCommand = new SqlCommand("select * from tbl_users", objConnection);
                var objDataSet = new DataSet();
                var objAdapter = new SqlDataAdapter(objCommand);
                objAdapter.Fill(objDataSet);

                if (objDataSet.Tables.Count != 0)
                {
                    if (txtUserName.Text == objDataSet.Tables[0].Rows[0]["Email"].ToString() && txtPassword.Text == objDataSet.Tables[0].Rows[0]["Password"].ToString())
                    {
                        Response.Redirect("~/Admin/ViewItems.aspx");
                    }
                    else
                    {
                        lblError.Text = "your Email id or Password is not valid";
                    }
                }
            }
            
        }
    }
}