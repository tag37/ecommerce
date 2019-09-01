<%@ Page Language="C#" MasterPageFile="~/view/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="manage-customer.aspx.cs" Inherits="admin_BigKisan.view.manage_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    <section class="content-header">
        <h1>Manage Customer
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Manage Customer</li>
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
                            <div class="col-md-12">
                                <div class="form-group text-right">
                                    <br />
                                    <a href="add-customer.aspx" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Customer</a>
                                </div>
                                <div class="table-responsive table-bordered">
                                    <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
                                            <asp:GridView runat="server" ID="dgCustomerList" AutoGenerateColumns="false" CssClass="table table-bordered table-striped" ShowHeaderWhenEmpty="true"
                                                EmptyDataText="No data available" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red" PageSize="10" AllowPaging="True" OnRowCommand="dgCustomerList_OnRowCommand">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr No" HeaderStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex+1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Name" HeaderStyle-Width="15%">
                                                        <ItemTemplate>
                                                            <span><%# Eval("CustomerName") %></span>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Mobile number" HeaderStyle-Width="10%">
                                                        <ItemTemplate>
                                                            <%# Eval("ContactNo") %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Email " HeaderStyle-Width="10%">
                                                        <ItemTemplate>
                                                            <%# Eval("EmailId ") %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Action" HeaderStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <div align="center">
                                                                <asp:LinkButton runat="server" CausesValidation="false" CommandName="Edit" CommandArgument='<%# Eval("CustomerId") %>' CssClass=""><i class="fa fa-edit text-blue"></i></asp:LinkButton>
                                                                <asp:LinkButton runat="server" CausesValidation="false" OnClientClick="if ( ! DeleteConfirmation()) return false;" CommandName="Delete" CommandArgument='<%# Eval("CustomerId") + "$" + Eval("CustomerName") %>'><i class="fa fa-trash text-red"></i></asp:LinkButton>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle CssClass="gridview" HorizontalAlign="Right"></PagerStyle>
                                            </asp:GridView>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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
