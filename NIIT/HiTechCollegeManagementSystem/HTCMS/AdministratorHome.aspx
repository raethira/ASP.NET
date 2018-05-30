<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorHome.aspx.cs" Inherits="HTCMS.AdministratorHome" EnableSessionState="True" MasterPageFile="~/Administrator.Master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

    <table style="width: 100%; height:100%; background-color:#F7F6F3">
        <tr>
            <td style="width:30%; text-align: center;">
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
                    You have logged in with Administrator privileges.<br />
                    <br />
                    At present, you are at the Administrator&#39;s Home. The following are the various 
                    features of the HTCMS available to an Administrator:<br />
                    1)To view the list of students registered and their details or edit or delete or 
                    add records<br />
                    please go to the &quot;Student Details&quot; section. Click on the &quot;Student&quot;,&quot;Personal&quot; or 
                    &quot;Communication&quot; button to show the respective information.<br />
                    2)To view the list of faculty employed, please go to the &quot;Faculty List&quot; section. 
                    To edit the list, please go to &quot;Users List&quot; and change the respective details 
                    with &quot;Role&quot; field kept constantly as &quot;Teacher&quot;.<br />
                    3)To view the list of courses and their details or edit or delete or add records 
                    please go to the &quot;Courses List&quot; section.<br />
                    4)To view the list of Users who have access to HTCMS and their roles, please go 
                    to the &quot;Users List&quot; section. You can also edit their information.<br />
                    5)To change the Administrator password, please click on the Key image on top.<br />
                    6)To Log out, please click on the Power button image above or to return to this 
                    page, please click on the Home image.</div>
                </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Names="Britannic Bold" Font-Size="X-Large" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
