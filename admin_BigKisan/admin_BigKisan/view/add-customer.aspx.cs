using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using admin_BigKisan.model;

namespace admin_BigKisan.view
{
    public partial class add_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlState_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            ddlVillage.Items.Clear();
            ddlCity.Items.Add(new ListItem("--- Select ---", "0"));
            ddlVillage.Items.Add(new ListItem("--- Select ---", "0"));
            ddlCity.DataBind();
        }

        protected void ddlCity_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlVillage.Items.Clear();
            ddlVillage.Items.Add(new ListItem("--- Select ---", "0"));
            ddlVillage.DataBind();
        }

        protected void ddlVillage_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            var cityPinCode = ddlVillage.SelectedValue.Split('$');
            txtPinCode.Text = cityPinCode[1];
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            try
            {
                var customer = new Customer
                {
                    CustomerName = txtCustomer.Text,
                    ContactNo = txtContact.Text,
                    EmailId = txtEmail.Text
                };
                customer.AddCustomer();
                ResetValues();
            }
            catch (Exception exception)
            {
                SendNotificationOnUi(this, $"PopupNotification('Error', '{exception.Message}', 'Error')");
            }
        }

        private void ResetValues()
        {
            txtCustomer.Text = string.Empty;
            txtContact.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

        private void SendNotificationOnUi(Control control, string function)
        {
            ScriptManager.RegisterClientScriptBlock(control, GetType(), "disp_confirm",
                $"<script>{function} </script>",
                false);
        }

        protected void btnReset_OnClick(object sender, EventArgs e)
        {
            ResetValues();
        }

        protected void btnAddAddress_OnClick(object sender, EventArgs e)
        {
            DataTable tblProductAttributes;
            if (ViewState["tblAddress"] == null)
            {
                tblProductAttributes = new DataTable("tblAddress");
                tblProductAttributes.Columns.Add("AttributeId");
                tblProductAttributes.Columns.Add("AttributeName");
                tblProductAttributes.Columns.Add("AttributeValue");
            }
            else
            {
                tblProductAttributes = ViewState["tblAddress"] as DataTable;
            }
        }
    }
}