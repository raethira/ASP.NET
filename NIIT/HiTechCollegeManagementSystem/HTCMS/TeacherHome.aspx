<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="HTCMS.TeacherHome1" EnableSessionState="True" MasterPageFile="~/Teacher.Master"%>


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
                    You have logged in with Teacher privileges.<br />
                    <br />
                    At present, you are at the Teacher&#39;s Home. The following are the various 
                    features of the HTCMS available to a Teacher:<br />
                    1)To view the list of students registered and their details please go to the 
                    &quot;Student Details&quot; section.<br />
                    2)To update attendance for the students registered with you, please go to the 
                    &quot;Update Attendance&quot; section. You can enter the classes attended/classes taken 
                    for each student individually by navigating through the records.<br />
                    3)To update exam scores for the students registered with you, please go to the 
                    &quot;Update Attendance&quot; section. You can enter the exam scores for each student 
                    individually by navigating through the records. Fields are varoius exams have 
                    already been provided.<br />
                    5)To change your password, please click on the Key image on top.<br />
                    6)To Log out, please click on the Power button image above or to return to this 
                    page, please click on the Home image.</div></td>
        </tr>
        <tr>
            <td style="text-align: center; width: 30%;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Names="Britannic Bold" Font-Size="X-Large" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
