<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddItems.aspx.cs" Inherits="PizzaDelivery.Admin.AddItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="margin-left: 400px;align-content: center;margin-top: 40px;height:200px;width: 400px">
        
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Item Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItemPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Item Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItemDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"  CssClass="btn"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </div>
</asp:Content>
