using System;
using System.Collections.Generic;

namespace admin_BigKisan.view.category
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Initialize();
        }

        private void Initialize()
        {
            var listItem = new Dictionary<string, string>
            {
                {"1", "Category 1"}, {"2", "Category 2"}, {"3", "Category 3"}, {"4", "Category 4"}
            };
            ddlParentCategory.DataSource = listItem;
            ddlParentCategory.DataBind();
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            
        }
    }
}