<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-orders.aspx.cs" Inherits="admin_BigKisan.view.manage_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content-header">
		<h1 runat="server" id="h1Title" >Manage Orders</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Manage Orders</li>
		</ol>
	</section>
	<section class="content">
		<div class="box box-primary">
			<!-- form start -->
			<div role="form">
				<div class="box-body table-responsive">
					<div class="row" style="margin-right: 0px; margin-left: 0px;">
						<div class=" col-sm-3">
							<div class="form-group">
								<asp:Label runat="server" CssClass="control-label">Order Type</asp:Label>
								<div class="input-group input-group-sm">
									<div class="input-group-addon">
										<i class="fa fa-info"></i>
									</div>
									<asp:DropDownList runat="server" CssClass="form-control" ID="ddlOrderType">
										<asp:ListItem Value="0" Text="All"></asp:ListItem>
										<asp:ListItem Value="COD" Text="COD - Cash On Delivery"></asp:ListItem>
										<asp:ListItem Value="CIA" Text="CIA - Cash In Advance (Online Payment)"></asp:ListItem>
									</asp:DropDownList>
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
								<asp:Label runat="server" CssClass="control-label">Suppplier</asp:Label>
								<div class="input-group input-group-sm">
									<div class="input-group-addon">
										<i class="fa fa-user"></i>
									</div>
									<asp:DropDownList runat="server" CssClass="form-control" ID="ddlAssignedTo">
										<asp:ListItem>Select</asp:ListItem>
										<asp:ListItem>Suppplier 1</asp:ListItem>
										<asp:ListItem>Suppplier 2</asp:ListItem>
										<asp:ListItem>Suppplier 3</asp:ListItem>
									</asp:DropDownList>
								</div>
							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<asp:Label runat="server" CssClass="control-label">.</asp:Label>
								<asp:LinkButton runat="server" CssClass="btn btn-info btn-sm" ID="lbtnSearch"><i class="fa fa-search"></i>&nbsp;Search</asp:LinkButton>

							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<asp:Label runat="server" CssClass="control-label">.</asp:Label>
								<asp:LinkButton runat="server" CssClass="btn btn-success btn-sm" ID="lbtnExport"><i class="fa fa-file-excel-o"></i>&nbsp;Export</asp:LinkButton>

							</div>
						</div>
					</div>
					<asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true"
						EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
						<Columns>
							<asp:TemplateField HeaderText="#">
								<ItemTemplate>
									<%# Container.DataItemIndex + 1 %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Order ID">
								<ItemTemplate>
									<%# Eval("OrderID") %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Customer Name">
								<ItemTemplate>
									<%# Eval("CustomerName") %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Mobile Number">
								<ItemTemplate>
									<%# Eval("MobileNumber") %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="ProductName">
								<ItemTemplate>
									<%# Eval("ProductName") %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Details">
								<ItemTemplate>
									<%# Eval("ProductWeigth")+" kg * " + Eval("ProductUnitPrice") + "="+ Eval("TotalCost") %>
								</ItemTemplate>
							</asp:TemplateField>
							<%--	<asp:TemplateField HeaderText="Deleivered To">
								<ItemTemplate>
									<%# Eval("Taluka") + "," + Eval("District") %>
								</ItemTemplate>
							</asp:TemplateField>--%>
							<asp:TemplateField HeaderText="Supplier Name">
								<ItemTemplate>
									<%# Eval("AssignedToName") %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Order Date">
								<ItemTemplate>
									<%# (Eval("OrderDate")) %>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Status">
								<ItemTemplate>
									<span runat="server" id="lblAvailableStock" class="badge bg-green"><%# Eval("OrderStatus") %></span>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Order Type">
								<ItemTemplate>
									<span runat="server" id="lblAvailableStock" class='<%# (Convert.ToString(Eval("OrderType"))) %>'><%# Eval("OrderType") %></span>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Action">
								<ItemTemplate>
									<a href="new-order.aspx?oid=<%# Eval("OrderID") %>&id=<%#  Eval("CustomerID") %>" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>
									<asp:LinkButton runat="server" CausesValidation="false" CommandName="DeleteOrder" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandArgument='<%#  Eval("OrderID") + "$" + Eval("OrderStatus") %>' CssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></asp:LinkButton>
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
					</asp:GridView>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
