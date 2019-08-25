<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="view_order.aspx.cs" Inherits="admin_BigKisan.view.view_order" %>

<%@ Import Namespace="admin_BigKisan.util" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <section class="content-header">
        <h1 runat="server" id="h1Title">Order Details</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Orders Details</li>
        </ol>
    </section>
    <section class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="col-sm-12">
                    <h2 class="page-header">Order -
                            <asp:Label runat="server" ID="lblOrderId" />
                        <small class="pull-right">Order Date:
                                <asp:Label runat="server" ID="orderDate" /></small>
                    </h2>
                    <div class="col-sm-4 invoice-col">
                        <b>Shipping Address</b>
                        <address>
                            <asp:Label runat="server" ID="lblCustomer"></asp:Label><br>
                            <asp:Label runat="server" ID="lblAddress1"></asp:Label><br>
                            <asp:Label runat="server" ID="lblAddress2"></asp:Label><br>
                            <asp:Label runat="server" ID="lblPinCode"></asp:Label><br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <b>Payment Method</b>
                        <address>
                            <strong>
                                <asp:Label runat="server" ID="lblOrderType" /></strong><br>
                        </address>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-4 invoice-col">
                        <b>Subtotal:</b>
                        <h4>
                            <asp:Label runat="server" ID="lblTotal" /><br>
                        </h4>
                    </div>

                </div>
                <div class="col-sm-12">
                    <div class="table-responsive table-bordered">
                        <asp:GridView runat="server" ID="dgvProduct" AutoGenerateColumns="false" CssClass="table table-bordered table-striped" ShowHeaderWhenEmpty="true"
                            EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
                            <Columns>
                                <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="2%">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product" HeaderStyle-Width="20%">
                                    <ItemTemplate>
                                        <%# Eval("ProductName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Subtotal" HeaderStyle-Width="10%">
                                    <ItemTemplate>
                                        <%# Util.GetMoney(Eval("MRP")) %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description" HeaderStyle-Width="20%">
                                    <ItemTemplate>
                                        <%# Eval("ShortDesciption") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
