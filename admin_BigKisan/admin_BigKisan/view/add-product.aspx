<%@ Page Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="add-product.aspx.cs" Inherits="admin_BigKisan.view.add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
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
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnSubmit" />
                        </Triggers>
                        <ContentTemplate>
                            <div class="box-body">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Product Name</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtProductName" placeholder="Product Name" />
                                        <asp:HiddenField runat="server" ID="hdnTxtProduct" />
                                        <asp:RequiredFieldValidator ID="rfv" runat="Server" ControlToValidate="txtProductName" ErrorMessage="Product Name is required" ForeColor="Red" Display="Dynamic" />
                                    </div>
                                    <div class="form-group">
                                        <label>Category</label>
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCategory" placeholder="Category" DataSourceID="dataSourceDdlCategory" DataTextField="CategoryName" DataValueField="CategoryId" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_OnSelectedIndexChanged">
                                            <Items>
                                                <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                            </Items>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="dataSourceDdlCategory" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="dbo.spCategoriesGet" SelectCommandType="StoredProcedure" runat="server"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCategory" ErrorMessage="Please select category" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Brand</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtBrand" placeholder="Brand" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBrand" ErrorMessage="Brand is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>SKU</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSKU" placeholder="SKU" />
                                    </div>
                                    <div class="form-group">
                                        <label>Short Description</label>
                                        <asp:TextBox TextMode="MultiLine" runat="server" CssClass="form-control" ID="txtShortDesc" placeholder="Short Description" />
                                    </div>

                                    <div class="form-group">
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
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlSupplier" ErrorMessage="Please select supplier" ForeColor="Red" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPrice" placeholder="Price" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMRP" ErrorMessage="MRP is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ValidationExpression="(^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)" ControlToValidate="txtMRP" Display="Dynamic" ErrorMessage="Incorrect Price" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>MRP</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtMRP" placeholder="MRP" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMRP" ErrorMessage="MRP is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ValidationExpression="(^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)" ControlToValidate="txtMRP" Display="Dynamic" ErrorMessage="Incorrect MRP" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Available Stock</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStock" placeholder="Available Stock" />
                                        <asp:RegularExpressionValidator runat="server" ValidationExpression="(^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)" ControlToValidate="txtStock" Display="Dynamic" ErrorMessage="Incorrect Stock" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Product Image</label>
                                        <asp:FileUpload runat="server" ID="fileUploadProduct" CssClass="form-control" />
                                        <asp:HiddenField runat="server" ID="hiddenFileUpload" />
                                        <asp:Image runat="server" ID="imgProduct" Height="200px" Width="200px" Visible="False" />
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:UpdatePanel runat="server" ID="upProductAttributes">
                        <ContentTemplate>
                            <div class="box-body">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Product Attribute</label>
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlAttributes" DataSourceID="sqlProductAttributes" DataTextField="AttributeName" DataValueField="AttributeId" AppendDataBoundItems="false">
                                            <Items>
                                                <asp:ListItem Selected="True" Value="0" Text="--- Select ---"></asp:ListItem>
                                            </Items>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="sqlProductAttributes"
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            SelectCommand="SELECT a.AttributeId,a.AttributeName from tblCategoryAttributes CA INNER JOIN tblCategory T ON T.CategoryId = CA.CategoryId INNER JOIN tblAttribute A ON A.AttributeId= CA.AttributeId WHERE CA.CategoryId = @Category"
                                            SelectCommandType="Text" runat="server">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlCategory" PropertyName="SelectedValue" Name="Category" DefaultValue="0" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Value</label>
                                        <div class="input-group">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtAttributeValue" placeholder="Value" />
                                            <div class="input-group-btn">
                                                <div class="btn-group" role="group">
                                                    <asp:LinkButton runat="server" data-placement="top" title="Add field" class="btn btn-primary" ID="btnAddFields" CausesValidation="false" OnClick="btnAddFields_OnClick"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="box-body">
                                <div class="col-md-8">

                                    <asp:GridView runat="server" ID="gvAttributes" AutoGenerateColumns="false" CssClass="table table-bordered table-striped"
                                        DataKeyNames="AttributeId" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr No">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Attribute Name">
                                                <ItemTemplate>
                                                    <%# Eval("AttributeName") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Attribute Value">
                                                <ItemTemplate>
                                                    <%# Eval("AttributeValue") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" CausesValidation="false" ID="btnDeleteAttribute" OnClick="btnDeleteAttribute_OnClick" CssClass="btn"><i class="fa fa-trash-o text-red"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>

                                </div>
                            </div>
                            <div class="box-body">
                                <div class="col-md-12">
                                    <div class="form-group text-right">
                                        <asp:LinkButton runat="server" ID="btnSubmit" OnClick="btnSubmit_OnClick" CssClass="btn btn-primary"><i class="fa fa-check"></i>&nbsp;Submit</asp:LinkButton>
                                        <asp:LinkButton runat="server" ID="btnReset" CssClass="btn btn-warning" OnClick="btnReset_OnClick" CausesValidation="False"><i class="fa fa-times"></i>&nbsp;Cancel</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavascriptContent" runat="server">
</asp:Content>
