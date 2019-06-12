<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-category.aspx.cs" Inherits="admin_BigKisan.view.manage_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">
        <h1>Manage Categories
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Manage Categories</li>
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
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label runat="server" for="exampleInputPassword1">Parent Category</asp:Label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-info"></i>
                                            </div>
                                            <asp:DropDownList runat="server" type="text" class="form-control" ID="ddlParentCategory">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label runat="server" for="exampleInputPassword1">Category Name *</asp:Label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-info"></i>
                                            </div>
                                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtName" placeholder="Category Name" />
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" ErrorMessage="This field cant be empty."></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label runat="server" for="exampleInputPassword1">.</asp:Label>
                                    <div class="form-group">
                                        <asp:LinkButton runat="server" CssClass="btn btn-success" ID="lbtnSubmit"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
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
                                    <div class="box-body table-responsive">
                                        <asp:GridView runat="server" ID="dgvDetails" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true"
                                            EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Parent Category">
                                                    <ItemTemplate>
                                                        <%# Eval("PName") %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Category Name">
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
