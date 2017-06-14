<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="PizzaDelivery.Admin.ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridViewUsers" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
        OnRowEditing="gridViewUsers_OnRowEditing"
        OnRowDeleting="gridViewUsers_OnRowDeleting" DataKeyNames="UserId">
        <Columns>
            <asp:BoundField HeaderText="User Id" DataField="UserId" />
            <asp:BoundField HeaderText="First Name" DataField="FirstName" />
            <asp:BoundField HeaderText="last Name" DataField="LastName" />
            <asp:BoundField HeaderText="E-mail" DataField="Email" />
            <asp:BoundField HeaderText="Password" DataField="Password" />
            <asp:BoundField HeaderText="Mobile Number" DataField="MoblieNo" />
            <asp:BoundField HeaderText="City" DataField="City" />
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
