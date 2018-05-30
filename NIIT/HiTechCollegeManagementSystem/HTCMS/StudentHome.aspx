<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="CollegeManagementSite.StudentHome" MasterPageFile="~/Student.Master" EnableSessionState="True"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
 <table style="width: 100%; height:100%; background-color:#F7F6F3">
        <tr>
            <td style="width:30%; text-align: center;">
                <br />
                WELCOME
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;!<br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                    Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                    SelectionMode="None" Width="100%">
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        Height="8pt" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="12pt" ForeColor="White" Height="12pt" />
                </asp:Calendar>
            </td>
            <td rowspan="2">
                <div>
                
                    Welcome to Hi-Tech College Managememt System !<br />
                    You have logged in with Student privileges.<br />
                    <br />
                    At present, you are at the Student&#39;s Home. The following are the various 
                    features of the HTCMS available to a Student:<br />
                    1)To view your details please go to the &quot;Student Profile&quot; section. Click on the 
                    &quot;Student&quot;, &quot;Communication&quot; or &quot;Personal details&quot; button to display the 
                    respective information.<br />
                    2)To view the courses you have registered for, please go to &quot;View Course 
                    Registration&quot; section. You can also delete your registered courses by clicking 
                    on Delete link.<br />
                    3)To view your attendance summary, please go to the &quot;Attendance Summary&quot; 
                    section.<br />
                    4)To view your exam scores, please go to the &quot;Exam Reports&quot; section.<br />
                    5)To update your details, please go to the &quot;Update Student Profile&quot; section. 
                    Click on the &quot;Student&quot;, &quot;Communication&quot; or &quot;Personal details&quot; button to edit 
                    respective information. Then click on Submit to update the details or Reset to 
                    clear the fields.<br />
                    6)To view the courses available and register for courses, please go to the 
                    &quot;Online Course Registration&quot; section. You can register for a course by clicking 
                    on Insert link and then Update link.<br />
                    7)To change the Administrator password, please click on the Key image on top.<br />
                    8)To Log out, please click on the Power button image above or to return to this 
                    page, please click on the Home image.</div></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Names="Britannic Bold" Font-Size="X-Large" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
