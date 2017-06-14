<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="AdminSignUp.aspx.cs" Inherits="PizzaDelivery.Home.AdminSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 400px;margin-top: 40px;height: 300px;width: 400px;align-content: center">
        <table style="height: 300px;width: 400px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="E-Mail"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td id="First Name">
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click"  CssClass="btn"/>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    </div>
</asp:Content>
