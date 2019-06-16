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

            CreateUpdateCategory();
            gvCategoryList.DataBind();
            ResetValues();
        }

        private void CreateUpdateCategory(int categoryId = 0)
        {
            try
            {
                var category = new Category
                {
                    CategoryId = categoryId,
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
                btnSubmit.Visible = false;
                btnUpdateCategory.Visible = true;

                var arguments = e.CommandArgument.ToString().Split('$');
                txtCategoryName.Text = arguments[1];
                hdnCategoryID.Value = arguments[0];
            }
        }

        protected void btnCancel_OnClick(object sender, EventArgs e)
        {
            ResetValues();
        }

        private void ResetValues()
        {
            ddlParentCategory.SelectedIndex = 0;
            txtCategoryName.Text = string.Empty;
            hdnCategoryID.Value = string.Empty;
            txtCategoryName.Text = string.Empty;
            btnSubmit.Visible = true;
            btnUpdateCategory.Visible = false;
            hdnCategoryID.Value = string.Empty;
        }

        protected void btnUpdateCategory_OnClick(object sender, EventArgs e)
        {
            CreateUpdateCategory(hdnCategoryID.Value.TryGetInt());
            ResetValues();
        }
    }
}