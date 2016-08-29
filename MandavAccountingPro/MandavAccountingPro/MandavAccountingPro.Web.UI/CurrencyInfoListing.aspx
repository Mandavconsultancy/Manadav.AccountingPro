<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CurrencyInfoListing.aspx.cs" Inherits="MandavAccountingPro.Web.UI.Cur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                <svg class="glyph stroked home">
                    <use xlink:href="#stroked-home"></use></svg></a></li>
            <li class="active">Icons</li>
        </ol>
    </div>
    <div class="col-md-12">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Currency</h1>
            </div>
        </div>
        <!--/.row-->


        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Currency</div>
                    <div class="panel-body">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                                <tr>



                                    <th>Currency Name</th>
                                    <th>Formal Name</th>
                                    <th>Currency Symbol </th>
                                    <th>Action </th>

                                </tr>
                            </thead>
                            <tbody>
                                <% foreach (var item in lstCur)
                                   {%>
                                <tr>
                                    <td class="center"><%= item.CurrencyFormalName %></td>
                                    <td class="center"><%= item.CurrencyShortName %></td>
                                    <td class="center"><%= item.CurrencySymbol %></td>

                                    <td class="center">


                                        <a class="btn btn-info" href="#">
                                            <i class="icon-edit icon-white"></i>
                                            Delete
                                        </a>
                                        <a class="btn btn-danger" href="EditCurrency.aspx">
                                            <i class="icon-trash icon-white"></i>Edit
                                        </a>

                                    </td>

                                </tr>

                                <%}%>
                                
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
            <!-- /.col-->
        </div>
        <!-- /.row -->

    </div>
    <!--/.main-->


</asp:Content>
