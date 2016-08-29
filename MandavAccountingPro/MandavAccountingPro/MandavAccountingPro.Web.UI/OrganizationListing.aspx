<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="OrganizationListing.aspx.cs" Inherits="MandavAccountingPro.Web.UI.OrganizationListing" %>

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
                <h1 class="page-header">Organization</h1>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Organization</div>
                    <div class="panel-body">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                                <tr>
                                    <th>Org Name</th>
                                    <th>Mailing Name</th>
                                    <th>Website</th>
                                    <th>Country</th>
                                    <th>Sale Tax No</th>
                                    <th>vat</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% foreach (var item in lstOrg)
                                   {%>
                                <tr>
                                    <td><%= item.OrgName %></td>
                                    <td class="center"><%= item.OrgMailingName %></td>
                                    <td class="center"><%= item.OrgWebsite %></td>
                                    <td class="center"><%= item.CountryName %></td>
                                    <td class="center"><%= item.OrgSaleTaxNo %>></td>
                                    <td class="center"><%= item.OrgVatID %>></td>
                                    <td class="center">

                                        <a class="btn btn-info" href="organization.aspx">
                                            <i class="icon-edit icon-white"></i>
                                            Edit                                            
									</a>
                                        <a class="btn btn-danger" href="organization.aspx">
                                            <i class="icon-trash icon-white"></i>
                                            Delete
									</a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>

        </div>
    </div>








</asp:Content>

