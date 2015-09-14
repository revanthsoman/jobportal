<%@ Page Title="" Language="C#" MasterPageFile="~/jobportal.Master" AutoEventWireup="true" CodeBehind="POSTJOBS.aspx.cs" Inherits="jobportal.POSTJOBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
        <asp:LinkButton ID="linkbtn_logout" runat="server" OnClick="linkbtn_logout_Click">Logout</asp:LinkButton>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <header class="major">
        <h2>Welcome
            <asp:Label ID="lbl_company" runat="server"></asp:Label>
        </h2>
    </header>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%">
        <tr>
            <td style="height: 23px; width: 233px">&nbsp;</td>
            <td style="height: 23px; width: 335px">
                <asp:Label ID="lbl_post_jobs" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="Job Details"></asp:Label>
            </td>
            <td style="height: 23px; width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 233px">&nbsp;</td>
            <td style="height: 23px; width: 335px">&nbsp;</td>
            <td style="height: 23px; width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 233px">&nbsp;</td>
            <td style="height: 23px; width: 335px">&nbsp;</td>
            <td style="height: 23px; width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 233px">Job Title :</td>
            <td style="height: 23px; width: 335px">
                <asp:TextBox ID="txt_pos_title" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 276px"></td>
        </tr>
        <tr>
            <td style="width: 233px">Job &nbsp;Type :</td>
            <td style="width: 335px">
                <asp:RadioButtonList ID="rbtn_pos_type" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Full-time</asp:ListItem>
                    <asp:ListItem>Part-time</asp:ListItem>
                    <asp:ListItem>Entry-level</asp:ListItem>
                    <asp:ListItem>Internship</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Location :</td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_location" runat="server"></asp:TextBox>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Job &nbsp;Description : </td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_job_descrip" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Requirements/Qualifications :</td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_reqrmnts" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Work Hours :</td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_wrkhrs" runat="server"></asp:TextBox>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Salary :</td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_salary" runat="server"></asp:TextBox>
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">Closing &nbsp;Date :</td>
            <td style="width: 335px">
                <asp:TextBox ID="txt_close_date" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Calendar ID="cal_close_date" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="cal_close_date_SelectionChanged" Visible="False" Width="330px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td style="width: 276px">
                <asp:Button ID="btn_view_cal" runat="server" OnClick="btn_view_cal_Click" Text="Choose" />
            </td>
        </tr>
        <tr>
            <td style="width: 233px">&nbsp;</td>
            <td style="width: 335px">&nbsp;</td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px">&nbsp;</td>
            <td style="width: 335px">
                <asp:Button ID="btn_post_done" runat="server" Text="DONE" OnClick="btn_post_done_Click" />
            </td>
            <td style="width: 276px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


