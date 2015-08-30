<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="OGS.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="AddProds">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductShortDescription" HeaderText="ProductShortDescription" SortExpression="ProductShortDescription" />
            <asp:BoundField DataField="ProductLongDescription" HeaderText="ProductLongDescription" SortExpression="ProductLongDescription" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductDiscountPrice" HeaderText="ProductDiscountPrice" SortExpression="ProductDiscountPrice" />
            <asp:BoundField DataField="QuantityAvailable" HeaderText="QuantityAvailable" SortExpression="QuantityAvailable" />
            <asp:BoundField DataField="QuantityAllowedonUI" HeaderText="QuantityAllowedonUI" SortExpression="QuantityAllowedonUI" />
            <asp:BoundField DataField="QuantityMaxAllowedperUser" HeaderText="QuantityMaxAllowedperUser" SortExpression="QuantityMaxAllowedperUser" />
            <asp:BoundField DataField="QuantitySold" HeaderText="QuantitySold" SortExpression="QuantitySold" />
            <asp:BoundField DataField="QuantityRemaining" HeaderText="QuantityRemaining" SortExpression="QuantityRemaining" />
            <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
            <asp:CheckBoxField DataField="DiscountAllowed" HeaderText="DiscountAllowed" SortExpression="DiscountAllowed" />
            <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
            <asp:CheckBoxField DataField="IsTopProduct" HeaderText="IsTopProduct" SortExpression="IsTopProduct" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            <asp:CheckBoxField DataField="IsOutofStock" HeaderText="IsOutofStock" SortExpression="IsOutofStock" />
            <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" SortExpression="CreatedOn" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="ModifiedOn" HeaderText="ModifiedOn" SortExpression="ModifiedOn" />
            <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
            <asp:CheckBoxField DataField="OffersAllowed" HeaderText="OffersAllowed" SortExpression="OffersAllowed" />
        </Columns>
    </asp:GridView>
    <table>
        <tr>
            <td>Name<br />
                <asp:TextBox runat="server" ID="txtName" MaxLength="100"></asp:TextBox>
            </td>
            <td>Short Description<br />
                <asp:TextBox runat="server" ID="txtShortDesc" MaxLength="250"></asp:TextBox>
            </td>
            <td>Long Description<br />
                <asp:TextBox runat="server" ID="txtLongDesc" MaxLength="8000"></asp:TextBox>
            </td>            
            <td>Product Price<br />
                <asp:TextBox runat="server" ID="txtProductPrice"></asp:TextBox>
            </td>
            <td>Product DiscountPrice<br />
                <asp:TextBox runat="server" ID="txtProductDiscountPrice"></asp:TextBox>
            </td>
            <td>Quantity Available<br />
                <asp:TextBox runat="server" ID="txtQuantityAvailable"></asp:TextBox>
            </td>
            <td>QuantityAllowedonUI<br />
                <asp:CheckBox runat="server" ID="chkQuantityAllowedonUI"></asp:CheckBox>
            </td>
            <td>QuantityMaxAllowedperUser<br />
                <asp:TextBox runat="server" ID="txtQuantityMaxAllowedperUser"></asp:TextBox>
            </td>
            <td>QuantitySold<br />
                <asp:TextBox runat="server" ID="txtQuantitySold"></asp:TextBox>
            </td>
            <td>QuantityRemaining<br />
                <asp:TextBox runat="server" ID="txtQuantityRemaining"></asp:TextBox>
            </td>
            <td>ProductImage<br />
                <asp:TextBox runat="server" ID="txtProductImage"></asp:TextBox>
            </td>
            <td>DiscountAllowed<br />
                <asp:CheckBox runat="server" ID="chkDiscountAllowed"></asp:CheckBox>
            </td>
            <td>IsActive<br />
                <asp:CheckBox runat="server" ID="chkIsActive"></asp:CheckBox>
            </td>
            <td>IsTopProduct<br />
                <asp:CheckBox runat="server" ID="chkIsTopProduct"></asp:CheckBox>
            </td>            
            <td>Rating<br />
                <asp:TextBox runat="server" ID="txtRating"></asp:TextBox>
            </td>
            <td>IsOutofStock<br />
                <asp:CheckBox runat="server" ID="chkIsOutofStock"></asp:CheckBox>
            </td>
            <td>CategoryID<br />
                <asp:TextBox runat="server" ID="ddlCategoryID"></asp:TextBox>
            </td>
            <td>CreatedBy<br />
                <asp:TextBox runat="server" ID="txtCreatedBy"></asp:TextBox>
            </td>
            <td>OrderId<br />
                <asp:TextBox runat="server" ID="txtOrderId" MaxLength="4"></asp:TextBox>
            </td>
            <td>OffersAllowed<br />
                <asp:CheckBox runat="server" ID="chkOffersAllowed"></asp:CheckBox>
            </td>
            <td><asp:Button runat="server" ID="btnAddProduct" Text="Add Product" OnClick="Insert" /></td>
        </tr>
    </table>
    <asp:SqlDataSource ID="AddProds" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [ProductsModels] ORDER BY [CategoryID], [OrderId], [ProductName]" 
        InsertCommand="INSERT INTO ProductsModels(ProductName, ProductShortDescription, ProductLongDescription, ProductPrice, ProductDiscountPrice, QuantityAvailable, QuantityAllowedonUI, QuantityMaxAllowedperUser, QuantitySold, QuantityRemaining, ProductImage, DiscountAllowed, IsActive, IsTopProduct, Rating, IsOutofStock, CreatedOn, CreatedBy, CategoryID, OrderId, OffersAllowed) VALUES (@ProductName, @ProductShortDescription, @ProductLongDescription, @ProductPrice, @ProductDiscountPrice, @QuantityAvailable, @QuantityAllowedonUI, @QuantityMaxAllowedperUser, @QuantitySold, @QuantityRemaining, @ProductImage, @DiscountAllowed, @IsActive, @IsTopProduct, @Rating, @IsOutofStock, GETDATE(), @CreatedBy, @CategoryID, @OrderId, @OffersAllowed)" 
        UpdateCommand="UPDATE ProductsModels SET ProductName = @ProductName, ProductShortDescription = @ProductShortDescription, ProductLongDescription = @ProductLongDescription, ProductPrice = @ProductPrice, ProductDiscountPrice = @ProductDiscountPrice, QuantityAvailable = @QuantityAvailable, QuantityAllowedonUI = @QuantityAllowedonUI, QuantityMaxAllowedperUser = @QuantityMaxAllowedperUser, QuantitySold = @QuantitySold, QuantityRemaining = @QuantityRemaining, ProductImage = @ProductImage, DiscountAllowed = @DiscountAllowed, IsActive = @IsActive, IsTopProduct = @IsTopProduct, Rating = @Rating, IsOutofStock = @IsOutofStock, ModifiedOn = GETDATE(), ModifiedBy = @ModifiedBy, CategoryID = @CategoryID, OrderId = @OrderId, OffersAllowed = @OffersAllowed WHERE (ProductID = @ProductID)" 
        DeleteCommand="DELETE FROM ProductsModels WHERE (ProductID = @ProductID)">
        <InsertParameters>
            <asp:ControlParameter Name="ProductName" ControlID="txtName" Type="String" />
            <asp:ControlParameter Name="ProductShortDescription" ControlID="txtShortDesc" Type="String" />
            <asp:ControlParameter Name="ProductLongDescription" ControlID="txtLongDesc" Type="String" />
            <asp:ControlParameter Name="ProductPrice" ControlID="txtProductPrice" Type="Decimal" />
            <asp:ControlParameter Name="ProductDiscountPrice" ControlID="txtProductDiscountPrice" Type="Decimal" />
            <asp:ControlParameter Name="QuantityAvailable" ControlID="txtQuantityAvailable" Type="Int32" />
            <asp:ControlParameter Name="QuantityAllowedonUI" ControlID="chkQuantityAllowedonUI" Type="Boolean" />
            <asp:ControlParameter Name="QuantityMaxAllowedperUser" ControlID="txtQuantityMaxAllowedperUser" Type="Int32" />
            <asp:ControlParameter Name="QuantitySold" ControlID="txtQuantitySold" Type="Int32" />
            <asp:ControlParameter Name="QuantityRemaining" ControlID="txtQuantityRemaining" Type="Int32" />
            <asp:ControlParameter Name="ProductImage" ControlID="txtProductImage" Type="String" />
            <asp:ControlParameter Name="DiscountAllowed" ControlID="chkDiscountAllowed" Type="Boolean" />
            <asp:ControlParameter Name="IsActive" ControlID="chkIsActive" Type="Boolean" />
            <asp:ControlParameter Name="IsTopProduct" ControlID="chkIsTopProduct" Type="Boolean" />
            <asp:ControlParameter Name="Rating" ControlID="txtRating" Type="Int32" />
            <asp:ControlParameter Name="IsOutofStock" ControlID="chkIsOutofStock" Type="Boolean" />            
            <asp:ControlParameter Name="CreatedBy" ControlID="txtCreatedBy" Type="Int32" />
            <asp:ControlParameter Name="CategoryID" ControlID="ddlCategoryID" Type="Int32" />
            <asp:ControlParameter Name="OrderId" ControlID="txtOrderId" Type="Int32" />
            <asp:ControlParameter Name="OffersAllowed" ControlID="chkOffersAllowed" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductShortDescription" Type="String" />
            <asp:Parameter Name="ProductLongDescription" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductDiscountPrice" Type="Decimal" />
            <asp:Parameter Name="QuantityAvailable" Type="Int32" />
            <asp:Parameter Name="QuantityAllowedonUI" Type="Boolean" />
            <asp:Parameter Name="QuantityMaxAllowedperUser" Type="Int32" />
            <asp:Parameter Name="QuantitySold" Type="Int32" />
            <asp:Parameter Name="QuantityRemaining" Type="Int32" />
            <asp:Parameter Name="ProductImage" Type="String" />
            <asp:Parameter Name="DiscountAllowed" Type="Boolean" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
            <asp:Parameter Name="IsTopProduct" Type="Boolean" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="IsOutofStock" Type="Boolean" />
            <asp:Parameter Name="CreatedBy" Type="Int32" />            
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="OrderId" Type="Int32" />
            <asp:Parameter Name="OffersAllowed" Type="Boolean" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
