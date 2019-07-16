using admin_BigKisan.model;
using admin_BigKisan.util;
using System;
using System.Data;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_BigKisan.view
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["ProductId"] != null)
            {
                var productId = Request.Cookies["ProductId"].Value;
                Response.Cookies["ProductId"].Expires = DateTime.Now.AddDays(-1);
                FillProduct(productId.TryGetInt());
            }
        }

        public void FillProduct(int productId)
        {
            var product = Product.GetProduct(productId);
            if (product == null)
            {
                return;
            }

            hdnTxtProduct.Value = productId.ToString();
            txtProductName.Text = product.ProductName;
            ddlCategory.SelectedValue = product.CategoryId.ToString();
            ddlSupplier.SelectedValue = product.SellerId.ToString();
            txtPrice.Text = product.Price.ToString(CultureInfo.InvariantCulture);
            txtMRP.Text = product.Mrp.ToString(CultureInfo.InvariantCulture);
            txtBrand.Text = product.Brand;
            txtSKU.Text = product.ProductSku;
            txtStock.Text = product.AvailableStock.ToString();
            chkIsHot.Checked = product.IsHot;
            chkIsNew.Checked = product.IsNew;
            chkIsTrending.Checked = product.IsTrending;
            txtShortDesc.Text = product.ShortDesc;
            var dtAttributes = Product.GetProductAttributes(productId, product.CategoryId);
            if (dtAttributes != null && dtAttributes.Rows.Count > 0)
            {
                ViewState["tblProductAttributes"] = dtAttributes;
                BindProductAttributesFromViewState();
            }
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
            txtShortDesc.Text = string.Empty;
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
            if (!string.IsNullOrWhiteSpace(hdnTxtProduct.Value))
            {
                var dtAttributes = Product.GetProductAttributes(hdnTxtProduct.Value.TryGetInt(), ddlCategory.SelectedValue.TryGetInt());
                if (dtAttributes != null && dtAttributes.Rows.Count > 0)
                {
                    ViewState["tblProductAttributes"] = dtAttributes;
                }
                else
                {
                    ViewState["tblProductAttributes"] = null;
                }
            }
            BindProductAttributesFromViewState();
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
            var row = ((LinkButton)sender).NamingContainer as GridViewRow;
            var dt = ViewState["tblProductAttributes"] as DataTable;
            dt.Rows.RemoveAt(row.RowIndex);
            ViewState["tblProductAttributes"] = dt;

            gvAttributes.DataSource = ViewState["tblProductAttributes"] as DataTable;
            gvAttributes.DataBind();
        }
    }
}
