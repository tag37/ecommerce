<%@ Page Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="add-customer.aspx.cs" Inherits="admin_BigKisan.view.add_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <section class="content-header">
        <h1>Add Customer</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add Customer</li>
        </ol>
    </section>
    <section class="content">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Name</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtCustomer" placeholder="Customer Name" />
                                <asp:RequiredFieldValidator ID="rfv" runat="Server" ControlToValidate="txtCustomer" ErrorMessage="Customer Name is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Mobile Number</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtContact" placeholder="Mobile Number" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContact" ErrorMessage="Enter Mobile Number" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Address Line 1</label>
                                <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtAddress1" placeholder="Address Line 1" />
                                <asp:RequiredFieldValidator runat="server" ValidationGroup="vgAddress" ControlToValidate="txtAddress1" ErrorMessage="Address Line 1 is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Address Line 2</label>
                                <asp:TextBox runat="server" CssClass="form-control" TextMode="MultiLine" ID="txtAddress2" placeholder="Address Line 2" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3">
                                <label>State</label>
                                <asp:DropDownList class="form-control" ID="ddlState" placeholder="State" runat="server" AppendDataBoundItems="True" DataTextField="StateName" DataValueField="StateCode" AutoPostBack="True" OnSelectedIndexChanged="ddlState_OnSelectedIndexChanged">
                                    <Items>
                                        <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                    </Items>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ValidationGroup="vgAddress" ControlToValidate="ddlState" ErrorMessage="State is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-3">
                                <label>City</label>
                                <div>
                                    <asp:DropDownList runat="server" CssClass="form-control col-md-3" ID="ddlCity" ValidationGroup="vgAddress" placeholder="Contact Name" AppendDataBoundItems="True" DataTextField="CityName" DataValueField="CityName" OnSelectedIndexChanged="ddlCity_OnSelectedIndexChanged" AutoPostBack="True">
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                        </Items>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" InitialValue="0" ValidationGroup="vgAddress" ControlToValidate="ddlCity" ErrorMessage="City is required" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Village</label>
                                <div>
                                    <asp:DropDownList runat="server" CssClass="form-control col-md-3" ID="ddlVillage" ValidationGroup="vgAddress" placeholder="Contact Name" AppendDataBoundItems="True" DataTextField="Village" DataValueField="CityPinCode" OnSelectedIndexChanged="ddlVillage_OnSelectedIndexChanged" AutoPostBack="True">
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                        </Items>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" InitialValue="0" ValidationGroup="vgAddress" ControlToValidate="ddlVillage" ErrorMessage="Village is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <asp:HiddenField runat="server" Value='<%# Bind("PinCode") %>' ID="hdnVillage" />

                            </div>
                            <div class="form-group col-md-3">
                                <label>Pin Code</label>
                                <asp:Label runat="server" CssClass="form-control" ID="lblPinCode" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12 text-right">
                                <asp:LinkButton runat="server" ID="btnAddAddress" CssClass="btn btn-primary" OnClick="btnAddAddress_OnClick" ValidationGroup="vgAddress"><i class="fa fa-plus"></i>&nbsp;Address</asp:LinkButton>
                                <asp:LinkButton runat="server" Visible="False" ID="btnUpdateAddress" CssClass="btn btn-primary" OnClick="btnAddAddress_OnClick" ValidationGroup="vgAddress"><i class="fa fa-save"></i>&nbsp;Address</asp:LinkButton>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12 text-right">
                                <asp:LinkButton runat="server" ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_OnClick"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
                                <asp:LinkButton runat="server" Visible="False" ID="btnUpdate" CssClass="btn btn-primary" OnClick="btnUpdate_OnClick"><i class="fa fa-check"></i>&nbsp;Update</asp:LinkButton>
                                <asp:LinkButton runat="server" ID="btnReset" CssClass="btn btn-warning" CausesValidation="False" OnClick="btnReset_OnClick"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Repeater ID="rptCustomers" runat="server" OnItemCommand="rptCustomers_OnItemCommand">
                                <HeaderTemplate>
                                    <div class="col-md-12">
                                        <h3>Address Details</h3>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="col-md-3">
                                        <div class="box box-default box-solid">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Address <%# Container.ItemIndex + 1 %></h3>
                                                <div class="box-tools pull-right">
                                                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Delete" CommandArgument='<%# Eval("id") %>'>
                                                        <i class="fa fa-trash text-red"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Edit" CommandArgument='<%# Eval("id") %>'>
                                                        <i class="fa fa-edit"></i>
                                                    </asp:LinkButton>
                                                </div>
                                                <!-- /.box-tools -->
                                            </div>
                                            <!-- /.box-header -->
                                            <div class="box-body">
                                                <%# Eval("addressLine1") %>
                                                <br />
                                                <%# Eval("addressLine2") %>
                                                <br />
                                                <%# Eval("cityName") %>
                                                <br />
                                                <%# Eval("stateName") %>
                                                <br />
                                                <%# Eval("village") %>
                                                <br />
                                                <%# Eval("pinCode") %>
                                                <br />
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
