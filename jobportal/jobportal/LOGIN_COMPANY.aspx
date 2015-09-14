<%@ Page Title="" Language="C#" MasterPageFile="~/jobportal.Master" AutoEventWireup="true" CodeBehind="LOGIN_COMPANY.aspx.cs" Inherits="jobportal.LOGIN_COMPANY" %>
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
        <td style="width: 201px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">Password :</td>
        <td style="width: 223px">
            <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td style="width: 201px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">&nbsp;</td>
        <td style="width: 201px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">
            <asp:Button ID="btn_clogin" runat="server" Text="LOGIN" OnClick="btn_clogin_Click" />
        </td>
        <td style="width: 201px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 119px">&nbsp;</td>
        <td style="width: 223px">&nbsp;</td>
        <td style="width: 201px">&nbsp;</td>
    </tr>
</table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <p>
        &nbsp;</p>
</asp:Content>


