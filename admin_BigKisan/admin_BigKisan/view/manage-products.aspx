<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-products.aspx.cs" Inherits="admin_BigKisan.view.manage_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label for="exampleInputEmail1">Supplier Name</label>
										<asp:DropDownList runat="server" type="text" class="form-control" ID="ddlParentCategory">
											<asp:ListItem>Select</asp:ListItem>
											<asp:ListItem>Suppplier 1</asp:ListItem>
											<asp:ListItem>Suppplier 2</asp:ListItem>
											<asp:ListItem>Suppplier 3</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>
								<div class="col-md-2">
									<asp:Label runat="server" for="exampleInputPassword1">.</asp:Label>
									<div class="form-group">
										<asp:LinkButton runat="server" CssClass="btn btn-success" Style="width: 100%" ID="lbtnSubmit"><i class="fa fa-check"></i>&nbsp;Filter Products</asp:LinkButton>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="box-body table-responsive">
										<asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true"
											EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
											<Columns>
												<asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
													<ItemTemplate>
														<%#Container.DataItemIndex+1 %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Category">
													<ItemTemplate>
														<%# Eval("PName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Product Name">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Product Price">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Product MRP">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Product Cost">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Supplier">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Image">
													<ItemTemplate>
														<%# Eval("CategoryName") %>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%">
													<ItemTemplate>
														<asp:LinkButton runat="server" CausesValidation="false" CommandName="EditCategory" CommandArgument='<%# Eval("CategoryID") + "$" + Eval("CategoryName") %>' CssClass="btn btn-primary btn-xs"><i class="fa fa-edit"></i></asp:LinkButton>
														<asp:LinkButton runat="server" CausesValidation="false" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandName="DeleteCategory" CommandArgument='<%# Eval("CategoryID") + "$" + Eval("CategoryName") %>' CssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></asp:LinkButton>
													</ItemTemplate>
												</asp:TemplateField>
											</Columns>
										</asp:GridView>
										<asp:HiddenField runat="server" ID="hdnCategoryID" />
									</div>
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
