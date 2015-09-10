<%@ Page Title="" Language="C#" MasterPageFile="~/jobportal.Master" AutoEventWireup="true" CodeBehind="LOGIN_USER.aspx.cs" Inherits="jobportal.LOGIN_USER" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
    <h2>Login Here</h2>
</header>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%">
    <tr>
        <td style="width: 119px">E-mail :</td>
        <td style="width: 223px">
            <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td style="width: 158px">&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 23px; width: 119px">Password :</td>
        <td style="width: 223px; height: 23px">
            <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td style="height: 23px; width: 158px"></td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">&nbsp;</td>
        <td style="width: 158px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">
            <asp:Button ID="btn_ulogin" runat="server" Text="LOGIN" OnClick="btn_ulogin_Click" />
        </td>
        <td style="width: 158px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">&nbsp;</td>
        <td style="width: 158px">&nbsp;</td>
    </tr>
</table>
</asp:Content>

