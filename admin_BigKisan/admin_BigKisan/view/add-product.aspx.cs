using admin_BigKisan.model;
using admin_BigKisan.util;
using System;
using System.Data;
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
                    ProductSku = txtSKU.Text,
                    ProductName = txtProductName.Text,
                    CategoryId = ddlCategory.SelectedValue.TryGetInt(),
                    IsHot = chkIsHot.Checked,
                    IsNew = chkIsNew.Checked,
                    IsTrending = chkIsTrending.Checked,
                    Mrp = txtMRP.Text.TryGetDecimal(),
                    Price = txtPrice.Text.TryGetDecimal(),
                    SellerId = ddlSupplier.SelectedValue.TryGetInt(),
                    Brand = txtBrand.Text,
                    AvailableStock = txtStock.Text.TryGetInt(),
                    ShortDesc = txtShortDesc.Text
                };

                product.ProductInsertUpdated();
                var dt = ViewState["tblProductAttributes"] as DataTable;
                product.AddProductAttributes(dt);

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
            txtBrand.Text = string.Empty;
            txtStock.Text = string.Empty;
            ViewState["tblProductAttributes"] = null;
            BindProductAttributesFromViewState();
        }

        private void BindProductAttributesFromViewState()
        {
            gvAttributes.DataSource = ViewState["tblProductAttributes"] as DataTable;
            gvAttributes.DataBind();
        }
        private void SendNotificationOnUi(Control control, string function)
        {
            ScriptManager.RegisterStartupScript(control, GetType(), "disp_confirm",
                $"<script>{function} </script>",
                false);
        }

        protected void ddlCategory_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["tblProductAttributes"] = null;
            gvAttributes.DataSource = null;
            gvAttributes.DataBind();
            ddlAttributes.Items.Clear();
            ddlAttributes.DataBind();
        }

        protected void btnAddFields_OnClick(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtAttributeValue.Text))
            {
                SendNotificationOnUi(upProduct, "PopupNotification('Error', 'Enter attribute value', 'Error')");
                return;
            }

            if (string.IsNullOrWhiteSpace(ddlAttributes.SelectedValue))
            {
                SendNotificationOnUi(upProduct, "PopupNotification('Error', 'Select product attribute', 'Error')");
                return;
            }

            DataTable tblProductAttributes;
            if (ViewState["tblProductAttributes"] == null)
            {
                tblProductAttributes = new DataTable("tblProductAttributes");
                tblProductAttributes.Columns.Add("AttributeId");
                tblProductAttributes.Columns.Add("AttributeName");
                tblProductAttributes.Columns.Add("AttributeValue");
            }
            else
            {
                tblProductAttributes = ViewState["tblProductAttributes"] as DataTable;
            }

            if (tblProductAttributes != null)
            {
                foreach (DataRow dataRow in tblProductAttributes.Rows)
                {
                    if (dataRow["AttributeId"].ToString() == ddlAttributes.SelectedValue)
                    {
                        SendNotificationOnUi(upProduct, "PopupNotification('Error', 'Duplicate Attribute', 'Error')");
                        return;
                    }
                }

                var row = tblProductAttributes.NewRow();
                row["AttributeId"] = ddlAttributes.SelectedValue.TryGetInt();
                row["AttributeName"] = ddlAttributes.SelectedItem.Text;
                row["AttributeValue"] = txtAttributeValue.Text;

                tblProductAttributes.Rows.Add(row);

                gvAttributes.DataSource = tblProductAttributes;
                gvAttributes.DataBind();
                ViewState["tblProductAttributes"] = tblProductAttributes;

                txtAttributeValue.Text = string.Empty;
            }
        }

        protected void btnDeleteAttribute_OnClick(object sender, EventArgs e)
        {
            GridViewRow row = ((LinkButton)sender).NamingContainer as GridViewRow;
            var dt = ViewState["tblProductAttributes"] as DataTable;
            dt.Rows.RemoveAt(row.RowIndex);
            ViewState["tblProductAttributes"] = dt;

            gvAttributes.DataSource = ViewState["tblProductAttributes"] as DataTable;
            gvAttributes.DataBind();
        }
    }
}
