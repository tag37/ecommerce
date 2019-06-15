using admin_BigKisan.model;
using System;
using System.Web.UI.WebControls;
using admin_BigKisan.util;

namespace admin_BigKisan.view
{
    public partial class manage_category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            try
            {
                var category = new Category
                {
                    CategoryId = hdnCategoryID.Value.TryGetInt(),
                    ParentCategory = new ParentCategory
                    {
                        Id = ddlParentCategory.SelectedValue.TryGetInt()
                    },
                    IsActive = true,
                    CategoryName = txtCategoryName.Text
                };

                category.InsertUpdateCategory();
                gvCategoryList.DataBind();
            }
            catch (Exception exp)
            {
                //TODO: Add some error handling code
            }
            hdnCategoryID.Value = string.Empty;
            txtCategoryName.Text = string.Empty;
        }

        protected void gvCategoryList_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteCategory")
            {
                var categoryId = e.CommandArgument.TryGetInt();
                Category.DeleteCategory(categoryId);
                gvCategoryList.DataBind();
            }
            else if (e.CommandName == "EditCategory")
            {
                var arguments = e.CommandArgument.ToString().Split('$');
                txtCategoryName.Text = arguments[1];
                hdnCategoryID.Value = arguments[0];

            }
        }
    }
}