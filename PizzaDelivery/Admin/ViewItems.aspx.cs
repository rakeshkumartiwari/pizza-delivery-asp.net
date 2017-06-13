using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaDelivery.Admin
{
    public partial class ViewItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminName"] != null)
            {
                lblAdmin.Text = "Welcome" + " " + Session["AdminName"].ToString() + "...";
            }
        }
    }
}