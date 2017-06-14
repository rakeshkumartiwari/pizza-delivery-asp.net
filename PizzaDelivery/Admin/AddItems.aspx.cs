using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace PizzaDelivery.Admin
{
    public partial class AddItems : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-I6O9RHK\SQLEXPRESS;Initial Catalog=PizzaDeliveryDb;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (var objConnection = new SqlConnection(connectionString))
            {
                objConnection.Open();
                var objCommand = new SqlCommand();
                objCommand.Connection = objConnection;
                string fileName = "";
                if (FileUpload1.HasFile)
                {
                    fileName = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + fileName));


                }
                objCommand.CommandText = "insert into tbl_items values('" + txtItemName.Text + "'," + Convert.ToDecimal(txtItemPrice.Text) + ",'"
                                                                           + fileName + "','" + txtItemDescription.Text + "',getdate())";
                objCommand.ExecuteNonQuery();
                Clear();
            }
        }

        private void Clear()
        {
            txtItemName.Text = "";
            txtItemPrice.Text = "";
            txtItemDescription.Text = "";
        }
    }
}