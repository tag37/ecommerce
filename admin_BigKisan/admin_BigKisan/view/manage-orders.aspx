<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-orders.aspx.cs" Inherits="admin_BigKisan.view.manage_orders" %>

<%@ Import Namespace="admin_BigKisan.util" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <section class="content-header">
        <h1 runat="server" id="h1Title">Manage Orders</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Manage Orders</li>
        </ol>
    </section>
    <section class="content">
        <div class="box box-primary">
            <!-- form start -->
            <div role="form">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <div class="box-body table-responsive">
                            <div class="row" style="margin-right: 0px; margin-left: 0px;">
                                <div class=" col-sm-3">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">Order Type</asp:Label>
                                        <div class="input-group input-group-sm">
                                            <div class="input-group-addon">
                                                <i class="fa fa-info"></i>
                                            </div>
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="ddlOrderType" DataSourceID="sqlOrdertype" DataTextField="OrderType" DataValueField="OrderTypeId" AppendDataBoundItems="True">
                                                <asp:ListItem Value="0" Text="All"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="sqlOrdertype" runat="server" SelectCommand="select OrderTypeId, OrderType from tblOrderType" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">From Date</asp:Label>
                                        <div class="input-group input-group-sm">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtFromDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-2" style="margin-right: 22px;">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">To Date</asp:Label>
                                        <div class="input-group input-group-sm">
                                            <div class="input-group-addon">
                                                To
                                            </div>
                                            <asp:TextBox runat="server" ID="txtToDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">Supplier</asp:Label>
                                        <div class="input-group input-group-sm">
                                            <div class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </div>
                                            <asp:DropDownList runat="server" ID="ddlSupplier" CssClass="form-control" DataTextField="SellerName" DataValueField="SellerId" DataSourceID="sqlSupplier" AppendDataBoundItems="True">
                                                <Items>
                                                    <asp:ListItem Text="-- Select --"></asp:ListItem>
                                                </Items>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="sqlSupplier" SelectCommand="spGetSupplier" SelectCommandType="StoredProcedure" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
                                            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hdnSupId" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">.</asp:Label>
                                        <asp:LinkButton runat="server" CssClass="btn btn-info btn-sm" ID="btnSearch" OnClick="btnSearch_OnClick"><i class="fa fa-search"></i>&nbsp;Search</asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <asp:Label runat="server" CssClass="control-label">.</asp:Label>
                                        <asp:LinkButton runat="server" CssClass="btn btn-success btn-sm" ID="lbtnExport"><i class="fa fa-file-excel-o"></i>&nbsp;Export</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="box-body">
                                <div class="table-responsive table-bordered">
                                    <asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-bordered table-striped" ShowHeaderWhenEmpty="true"
                                        EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Order Number" HeaderStyle-Width="10%">
                                                <ItemTemplate>
                                                    <%# Eval("OrderId") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Customer Name" HeaderStyle-Width="20%">
                                                <ItemTemplate>
                                                    <%# Eval("CustomerName") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Order Date" HeaderStyle-Width="8%">
                                                <ItemTemplate>
                                                    <%#  Eval("OrderDate").ToShortDateString() %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Order Type" HeaderStyle-Width="20%">
                                                <ItemTemplate>
                                                    <span runat="server" id="lblAvailableStock" class='<%# (Convert.ToString(Eval("OrderType"))) %>'><%# Eval("OrderType") %></span>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Total Cost" HeaderStyle-Width="12%">
                                                <ItemTemplate>
                                                    <span><%# Util.GetMoney(Eval("TotalCost")) %></span>&nbsp
                                            <span class="badge bg-orange"><%# Eval("TotalItems") %></span>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status" HeaderStyle-Width="10%">
                                                <ItemTemplate>
                                                    <span runat="server" id="lblAvailableStock" class="label label-success"><%# Eval("OrderStatus") %></span>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Action" HeaderStyle-Width="5%">
                                                <ItemTemplate>
                                                    <div align="center">
                                                        <a href="new-order.aspx?oid=<%# Eval("OrderID") %>&id=<%#  Eval("CustomerId") %>"><i class="fa fa-edit"></i></a>
                                                        <asp:LinkButton runat="server" CausesValidation="false" CommandName="DeleteOrder" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandArgument='<%#  Eval("OrderID") + "$" + Eval("OrderStatus") %>'><i class="fa fa-trash-o text-red"></i></asp:LinkButton>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
