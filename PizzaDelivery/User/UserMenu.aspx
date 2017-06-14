<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserMenu.aspx.cs" Inherits="PizzaDelivery.User.UserMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gridViewItems" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
        DataKeyNames="ItemId">
        <Columns>
            <asp:BoundField HeaderText="Item Id" DataField="ItemId" />
            <asp:BoundField HeaderText="Name" DataField="ItemName" />
            <asp:BoundField HeaderText="Price" DataField="ItemPrice" />
            <asp:ImageField DataImageUrlField="ImageUrl" DataImageUrlFormatString="{0}" HeaderText="Image" ItemStyle-Height="50px" ItemStyle-Width="50px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Description" DataField="ItemDescription" />

        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

</asp:Content>
