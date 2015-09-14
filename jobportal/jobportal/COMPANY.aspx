<%@ Page Title="" Language="C#" MasterPageFile="~/jobportal.Master" AutoEventWireup="true" CodeBehind="COMPANY.aspx.cs" Inherits="jobportal.COMPANY" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
        <h2>Welcome
            <asp:Label ID="lbl_company" runat="server"></asp:Label>
        </h2>
    </header>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <p>
        <asp:LinkButton ID="linkbtn_logout" runat="server" OnClick="linkbtn_logout_Click">Logout</asp:LinkButton>
    </p>
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Button ID="btn_postjob" runat="server" OnClick="btn_postjob_Click" Text="Post Jobs" />
</asp:Content>



