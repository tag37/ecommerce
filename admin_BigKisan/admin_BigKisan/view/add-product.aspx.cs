using admin_BigKisan.model;
using admin_BigKisan.util;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            CreateUpdateProduct();
        }

        protected void btnReset_OnClick(object sender, EventArgs e)
        {
            ResetValues();
        }

        private void CreateUpdateProduct()
        {
            try
            {
                var product = new Product
                {
                    ProductId = hdnTxtProduct.Value.TryGetInt(),
                    CategoryId = ddlCategory.SelectedValue.TryGetInt(),
                    Mrp = txtMRP.Text.TryGetDecimal(),
                    IsHot = chkIsHot.Checked,
                    ProductSku = txtSKU.Text,
                    ProductName = txtProductName.Text,
                    IsNew = chkIsNew.Checked,
                    IsTrending = chkIsTrending.Checked,
                    Price = txtPrice.Text.TryGetDecimal(),
                    SellerId = ddlSupplier.SelectedValue.TryGetInt()
                };

                product.ProductInsertUpdated();

                if (product.SellerId != 0)
                {
                    //TODO: Need to validate field Price and MRP
                    product.SellerProductInsertUpdate();
                }

                ResetValues();

                SendNotificationOnUi(upProduct,
                    "PopupNotification('Success', 'Product has been added into the stock.', 'Success')");

            }
            catch (Exception exception)
            {
                SendNotificationOnUi(upProduct, $"PopupNotification('Error', '{exception.Message}', 'Error')");
            }
        }

        private void ResetValues()
        {
            txtMRP.Text = string.Empty;
            txtPrice.Text = string.Empty;
            txtProductName.Text = string.Empty;
            txtSKU.Text = string.Empty;
            ddlCategory.SelectedIndex = 0;
            ddlSupplier.SelectedIndex = 0;
            chkIsHot.Checked = false;
            chkIsNew.Checked = false;
            chkIsTrending.Checked = false;
            txtProductName.Enabled = true;
            ddlCategory.Enabled = true;
            txtProductName.Text = string.Empty;
            hdnTxtProduct.Value = string.Empty;
        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            gvProductList.DataBind();
        }

        protected void radioProduct_OnCheckedChanged(object sender, EventArgs e)
        {
            var row = (GridViewRow)((RadioButton)sender).NamingContainer;

            foreach (GridViewRow gridViewRow in gvProductList.Rows)
            {
                if (row != gridViewRow)
                {
                    if (gridViewRow.RowType == DataControlRowType.DataRow)
                    {
                        if (gridViewRow.Cells[0].FindControl("radioProduct") is RadioButton radioButton)
                        {
                            radioButton.Checked = false;
                        }
                    }
                }
            }
        }

        protected void btnSelectProduct_OnClick(object sender, EventArgs e)
        {
            foreach (GridViewRow gridViewRow in gvProductList.Rows)
            {
                if (gridViewRow.RowType == DataControlRowType.DataRow)
                {
                    if (gridViewRow.Cells[0].FindControl("radioProduct") is RadioButton radioButton && radioButton.Checked)
                    {
                        if (gridViewRow.Cells[0].FindControl("hdfProductId") is HiddenField hdfProductId)
                        {
                            var values = hdfProductId.Value.Split('$');
                            hdnTxtProduct.Value = values[0];
                            txtProductName.Text = values[1];
                            ddlCategory.SelectedValue = values[2];
                            txtProductName.Enabled = false;
                            ddlCategory.Enabled = false;

                            ScriptManager.RegisterStartupScript(Page, GetType(), "disp_confirm",
                                "<script>ClosePopup()</script>",
                                false);
                            return;
                        }
                    }
                }
            }
        }

        private void SendNotificationOnUi(Control control, string function)
        {
            ScriptManager.RegisterStartupScript(control, GetType(), "disp_confirm",
                $"<script>{function} </script>",
                false);
        }

    }
}
