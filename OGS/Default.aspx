<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OGS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>

    <div>
        <asp:ListView ID="lvCategories" runat="server" ItemType="OGS.Models.CategoriesModel" SelectMethod="lvCategories_GetData">
            <ItemTemplate>
                <div class="homecats">
                    <a href="/ProductsList.aspx?id=<%#: Item.CategoryID %>">
                    <%#: Item.CategoryName %>
                    </a>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>

</asp:Content>
