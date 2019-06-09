<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-supplier.aspx.cs" Inherits="admin_BigKisan.view.manage_supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Manage Suppliers
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Manage Supplier</li>
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-body">
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputEmail1">Supplier Name</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Supplier Name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Mobile Number</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Mobile Number">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">District</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="District">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Company Logo</label>
								<asp:FileUpload runat="server" ID="fupCompanyLogo" CssClass="form-control" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">State</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="State">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Village</label>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Village">
							</div>
							<div class="form-group">
								<br />
								<asp:LinkButton runat="server" ID="lbtnSubmit" CssClass="btn btn-primary"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
								<asp:LinkButton runat="server" ID="lbtnReset" CssClass="btn btn-warning"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="box-header with-border">
					<h3 class="box-title">Exisitng Suppliers</h3>
				</div>
				<div class="box box-primary">
					<div class="box-body">
						<div class="box-body table-responsive">
							<asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true"
								EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" ShowHeader="true" EmptyDataRowStyle-ForeColor="Red">
								<Columns>
									<asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
										<ItemTemplate>
											<%#Container.DataItemIndex+1 %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Suppplier Name">
										<ItemTemplate>
											<%# Eval("CustomerName") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Email Address">
										<ItemTemplate>
											<%# Eval("CustomerName") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Mobile Number">
										<ItemTemplate>
											<%# Eval("MobileNumber") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="District">
										<ItemTemplate>
											<%# Eval("District") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Taluka/Village">
										<ItemTemplate>
											<%# Eval("Taluka") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Last Updated">
										<ItemTemplate>
											<%# Convert.ToDateTime(Eval("ModifiedOn")).ToString("dd-MMM-yyyy hh:MM:ss tt") %>
										</ItemTemplate>
									</asp:TemplateField>
									<asp:TemplateField HeaderText="Action">
										<ItemTemplate>
											<asp:LinkButton runat="server" CommandName="EditSupplier" CausesValidation="false" CommandArgument='<%#  Eval("CustomerID") + "$" +  Eval("CustomerName") + "$" + Eval("MobileNumber") + "$" + Eval("StateName") + "$" + Eval("District") + "$" +Eval("Taluka")+ "$" +Eval("Address")+"$"+Eval("EnquiryDetails") %>' CssClass="btn btn-primary btn-xs"><i class="fa fa-edit"></i></asp:LinkButton>
											<asp:LinkButton runat="server" CommandName="DeleteSupplier" CausesValidation="false" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandArgument='<%#  Eval("CustomerID") %>' CssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></asp:LinkButton>
										</ItemTemplate>
									</asp:TemplateField>
								</Columns>
							</asp:GridView>
							<asp:HiddenField runat="server" ID="hdnCustomerID" Value="0" />
						</div>
					</div>
				</div>
			</div>
		</div>



	</section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
