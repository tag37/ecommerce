<%@ Page Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="add-product.aspx.cs" Inherits="admin_BigKisan.view.add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Product
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Add Product</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <asp:UpdatePanel runat="server" ID="upProduct">
                        <ContentTemplate>
                            <div class="box-body">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Name</label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtProductName" placeholder="Product Name" />
                                            <div class="input-group-btn">
                                                <div class="btn-group" role="group">
                                                    <asp:LinkButton runat="server" data-placement="top" title="search product" type="button" class="btn btn-primary" data-toggle="modal" data-target="#addProducts" ID="LinkButton2" CausesValidation="False"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                        <asp:HiddenField runat="server" ID="hdnTxtProduct" />
                                        <asp:RequiredFieldValidator ID="rfv" runat="Server" ControlToValidate="txtProductName" ErrorMessage="Product Name is required" ForeColor="Red" Display="Dynamic" />
                                    </div>
                                    <div class="form-group">
                                        <label>Category</label>
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCategory" placeholder="Category" DataSourceID="dataSourceDdlCategory" DataTextField="CategoryName" DataValueField="CategoryId" AppendDataBoundItems="True">
                                            <Items>
                                                <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                            </Items>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="dataSourceDdlCategory" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spCategoriesGet" SelectCommandType="StoredProcedure" runat="server"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCategory" ErrorMessage="Please select category" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>SKU</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSKU" placeholder="SKU" />
                                        <asp:RequiredFieldValidator ID="rfSku" runat="Server" ControlToValidate="txtSKU" ErrorMessage="SKU required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Product Image</label>
                                        <asp:FileUpload runat="server" ID="FileUpload1" CssClass="form-control" />
                                    </div>
                                    <div class="form-check">
                                        <asp:CheckBox type="checkbox" CssClass="form-check-input" ID="chkIsNew" runat="server" />
                                        <label class="form-check-label">Is New</label>
                                        <asp:CheckBox type="checkbox" CssClass="form-check-input" ID="chkIsHot" runat="server" />
                                        <label class="form-check-label">Is Hot</label>
                                        <asp:CheckBox type="checkbox" CssClass="form-check-input" ID="chkIsTrending" runat="server" />
                                        <label class="form-check-label">Is Trending</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                    
                                        <label>Supplier</label>
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
                                        <%--<asp:RequiredFieldValidator ID="re1" runat="Server" ControlToValidate="ddlSupplier" InitialValue="0" ErrorMessage="Please select supplier" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPrice" placeholder="Price" />
                                        <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPrice" ErrorMessage="Price is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                                        <%--<asp:RegularExpressionValidator runat="server" ValidationExpression="(^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Incorrect Price" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                    </div>
                                    <div class="form-group">
                                        <label>MRP</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtMRP" placeholder="MRP" />
                                        <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtMRP" ErrorMessage="MRP is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                                       <%-- <asp:RegularExpressionValidator runat="server" ValidationExpression="(^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)" ControlToValidate="txtMRP" Display="Dynamic" ErrorMessage="Incorrect MRP" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <asp:LinkButton runat="server" ID="btnSubmit" OnClick="btnSubmit_OnClick" CssClass="btn btn-primary"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
                                        <asp:LinkButton runat="server" ID="btnReset" CssClass="btn btn-warning" OnClick="btnReset_OnClick" CausesValidation="False"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <div class="modal fade" id="addProducts" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-blue-active">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title text-bold" id="myModalLabel">Products</h4>
                                </div>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-10">
                                                    <div class="form-group">
                                                        <div class="input-group" id="adv-search">
                                                            <asp:TextBox runat="server" ID="txtPName" type="text" CssClass="form-control" placeholder="Search Product" />
                                                            <div class="input-group-btn">
                                                                <div class="btn-group" role="group">
                                                                    <asp:LinkButton runat="server" type="button" class="btn btn-primary" ID="btnSearch" OnClick="btnSearch_OnClick" CausesValidation="False"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></asp:LinkButton>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <asp:GridView runat="server" ID="gvProductList" AutoGenerateColumns="false" CssClass="table table-bordered table-responsive " ShowHeaderWhenEmpty="true" DataSourceID="DataSourceGvProducts" PageSize="10"
                                                DataKeyNames="ProductId" EmptyDataText="No data available">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:HiddenField runat="server" ID="hdfProductId" Value='<%# Eval("ProductId") + "$" + Eval("ProductName")+ "$"+ Eval("CategoryId") %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sr No">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex+1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:RadioButton AutoPostBack="True" runat="server" ID="radioProduct" OnCheckedChanged="radioProduct_OnCheckedChanged"></asp:RadioButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="DataSourceGvProducts" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spProductGetAll" SelectCommandType="StoredProcedure" runat="server">
                                                <SelectParameters>
                                                    <asp:Parameter Name="Dropdown" DefaultValue="1" />
                                                    <asp:ControlParameter Name="SearchText" ControlID="txtPName" PropertyName="Text" DefaultValue="" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:LinkButton ID="btnSelectProduct" OnClick="btnSelectProduct_OnClick" CssClass="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Choose product from search result" runat="server" CausesValidation="False"><span class="glyphicon glyphicon-download" aria-hidden="true"></span>&nbsp; Select
                                            </asp:LinkButton>
                                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close" aria-hidden="true"></i>&nbsp;Close</button>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>

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
