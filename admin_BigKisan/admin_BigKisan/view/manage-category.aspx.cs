using admin_BigKisan.model;
using System;

namespace admin_BigKisan.view
{
    public partial class manage_category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Initialize();
        }

        private void Initialize()
        {
            ddlParentCategory.DataTextField = "Name";
            ddlParentCategory.DataValueField = "Id";
            ddlParentCategory.DataSource = ParentCategory.GetAllParentCategories();
            ddlParentCategory.DataBind();
        }
    }
}