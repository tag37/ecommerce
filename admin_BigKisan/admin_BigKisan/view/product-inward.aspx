<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="product-inward.aspx.cs" Inherits="admin_BigKisan.view.product_inward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content-header">
		<h1>Inwards Product (Add Stock)
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Inwards Product</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<!-- form start -->
					<div role="form">
						<div class="box-body">
							<div class="row">
								<div class="col-md-12">
									<div class="alert alert-success alert-dismissible" runat="server" id="divSuccess" visible="false">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
										<h4><i class="icon fa fa-check"></i>Alert!</h4>
										Record updated successfully in system.
									</div>
									<div class="alert alert-danger alert-dismissible" runat="server" id="divError" visible="false">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
										<h4><i class="icon fa fa-ban"></i>Alert!</h4>
										Record already exist in system with this mobile number.
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<asp:Label runat="server" for="exampleInputPassword1">Supplier Name 
													<span class="pull-right">
														<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlSpplier" InitialValue="-1" ForeColor="Red" Display="Dynamic" ErrorMessage="* Required"></asp:RequiredFieldValidator></span>
										</asp:Label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-info"></i>
											</div>
											<asp:DropDownList runat="server" type="text" class="form-control" ID="ddlSpplier">
												<asp:ListItem>Select</asp:ListItem>
												<asp:ListItem>Suppplier 1</asp:ListItem>
												<asp:ListItem>Suppplier 2</asp:ListItem>
												<asp:ListItem>Suppplier 3</asp:ListItem>
											</asp:DropDownList>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<asp:Label runat="server" for="exampleInputPassword1">Product Name 
													<span class="pull-right">
														<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlProduct" InitialValue="-1" ForeColor="Red" Display="Dynamic" ErrorMessage="* Required"></asp:RequiredFieldValidator></span>
										</asp:Label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-info"></i>
											</div>
											<asp:DropDownList CssClass="form-control" runat="server" ID="ddlProduct">
											</asp:DropDownList>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<asp:Label runat="server" for="exampleInputPassword1">Available Stock</asp:Label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-info"></i></span>
											<asp:TextBox runat="server" type="text" class="form-control" ID="txtAvailableStock" placeholder="0.0" disabled />
											<span class="input-group-addon">peice</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<asp:Label runat="server" for="exampleInputPassword1">New Stock
													<span class="pull-right">
														<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewAddedStock" ForeColor="Red" Display="Dynamic" ErrorMessage="* Required"></asp:RequiredFieldValidator></span>
										</asp:Label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-info"></i></span>
											<asp:TextBox runat="server" type="text" onkeypress="return isNumberKey(event)" MaxLength="6" class="form-control" ID="txtNewAddedStock" placeholder="inward stock here" />
											<span class="input-group-addon">peice</span>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<asp:Label runat="server" for="exampleInputPassword1">Rate
													<span class="pull-right">
														<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRate" ForeColor="Red" Display="Dynamic" ErrorMessage="* Required"></asp:RequiredFieldValidator></span>
										</asp:Label>
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-info"></i></span>
											<asp:TextBox runat="server" type="text" onkeypress="return isNumberKey(event)" MaxLength="6" class="form-control" ID="txtRate" placeholder="inward item rate" />
											<span class="input-group-addon"><i class="fa fa-rupee"></i></span>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<asp:Label runat="server" for="exampleInputPassword1">.</asp:Label>
									<div class="form-group text-right">
										<asp:LinkButton runat="server" CssClass="btn btn-success" ID="lbtnSubmit"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
										<asp:LinkButton runat="server" ID="LinkButton2" CssClass="btn btn-warning"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<!-- form start -->
					<div role="form">
						<div class="box-body">
							<div class="row">
								<div class="col-md-12">
									<span class="text-red pull-right">Note : Delete will delete this entry and deduct this stock from available stock.</span>
									<asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true"
										EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
										<Columns>
											<asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
												<ItemTemplate>
													<%#Container.DataItemIndex+1 %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Product">
												<ItemTemplate>
													<%# Eval("ProductName") %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Stock">
												<ItemTemplate>
													<%# Convert.ToDateTime(Eval("ModifiedOn")).ToString("dd-MMM-yyyy hh:MM:ss tt") %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Last Available">
												<ItemTemplate>
													<%# Eval("CurrentAvailable") %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Now Added">
												<ItemTemplate>
													<%# Eval("NewAdded") %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Total">
												<ItemTemplate>
													<%# Eval("UpdatedAvailable") %>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%">
												<ItemTemplate>
													<%--<asp:LinkButton runat="server" CommandName="EditCategory" CommandArgument='<%#  Eval("InwardID") + "$" +  Eval("ProductID") + "$" + Eval("CurrentAvailable") + "$" + Eval("NewAdded") + "$" +Eval("UpdatedAvailable") %>' CssClass="btn btn-primary btn-xs"><i class="fa fa-edit"></i></asp:LinkButton>--%>
													<asp:LinkButton runat="server" CommandName="DeleteCategory" CausesValidation="false" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandArgument='<%#  Eval("InwardID")+ "$" + Eval("NewAdded")+ "$" +  Eval("ProductID") %>' CssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateField>
										</Columns>
									</asp:GridView>
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
