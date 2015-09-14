<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG_USER.aspx.cs" Inherits="jobportal.REG_USER" MasterPageFile="~/jobportal.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
        <h2>&nbsp;Register Here</h2>
    </header>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">Current Location :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_location" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Qualification :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_qualification" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">Industry :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_industry" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Skills</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_skills" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">Experience :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_experience" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Phone :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_mail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_cpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btn_ureg" runat="server" Text="REGISTER" OnClick="btn_ureg_Click" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
   
</asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
        &nbsp;</p>
</asp:Content>




