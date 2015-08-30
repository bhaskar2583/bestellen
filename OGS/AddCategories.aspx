<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCategories.aspx.cs" Inherits="OGS.AddCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="AddCat">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="CategoryShortDescription" HeaderText="CategoryShortDescription" SortExpression="CategoryShortDescription" />
            <asp:BoundField DataField="CategoryLongDescription" HeaderText="CategoryLongDescription" SortExpression="CategoryLongDescription" />
            <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
            <asp:CheckBoxField DataField="IsTopCategory" HeaderText="IsTopCategory" SortExpression="IsTopCategory" />
            <asp:CheckBoxField DataField="OffersAllowed" HeaderText="OffersAllowed" SortExpression="OffersAllowed" />
            <asp:BoundField DataField="CategoryImage" HeaderText="CategoryImage" SortExpression="CategoryImage" />
            <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" SortExpression="CreatedOn" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="ModifiedOn" HeaderText="ModifiedOn" SortExpression="ModifiedOn" />
            <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
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
            <td>IsActive<br />
                <asp:CheckBox runat="server" ID="chkIsActive"></asp:CheckBox>
            </td>
            <td>IsTopCategory<br />
                <asp:CheckBox runat="server" ID="chkIsTopCategory"></asp:CheckBox>
            </td>
            <td>OffersAllowed<br />
                <asp:CheckBox runat="server" ID="chkOffersAllowed"></asp:CheckBox>
            </td>
            <td>Image<br />
                <asp:TextBox runat="server" ID="imgCategory"></asp:TextBox>
            </td>
            <td>CreatedBy<br />
                <asp:TextBox runat="server" ID="ddlCreatedBy"></asp:TextBox>
            </td>
            <td>OrderId<br />
                <asp:TextBox runat="server" ID="txtOrderId" MaxLength="4"></asp:TextBox>
            </td>
            <td><asp:Button runat="server" ID="btnCategory" Text="Add Category" OnClick="Insert" /></td>
        </tr>
    </table>
    <asp:SqlDataSource ID="AddCat" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [CategoriesModels] ORDER BY [OrderId], [CategoryName]" 
        UpdateCommand="UPDATE CategoriesModels SET CategoryName =@CategoryName, CategoryShortDescription =@CategoryShortDescription, CategoryLongDescription =@CategoryLongDescription, IsActive =@IsActive, IsTopCategory =@IsTopCategory, OffersAllowed =@OffersAllowed, CategoryImage =@CategoryImage, ModifiedBy =@ModifiedBy, ModifiedOn =getdate(), OrderId =@OrderId WHERE CategoryID = @CategoryID" 
        InsertCommand="INSERT INTO CategoriesModels(CategoryName, CategoryShortDescription, CategoryLongDescription, IsActive, IsTopCategory, OffersAllowed, CategoryImage, CreatedOn, CreatedBy, OrderId) VALUES (@CategoryName,@CategoryShortDescription,@CategoryLongDescription,@IsActive,@IsTopCategory,@OffersAllowed,@CategoryImage,getdate(),@CreatedBy,@OrderId)" 
        DeleteCommand="DELETE FROM CategoriesModels WHERE CategoryID = @CategoryID">
        <InsertParameters>
            <asp:ControlParameter Name="CategoryName" ControlID="txtName" Type="String" />
            <asp:ControlParameter Name="CategoryShortDescription" ControlID="txtShortDesc" Type="String" />
            <asp:ControlParameter Name="CategoryLongDescription" ControlID="txtLongDesc" Type="String" />
            <asp:ControlParameter Name="IsActive" ControlID="chkIsActive" Type="Boolean" />
            <asp:ControlParameter Name="IsTopCategory" ControlID="chkIsTopCategory" Type="Boolean" />
            <asp:ControlParameter Name="OffersAllowed" ControlID="chkOffersAllowed" Type="Boolean" />
            <asp:ControlParameter Name="CategoryImage" ControlID="imgCategory" Type="String" />
            <asp:ControlParameter Name="CreatedBy" ControlID="ddlCreatedBy" Type="Int32" />
            <asp:ControlParameter Name="OrderId" ControlID="txtOrderId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="CategoryShortDescription" Type="String" />
            <asp:Parameter Name="CategoryLongDescription" Type="String" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
            <asp:Parameter Name="IsTopCategory" Type="Boolean" />
            <asp:Parameter Name="OffersAllowed" Type="Boolean" />
            <asp:Parameter Name="CategoryImage" Type="String" />
            <asp:Parameter Name="CreatedBy" Type="Int32" />
            <asp:Parameter Name="OrderId" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
