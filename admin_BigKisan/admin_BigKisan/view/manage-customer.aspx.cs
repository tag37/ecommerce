using admin_BigKisan.model;
using admin_BigKisan.util;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
    public partial class manage_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindCustomers();
            }
        }

        public void BindCustomers()
        {
            var customer = new Customer();
            var customerList = customer.GetCustomerList();
            dgCustomerList.DataSource = customerList.Tables[0];
            dgCustomerList.DataBind();
        }

        protected void dgCustomerList_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                var cookie = new HttpCookie("CustomerId");
                cookie.Value = e.CommandArgument.ToString();
                Response.Cookies.Add(cookie);
                Response.Redirect("~/view/add-customer.aspx");
            }

            if (e.CommandName == "Delete")
            {
                Customer.DeleteCustomer(e.CommandArgument.TryGetInt());
                BindCustomers();
            }
        }

        protected void dgCustomerList_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        }
    }
}