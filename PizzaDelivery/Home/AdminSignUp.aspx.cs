﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PizzaDelivery.Home
{
    public partial class AdminSignUp : System.Web.UI.Page
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
                objCommand.CommandText = "insert into tbl_admin values('" + txtFirstName.Text + "','" + txtLastName.Text + "','"
                                                                           + txtEmail.Text + "','" + txtPassword.Text + "','"
                                                                          + txtMobileNo.Text + "','" + txtCity.Text + "',getdate())";
                objCommand.ExecuteNonQuery();
                Response.Redirect("~/Home/AdminSignIn.aspx");
            }
        }
    }
}