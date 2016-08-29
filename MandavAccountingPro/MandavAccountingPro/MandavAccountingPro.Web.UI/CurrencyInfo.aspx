<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CurrencyInfo.aspx.cs" Inherits="MandavAccountingPro.Web.UI.addcur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <ol class="breadcrumb">
        <li><a href="#">
            <svg class="glyph stroked home">
                <use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active">Icons</li>
    </ol>
    <div class="col-lg-12" style="background-color: white;">
        <h1 class="page-header">Currency Editor</h1>
        <hr />

        <div class="col-md-5">
            <div class="form-group">
                <label>Currency Name</label>
                <asp:TextBox ID="txtCurrencyShortName" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label>Formal Name</label>
                <asp:TextBox ID="txtFormalName" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label>Currency Symbol</label>
                <asp:TextBox ID="txtCurrencySymbol" runat="server" class="form-control" type="text" Style="width: 250px; border: 1px solid #333;" />
            </div>
            <div class="col-md-12" style="background-color: white; padding-left: 100px;">
                <asp:Button ID="btnAddCurrency" runat="server" OnClick="btnAddCurrency_Click" class="btn btn-primary" Text="Addcurrency" Width="140px"></asp:Button>

                <a class="btn btn-primary " href="#">
                    <i class="icon-trash icon-white"></i>
                    Cencel
									</a>
            </div>
        </div>
        <div class="col-md-5">
            <asp:Label id="lblMsg" runat="server" CssClass="alert bg-warning"></asp:Label>
        </div>
    </div>

</asp:Content>
