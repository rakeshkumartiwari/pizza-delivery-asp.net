using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PizzaDelivery.Admin
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-I6O9RHK\SQLEXPRESS;Initial Catalog=PizzaDeliveryDb;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridViewUsers.DataSource = GetUsers();
                gridViewUsers.DataBind();
            }
        }

        protected void gridViewUsers_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            var userId = gridViewUsers.DataKeys[e.NewEditIndex];
            if (userId != null)
            {
                Session["SelectedUser"] = userId.Value.ToString();
                Response.Redirect("~/Admin/EditUser.aspx");
            }

        }

        protected void gridViewUsers_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var userId = gridViewUsers.DataKeys[e.RowIndex];
            if (userId != null)
            {
                Session["SelectedUser"] = userId.Value.ToString();
                Response.Redirect("~/Admin/DeleteUser.aspx");

            }
        }

        

        private DataSet GetUsers()
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