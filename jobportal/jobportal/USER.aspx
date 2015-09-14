<%@ Page Title="" Language="C#" MasterPageFile="~/jobportal.Master" AutoEventWireup="true" CodeBehind="USER.aspx.cs" Inherits="jobportal.USER" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
        <h2>Welcome
            <asp:Label ID="lbl_user" runat="server"></asp:Label>
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
    <asp:Button ID="btn_job_opening" runat="server" OnClick="btn_job_opening_Click" Text="Job Openings" />
</asp:Content>



