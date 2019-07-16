using System;
using System.Web;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
    public partial class manage_products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnFilter_OnClick(object sender, EventArgs e)
        {
            dgvDetails.DataBind();
        }

        protected void dgvDetails_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                var cookie = new HttpCookie("ProductId")
                {
                    Value = e.CommandArgument.ToString()
                };                
                Response.Cookies.Add(cookie);
                Response.Redirect("~/view/add-product.aspx"); ;
            }
        }
    }
}