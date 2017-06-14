using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace PizzaDelivery.User
{
    public partial class UserMenu : System.Web.UI.Page
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