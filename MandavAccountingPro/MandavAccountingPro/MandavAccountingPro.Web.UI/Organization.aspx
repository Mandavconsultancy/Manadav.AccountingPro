<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Organization.aspx.cs" Inherits="MandavAccountingPro.Web.UI.Orgenization" %>

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
    <!

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Company Registration Form</div>
                <div class="col-lg-12" style="width: 100%; padding-left: 150px; background-color: white; padding-top: 30px;">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Organization Name</label>
                            <asp:TextBox ID="txtOrgName" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Organization Mailing Name</label>
                            <asp:TextBox ID="txtOrgMailingName" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group" style="width: 250px;">
                            <label>Select Country</label>
                            <select class="form-control" style="border: 1px solid #333;">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                                <option>Option 4</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group" style="width: 250px;">
                            <label>States</label>
                            <select class="form-control" style="border: 1px solid #333;">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                                <option>Option 4</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Pin Code</label>
                            <asp:TextBox ID="txtPinCode" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Phone No</label>
                            <asp:TextBox ID="txtPhoneNo" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Mobile No</label>
                            <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Fax No</label>
                            <asp:TextBox ID="txtFaxNo" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>E-mail</label>
                            <asp:TextBox ID="txtEMail" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Website Name</label>
                            <asp:TextBox ID="txtWebsiteName" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Pan Card No</label>
                            <asp:TextBox ID="txtPanCardNo" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="form-group">
                            <label>Sale Tax No</label>
                            <asp:TextBox ID="txtSaleTaxNo" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <div class="form-group" style="width: 250px;">
                            <label>Select VAT ID</label>
                            <select class="form-control" style="border: 1px solid #333;">
                                <option>4</option>
                                <option>5</option>
                                <option>12.4</option>
                                <option>15.8</option>
                            </select>
                        </div>
                    </div>




                    <div class="panel-heading">
                        <div class="col-md-12" style="background-color: white; padding-left: 500px;">
                            <asp:Button ID="btnAddOrg" runat="server" OnClick="btnAddOrg_Click" class="btn btn-primary" Text="Add Organization" Width="140px"></asp:Button>
                            <a class="btn btn-primary " href="#">
                                <i class="icon-trash icon-white"></i>
                                Cencel
									</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    </div>


    <style>
        label {
            color: black;
        }
    </style>
</asp:Content>
