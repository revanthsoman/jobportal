<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG_USER.aspx.cs" Inherits="jobportal.REG_USER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 192px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 296px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_cpwd" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btn_ureg" runat="server" Text="REGISTER" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
