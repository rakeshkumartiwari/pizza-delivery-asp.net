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
    public partial class ViewItems : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-I6O9RHK\SQLEXPRESS;Initial Catalog=PizzaDeliveryDb;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridViewItems.DataSource = GetItems();
                gridViewItems.DataBind();
            }
        }

        protected void gridViewItems_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            var itemId = gridViewItems.DataKeys[e.NewEditIndex];
            if (itemId != null)
            {
                Session["SelectedItem"] = itemId.Value.ToString();
                Response.Redirect("~/Admin/EditItem.aspx");
            }
        }

        protected void gridViewItems_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var itemId = gridViewItems.DataKeys[e.RowIndex];
            if (itemId != null)
            {
                Session["SelectedItem"] = itemId.Value.ToString();
                Response.Redirect("~/Admin/DeleteItem.aspx");

            }
        }
        private DataSet GetItems()
        {
            using (var objConnection = new SqlConnection(connectionString))
            {
                objConnection.Open();
                var objCommand = new SqlCommand("select * from tbl_items", objConnection);
                var objDataSet = new DataSet();
                var objAdapter = new SqlDataAdapter(objCommand);
                objAdapter.Fill(objDataSet);
                return objDataSet;
            }
        }
    }
}