<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG_COMPANY.aspx.cs" Inherits="jobportal.REG_COMPANY" MasterPageFile="~/jobportal.Master"%>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
        <h2>Register Here</h2>
    </header>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="height: 26px"></td>
                <td class="auto-style5" style="height: 26px">
                </td>
                <td style="height: 26px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 26px">Company Name :</td>
                <td class="auto-style5" style="height: 26px">
                    <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
                </td>
                <td style="height: 26px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 26px">Company Type :</td>
                <td class="auto-style5" style="height: 26px">
                    <asp:RadioButtonList ID="rbtn_company_type" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Company</asp:ListItem>
                        <asp:ListItem>Consultant</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="height: 26px"></td>
            </tr>
            <tr>
                <td class="auto-style3">Industry :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_industry" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">Company Description :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_mail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_cpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="btn_creg" runat="server" Text="REGISTER" OnClick="btn_creg_Click" />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    
    </div>
   
</asp:Content>



