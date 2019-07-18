<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-products.aspx.cs" Inherits="admin_BigKisan.view.manage_products" %>

<%@ Import Namespace="admin_BigKisan.util" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <section class="content-header">
        <h1>Manage Products
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Manage Products</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <!-- form start -->
                    <div role="form">
                        <div class="box-body">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Supplier Name</label>
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="ddlSupplier" placeholder="Supplier" DataTextField="SellerName" DataValueField="SellerId" DataSourceID="sqlDataSourceDdlSupplier" AppendDataBoundItems="True">
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                        </Items>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="sqlDataSourceDdlSupplier" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spSellerGetAll" SelectCommandType="StoredProcedure" runat="server">
                                        <SelectParameters>
                                            <asp:Parameter Name="Dropdown" DefaultValue="1" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <asp:Label runat="server" for="exampleInputPassword1">.</asp:Label>
                                <div class="form-group">
                                    <asp:LinkButton runat="server" CssClass="btn btn-success" Style="width: 100%" ID="btnFilter" OnClick="btnFilter_OnClick"><i class="fa fa-check"></i>&nbsp;Filter Products</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="col-md-12">
                                <div class="table-responsive table-bordered">
                                    <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
                                            <asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-bordered table-striped" DataSourceID="sqlDataSourceProduct" ShowHeaderWhenEmpty="true"
                                                EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red" PageSize="10" AllowPaging="True" OnRowCommand="dgvDetails_OnRowCommand">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex+1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Product Name" HeaderStyle-Width="25%">
                                                        <ItemTemplate>
                                                            <span><%# Eval("ProductName") %></span>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Product Price" HeaderStyle-Width="10%">
                                                        <ItemTemplate>
                                                            <%# Util.GetMoney(Eval("Price"))%>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Product MRP" HeaderStyle-Width="10%">
                                                        <ItemTemplate>
                                                            <%# Util.GetMoney(Eval("MRP")) %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Category" HeaderStyle-Width="15%">
                                                        <ItemTemplate>
                                                            <%# Eval("CategoryName") %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Supplier" HeaderStyle-Width="15%">
                                                        <ItemTemplate>
                                                            <%# Eval("SellerName") %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Action" HeaderStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <div align="center">
                                                                <asp:LinkButton runat="server" CausesValidation="false" CommandName="Edit" CommandArgument='<%# Eval("ProductId") %>' CssClass=""><i class="fa fa-edit"></i></asp:LinkButton>
                                                                <asp:LinkButton runat="server" CausesValidation="false" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandName="Delete" CommandArgument='<%# Eval("CategoryID") + "$" + Eval("CategoryName") %>'><i class="fa fa-trash-o text-red"></i></asp:LinkButton>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle CssClass="gridview" HorizontalAlign="Right"></PagerStyle>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="sqlDataSourceProduct" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spProductGetAll" SelectCommandType="StoredProcedure" runat="server">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlSupplier" DefaultValue="" PropertyName="SelectedValue" Name="SellerId" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:HiddenField runat="server" ID="hdnCategoryID" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
