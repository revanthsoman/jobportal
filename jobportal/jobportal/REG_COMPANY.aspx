<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG_COMPANY.aspx.cs" Inherits="jobportal.REG_COMPANY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            width: 171px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 250px;
        }
        .auto-style6 {
            height: 23px;
            width: 250px;
        }
        .auto-style7 {
            width: 171px;
            height: 30px;
        }
        .auto-style8 {
            width: 250px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Company Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Company Type :</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="rbtn_company_type" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Company</asp:ListItem>
                        <asp:ListItem>Consultant</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Industry :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_type" runat="server"></asp:TextBox>
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
                <td class="auto-style2">E-mail</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_cpwd" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="btn_creg" runat="server" Text="REGISTER" />
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
    </form>
</body>
</html>
