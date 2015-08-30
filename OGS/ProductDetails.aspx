<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="OGS.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="fvProductDetail" runat="server" ItemType="OGS.Models.ProductsModel" SelectMethod ="fvProductDetail_GetItem" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="/Catalog/Images/<%#:Item.ProductImage %>" style="border:solid; height:300px" alt="<%#:Item.ProductName %>"/>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br /><%#:Item.ProductLongDescription %>
                        <br />
                        <span><b>Price:</b><%#:Item.ProductPrice %></span>
                        <br />
                        <span><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
