<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewItems.aspx.cs" Inherits="PizzaDelivery.Admin.ViewItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="gridViewItems" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
        OnRowEditing="gridViewItems_OnRowEditing"
        OnRowDeleting="gridViewItems_OnRowDeleting" DataKeyNames="ItemId">
        <Columns>
            <asp:BoundField HeaderText="Item Id" DataField="ItemId" />
            <asp:BoundField HeaderText="Name" DataField="ItemName" />
            <asp:BoundField HeaderText="Price" DataField="ItemPrice" />
            <asp:BoundField HeaderText="Image" DataField="ImageUrl" />
            <asp:BoundField HeaderText="Description" DataField="ItemDescription" />
            <asp:BoundField HeaderText="Created Date" DataField="CreatedDate" />
            <asp:CommandField ShowEditButton="True"/>
            <asp:CommandField ShowDeleteButton="True"/>
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
