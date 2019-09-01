using admin_BigKisan.model;
using System;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using admin_BigKisan.util;

namespace admin_BigKisan.view
{
    public partial class add_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindState();
                BindCity();
                BindVillage();
            }

            if (Request.Cookies["CustomerId"] != null)
            {
                var customerId = Request.Cookies["CustomerId"].Value;
                Response.Cookies["CustomerId"].Expires = DateTime.Now.AddDays(-1);
                FillCustomer(customerId.TryGetInt());
                btnUpdate.Attributes.Add("CustomerId", customerId);
            }
        }

        public void FillCustomer(int customerId)
        {
            btnSubmit.Visible = false;
            btnUpdate.Visible = true;

            var customerDetails = Customer.GetCustomerDetails(customerId);
            if (customerDetails == null || customerDetails.Tables.Count == 0 || customerDetails.Tables[0].Rows.Count == 0)
            {
                return;
            }

            txtCustomer.Text = customerDetails.Tables[0].Rows[0]["CustomerName"].ToString();
            txtContact.Text = customerDetails.Tables[0].Rows[0]["ContactNo"].ToString();
            txtEmail.Text = customerDetails.Tables[0].Rows[0]["EmailId"].ToString();

            if (customerDetails.Tables[1].Rows.Count == 0)
            {
                return;
            }

            var tblAddresses = GetAddressTableStructure();
            foreach (DataRow rows in customerDetails.Tables[1].Rows)
            {
                var uiAddressRow = tblAddresses.NewRow();
                uiAddressRow["addressId"] = rows["AddressId"].ToString();
                uiAddressRow["addressLine1"] = rows["AddressLine1"].ToString();
                uiAddressRow["addressLine2"] = rows["AddressLine2"].ToString();
                uiAddressRow["cityID"] = rows["CityPincode"].ToString();
                uiAddressRow["cityName"] = rows["CityName"].ToString();
                uiAddressRow["stateId"] = rows["StateCode"].ToString();
                uiAddressRow["stateName"] = rows["StateName"].ToString();
                uiAddressRow["village"] = rows["Village"].ToString();
                uiAddressRow["pinCode"] = rows["Pincode"].ToString();
                tblAddresses.Rows.Add(uiAddressRow);
            }
            ViewState["tblAddress"] = tblAddresses;
            BindAddressesFromVs();
        }

        protected void ddlState_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            ddlVillage.Items.Clear();
            ddlCity.Items.Add(new ListItem("--- Select ---", "0"));
            ddlVillage.Items.Add(new ListItem("--- Select ---", "0"));
            lblPinCode.Text = string.Empty;
            BindCity();
        }

        private void BindState()
        {
            var stateList = Util.GetStateList();
            ddlState.DataSource = stateList;
            ddlState.DataBind();
        }

        private void BindCity()
        {
            if (ddlState.SelectedValue != "0")
            {
                var stateCode = ddlState.SelectedValue.Split('$')[1];
                var cityList = Util.GetCityList(stateCode);
                ddlCity.DataSource = cityList;
                ddlCity.DataBind();
            }
        }

        private void BindVillage()
        {
            if (ddlState.SelectedValue == "0" || ddlCity.SelectedValue == "0")
            {
                return;
            }

            var stateCode = ddlState.SelectedValue.Split('$')[1];
            var cityName = ddlCity.SelectedValue;
            var villageList = Util.GetVillageList(stateCode, cityName);
            ddlVillage.DataSource = villageList;
            ddlVillage.DataBind();
        }

        protected void ddlCity_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlVillage.Items.Clear();
            ddlVillage.Items.Add(new ListItem("--- Select ---", "0"));
            lblPinCode.Text = string.Empty;
            BindVillage();
        }

        protected void ddlVillage_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            var cityPinCode = ddlVillage.SelectedValue.Split('$');
            lblPinCode.Text = cityPinCode[1];
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            SaveCustomerDetails();
        }

        public void SaveCustomerDetails(int customerId = 0)
        {
            try
            {
                var customer = new Customer
                {
                    CustomerId = customerId,
                    CustomerName = txtCustomer.Text,
                    ContactNo = txtContact.Text,
                    EmailId = txtEmail.Text
                };

                var addresses = ViewState["tblAddress"] as DataTable;
                customer.AddCustomer(addresses);
                ResetValues();
                ResetAddressDetails();
                rptCustomers.DataSource = null;
                rptCustomers.DataBind();
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

        private void ResetAddressDetails()
        {
            txtAddress1.Text = string.Empty;
            txtAddress2.Text = string.Empty;
            ddlState.ClearSelection();
            ddlCity.ClearSelection();
            ddlVillage.ClearSelection();
            lblPinCode.Text = string.Empty;
            rptCustomers.DataSource = null;
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
            var tblAddresses = ViewState["tblAddress"] == null
                ? GetAddressTableStructure()
                : ViewState["tblAddress"] as DataTable;

            if (tblAddresses == null)
            {
                return;
            }

            DataRow row;
            if (btnUpdateAddress.Visible)
            {
                row = tblAddresses.Select($"id = {btnUpdateAddress.Attributes["id"]}").FirstOrDefault();
            }
            else
            {
                row = tblAddresses.NewRow();
                row["addressId"] = 0;
            }

            if (row != null)
            {
                row["addressLine1"] = txtAddress1.Text;
                row["addressLine2"] = txtAddress2.Text;
                row["cityName"] = ddlCity.SelectedValue;
                //row["stateId"] = ddlState.SelectedValue.Split('$')[0];
                row["stateId"] = ddlState.SelectedValue;
                row["stateName"] = ddlState.SelectedItem.Text;
                row["village"] = ddlVillage.SelectedItem.Text;
                //row["cityID"] = ddlVillage.SelectedValue.Split('$')[0];
                row["cityID"] = ddlVillage.SelectedValue;
                row["pinCode"] = lblPinCode.Text;
            }
            if (!btnUpdateAddress.Visible && row != null) // When Add Address button is ON
            {
                tblAddresses.Rows.Add(row);
            }

            ViewState["tblAddress"] = tblAddresses;

            BindAddressesFromVs();
            ResetAddressDetails();

            btnAddAddress.Visible = true;
            btnUpdateAddress.Visible = false;
        }

        private void BindAddressesFromVs()
        {
            DataTable tblAddresses;
            if (ViewState["tblAddress"] == null)
            {
                tblAddresses = GetAddressTableStructure();
            }
            else
            {
                tblAddresses = ViewState["tblAddress"] as DataTable;
            }

            rptCustomers.DataSource = tblAddresses;
            rptCustomers.DataBind();
        }

        private DataTable GetAddressTableStructure()
        {
            var tblAddresses = new DataTable("tblAddress");
            var col = new DataColumn("id") { AutoIncrement = true, AutoIncrementSeed = 1 };
            tblAddresses.Columns.Add(col);
            tblAddresses.Columns.Add("addressId");
            tblAddresses.Columns.Add("addressLine1");
            tblAddresses.Columns.Add("addressLine2");
            tblAddresses.Columns.Add("cityName");
            tblAddresses.Columns.Add("cityId");
            tblAddresses.Columns.Add("village");
            tblAddresses.Columns.Add("stateId");
            tblAddresses.Columns.Add("stateName");
            tblAddresses.Columns.Add("pinCode");
            tblAddresses.PrimaryKey = new DataColumn[] { tblAddresses.Columns["id"] };
            return tblAddresses;
        }

        protected void btnUpdate_OnClick(object sender, EventArgs e)
        {
            var customerId = btnUpdate.Attributes["customerId"].TryGetInt();
            SaveCustomerDetails(customerId);
        }

        protected void rptCustomers_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var customerAddresses = ViewState["tblAddress"] as DataTable;

            if (customerAddresses == null || customerAddresses.Rows.Count == 0)
            {
                return;
            }

            if (e.CommandName == "Delete")
            {
                var rowToDelete = GetRowFromId(e.CommandArgument);

                if (rowToDelete != null)
                {
                    var addressId = rowToDelete["addressId"].TryGetInt();
                    if (addressId != 0)
                        Customer.DeleteCustomerAddress(addressId);
                    customerAddresses.Rows.Remove(rowToDelete);
                    ViewState["tblAddress"] = customerAddresses;
                    BindAddressesFromVs();
                }
                return;
            }

            if (e.CommandName == "Edit")
            {
                var rowToUpdate = GetRowFromId(e.CommandArgument);
                if (rowToUpdate != null)
                {
                    txtAddress1.Text = rowToUpdate["addressLine1"].GetString();
                    txtAddress2.Text = rowToUpdate["addressLine2"].GetString();
                    ddlState.SelectedValue = rowToUpdate["stateId"].GetString();
                    BindCity();
                    ddlCity.SelectedValue = rowToUpdate["cityName"].GetString();
                    BindVillage();
                    ddlVillage.SelectedValue = rowToUpdate["cityID"].GetString();
                    lblPinCode.Text = rowToUpdate["pinCode"].GetString();

                    btnAddAddress.Visible = false;
                    btnUpdateAddress.Visible = true;
                    btnUpdateAddress.Attributes.Add("id", e.CommandArgument.ToString());
                }
            }
        }

        private DataRow GetRowFromId(object id)
        {
            var customerAddresses = ViewState["tblAddress"] as DataTable;
            return customerAddresses?.Rows.Find(id);

        }
    }
}