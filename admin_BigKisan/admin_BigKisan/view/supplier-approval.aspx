<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="supplier-approval.aspx.cs" Inherits="admin_BigKisan.view.supplier_approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<section class="content-header">
		<h1>Suppliers Pending Approvals
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
			<li class="active">Supplier Approvals</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Suppplier Name 1</h3>
					</div>
					<div class="box-body">
						<div class="row">
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label1" CssClass="form-control">7709647237</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label2" CssClass="form-control">supplier@example.com</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label3" CssClass="form-control">State</asp:Label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label4" CssClass="form-control">DIstrict</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label5" CssClass="form-control">Village</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="lblName" CssClass="form-control">Supplier Address</asp:Label>
							</div>
						</div>
					</div>
					<div class="box-footer text-right">
						<asp:LinkButton runat="server" ID="lbtnSubmit" CssClass="btn btn-primary"><i class="fa fa-check"></i>&nbsp;Accecpt</asp:LinkButton>
						<asp:LinkButton runat="server" ID="lbtnReset" CssClass="btn btn-danger"><i class="fa fa-times"></i>&nbsp;Decline</asp:LinkButton>
					</div>

					<!-- /.box-body -->
				</div>
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Suppplier Name 2</h3>
					</div>
					<div class="box-body">
						<div class="row">
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label6" CssClass="form-control">7709647237</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label7" CssClass="form-control">supplier@example.com</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label8" CssClass="form-control">State</asp:Label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label9" CssClass="form-control">DIstrict</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label10" CssClass="form-control">Village</asp:Label>
							</div>
							<div class="col-md-4">
								<asp:Label runat="server" ID="Label11" CssClass="form-control">Supplier Address</asp:Label>
							</div>
						</div>
					</div>
					<div class="box-footer text-right">
						<asp:LinkButton runat="server" ID="LinkButton1" CssClass="btn btn-primary"><i class="fa fa-check"></i>&nbsp;Accecpt</asp:LinkButton>
						<asp:LinkButton runat="server" ID="LinkButton2" CssClass="btn btn-danger"><i class="fa fa-times"></i>&nbsp;Decline</asp:LinkButton>
					</div>

					<!-- /.box-body -->
				</div>
			</div>
		</div>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
