using System;
using admin_BigKisan.model;
using admin_BigKisan.util;

namespace admin_BigKisan.view
{
    public partial class view_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var orderId = Request.QueryString["orderId"].TryGetInt();
            if (orderId == 0)
            {
                // throw exception for invalid OrderId
            }

            BindOrderDetails(orderId);
        }

        public void BindOrderDetails(int orderId)
        {
            var result = Order.GetOrder(orderId);

            if (result == null || result.Tables.Count == 0 || result.Tables[0].Rows.Count == 0)
            {
                // throw exception if not record found
            }

            var orderDetails = result.Tables[0];
            lblOrderId.Text = orderDetails.Rows[0]["OrderId"].GetString();
            orderDate.Text = orderDetails.Rows[0]["OrderDate"].ToShortDateString();
            lblCustomer.Text = orderDetails.Rows[0]["CustomerName"].GetString();
            lblAddress1.Text = orderDetails.Rows[0]["AddressLine1"].GetString();
            lblAddress2.Text = orderDetails.Rows[0]["AddressLine2"].GetString();
            lblPinCode.Text = orderDetails.Rows[0]["Pincode"].GetString();
            lblOrderType.Text = orderDetails.Rows[0]["OrderType"].GetString();
            lblTotal.Text = Util.GetMoney(orderDetails.Rows[0]["TotalCost"]);

            var orderProducts = result.Tables[1];
            dgvProduct.DataSource = orderProducts;
            dgvProduct.DataBind();
        }
    }
}