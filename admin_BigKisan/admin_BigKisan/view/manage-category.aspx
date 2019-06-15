<%@ Page Title="" Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-category.aspx.cs" Inherits="admin_BigKisan.view.manage_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
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
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label runat="server" for="exampleInputPassword1">Parent Category</asp:Label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-info"></i>
                                                    </div>
                                                    <asp:DropDownList EnableViewState="True" runat="server" type="text" class="form-control" ID="ddlParentCategory" DataTextField="Name" DataValueField="Id" DataSourceID="dataSourceDdlParentCategory">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="dataSourceDdlParentCategory" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spParentCategoriesGet" SelectCommandType="StoredProcedure" runat="server"></asp:SqlDataSource>
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
                                                    <asp:TextBox runat="server" type="text" class="form-control" ID="txtCategoryName" placeholder="Category Name" />
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategoryName" ForeColor="Red" Display="Dynamic" ErrorMessage="This field cant be empty."></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label runat="server" for="exampleInputPassword1">.</asp:Label>
                                            <div class="form-group">
                                                <asp:LinkButton runat="server" CssClass="btn btn-success" ID="btnSubmit" OnClick="btnSubmit_OnClick"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
                                        <asp:UpdatePanel runat="server" ID="updatePanelGvCategoryList">
                                            <ContentTemplate>
                                                <asp:GridView runat="server" ID="gvCategoryList" AutoGenerateColumns="false" CssClass="table table-condensed" ShowHeaderWhenEmpty="true" DataSourceID="DataSourceGvCategoryList"
                                                    DataKeyNames="CategoryId" EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red" OnRowCommand="gvCategoryList_OnRowCommand">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
                                                            <ItemTemplate>
                                                                <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Parent Category">
                                                            <ItemTemplate>
                                                                <%# Eval("ParentCategory") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Category Name">
                                                            <ItemTemplate>
                                                                <%# Eval("CategoryName") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" CausesValidation="false" CommandName="EditCategory" CommandArgument='<%# Eval("CategoryId") + "$" + Eval("CategoryName") %>' CssClass="btn btn-primary btn-xs"><i class="fa fa-edit"></i></asp:LinkButton>
                                                                <asp:LinkButton runat="server" CausesValidation="false" CommandName="DeleteCategory" CommandArgument='<%# Eval("CategoryId") %>' CssClass="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                                <%--OnClientClick="if ( ! DeleteConfirmation()) return false;" --%>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="DataSourceGvCategoryList" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spCategoriesGet" SelectCommandType="StoredProcedure" runat="server"></asp:SqlDataSource>
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
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
