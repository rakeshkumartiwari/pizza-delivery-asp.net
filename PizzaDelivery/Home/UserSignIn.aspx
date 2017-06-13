<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UserSignIn.aspx.cs" Inherits="PizzaDelivery.Home.UserSignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 400px; width: 147px; align-content: center;margin-top: 40px">
        <table style="width: 92%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" Width="135px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" Width="130px" OnClick="btnSignIn_Click" />
                </td>
                <td>
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" Width="130px" OnClick="btnSignUp_Click" />
                </td>

            </tr>
            <tr>
               <td colspan="2">
                   <asp:Label ID="lblError" runat="server"  ForeColor="red"></asp:Label>
               </td>
            </tr>
           
        </table>
    </div>


</asp:Content>
