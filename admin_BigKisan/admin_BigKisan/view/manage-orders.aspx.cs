using System;
using System.Data;
using System.Web.UI.WebControls;
using admin_BigKisan.model;
using admin_BigKisan.util;

namespace admin_BigKisan.view
{
    public partial class manage_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Initialize();
            }
        }

        public void Initialize()
        {
            BindOrderDetails();
        }

        public void BindOrderDetails()
        {
            var orderType = ddlOrderType.SelectedValue.TryGetInt();
            var fromDate = txtFromDate.Text.IsDateString() ? txtFromDate.Text : null;
            var toDate = txtToDate.Text.IsDateString() ? txtToDate.Text : null;
            var supplier = ddlSupplier.SelectedValue.TryGetInt();
            var result = Order.GetOrders(orderType, fromDate, toDate, supplier);
            dgvDetails.DataSource = result;
            dgvDetails.DataBind();
        }

        private void GetTitleH1()
        {
            var str = Request.QueryString["type"];
            var res = "Manage Orders (All)";
            switch (str)
            {
                case "1":
                    res = "Manage Orders (New Orders)";
                    break;

                case "2":
                    res = "Manage Orders (Dispatched)";
                    break;

                case "3":
                    res = "Manage Orders (Delivered)";
                    break;

                case "4":
                    res = "Manage Orders (Cancelled)";
                    break;
            }

            h1Title.InnerHtml = res;
        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            BindOrderDetails();
        }

        protected void dgvDetails_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                var orderId = e.CommandArgument.TryGetInt();
                Order.DeleteOrder(orderId);
                BindOrderDetails();
            }
        }

        protected void dgvDetails_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}