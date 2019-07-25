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
        <div class="box box-primary col-md-12">
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
                    </div>
                    <div class="form-group col-md-6">
                        <label>Address Line 2</label>
                        <asp:TextBox runat="server" CssClass="form-control" TextMode="MultiLine" ID="txtAddress2" placeholder="Address Line 2" />
                    </div>
                </div>
                <div class="row">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="form-group col-md-3">
                                <label>State</label>
                                <asp:DropDownList class="form-control" ID="ddlState" placeholder="State" runat="server" AppendDataBoundItems="True" DataSourceID="sqlState" DataTextField="StateName" DataValueField="Code" AutoPostBack="True" OnSelectedIndexChanged="ddlState_OnSelectedIndexChanged">
                                    <Items>
                                        <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                    </Items>
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sqlState" SelectCommand="spGetAllState" SelectCommandType="StoredProcedure" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
                            </div>
                            <div class="form-group col-md-3">
                                <label>City</label>
                                <asp:DropDownList runat="server" CssClass="form-control col-md-3" ID="ddlCity" placeholder="Contact Name" AppendDataBoundItems="True" DataSourceID="sqlCity" DataTextField="CityName" DataValueField="CityName" OnSelectedIndexChanged="ddlCity_OnSelectedIndexChanged" AutoPostBack="True">
                                    <Items>
                                        <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                    </Items>
                                </asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sqlCity" SelectCommand="select distinct CityName from tblCity  where StateCode = @stateCode" SelectCommandType="Text" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                                    <SelectParameters>
                                        <asp:ControlParameter DefaultValue="0" ControlID="ddlState" Name="stateCode" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Village</label>
                                <asp:DropDownList runat="server" CssClass="form-control col-md-3" ID="ddlVillage" placeholder="Contact Name" AppendDataBoundItems="True" DataSourceID="sqlVillage" DataTextField="Village" DataValueField="CityID" OnSelectedIndexChanged="ddlVillage_OnSelectedIndexChanged" AutoPostBack="True">
                                    <Items>
                                        <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                    </Items>
                                </asp:DropDownList>
                                <asp:HiddenField runat="server" Value='<%# Bind("PinCode") %>' ID="hdnVillage" />
                                <asp:SqlDataSource runat="server" ID="sqlVillage" SelectCommand="select Village,CONCAT(CityID ,'$',PinCode) CityID   from tblCity where StateCode = @stateCode and CityName = @cityName" SelectCommandType="Text" ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
                                    <SelectParameters>
                                        <asp:ControlParameter DefaultValue="0" ControlID="ddlState" Name="stateCode" />
                                        <asp:ControlParameter DefaultValue="0" ControlID="ddlCity" Name="cityName" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="form-group col-md-3">
                                <label>Pin Code</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtPinCode" placeholder="Pin Code" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="row">
                    <div class="form-group col-md-12 text-right">
                        <asp:LinkButton runat="server" ID="btnAddAddress" CssClass="btn btn-primary" OnClick="btnAddAddress_OnClick"><i class="fa fa-plus"></i>&nbsp;Address</asp:LinkButton>
                    </div>
                </div>
                <div class="row col-md-12">
                    <asp:Repeater ID="rptCustomers" runat="server" >
                        <ItemTemplate>
                            <div class="table-bordered card col-md-3">
                                <div class="card-body">
                                    <h5 class="card-title">Special title treatment</h5>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <div class="table-bordered card col-md-3">
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="form-group col-md-12 text-right">
                        <asp:LinkButton runat="server" ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_OnClick"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
                        <asp:LinkButton runat="server" ID="btnReset" CssClass="btn btn-warning" CausesValidation="False" OnClick="btnReset_OnClick"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
                    </div>
                </div>

            </div>
        </div>
        
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
