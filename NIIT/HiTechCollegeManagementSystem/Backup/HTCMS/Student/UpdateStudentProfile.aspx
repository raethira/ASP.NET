<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStudentProfile.aspx.cs" Inherits="HTCMS.Student.UpdateStudentProfile" MasterPageFile="~/Student.Master" EnableSessionState="True"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3" >
    <br />
    <div style="text-align: left; background-color: #F7F6F3; height:100%">
    
        <asp:Button ID="Button1" runat="server" Text="Student Details" 
            onclick="Button1_Click" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
        <div>
        
            <table style="width: 765px">
                <tr>
                    <td style="text-align: center; width: 381px;">
                        <asp:Label ID="Label2" runat="server" Text="First Name:" 
                            style="text-align: right" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
                        <br />
                    </td>
                    <td style="text-align: center; width: 382px;">
                        <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 381px;">
                        &nbsp;<asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                        <br />
                    </td>
                    <td style="text-align: center; width: 382px;">
                        <asp:Label ID="Label6" runat="server" Text="Admission No.:"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 381px;">
                        <asp:Label ID="Label4" runat="server" Text="Date of Birth:"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox><br />
                    </td>
                    <td style="width: 382px; text-align: center">
                        <asp:Label ID="Label8" runat="server" Text="Roll No.:" ToolTip=" "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True"></asp:TextBox>
                        <br />
                    </td>
                </tr>
            </table>
            </div>
        </asp:Panel>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Personal Details" 
            onclick="Button2_Click" />
    
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="false">
        <table style="width: 100%">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label9" runat="server" Text="Nationality:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label14" runat="server" Text="Maritial Status:"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox13" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label10" runat="server" Text="Native Country:"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label15" runat="server" Text="Hostellite:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label11" runat="server" Text="Native District:"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label16" runat="server" Text="Day Scholar:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox15" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Text="Religion:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox16" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label13" runat="server" Text="Mother Tongue:"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br/>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label18" runat="server" Text="Mobile No.:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox17" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br/>
                </td>
            </tr>
        </table>
        </asp:Panel>
        <br />
    
        <asp:Button ID="Button3" runat="server" Text="Communication Details" 
            onclick="Button3_Click" />
    
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
        <div>
        
            <table style="width: 100%">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label19" runat="server" Text="Residential Address:"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox18" runat="server" 
                            TextMode="MultiLine" AutoPostBack="True"></asp:TextBox></td>
                    <td style="text-align: center">
                        <asp:Label ID="Label20" runat="server" Text="Residential Phone No.:"></asp:Label>
                        &nbsp; <asp:TextBox ID="TextBox19" runat="server" AutoPostBack="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label21" runat="server" Text="Father's Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
                            ID="TextBox20" runat="server" AutoPostBack="True"></asp:TextBox><br />
                        </td>
                    <td style="text-align: center" rowspan="2">
                        <asp:Label ID="Label22" runat="server" Text="Father's Work Address:"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox21" runat="server" TextMode="MultiLine" 
                            AutoPostBack="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label27" runat="server" Text="Father's Mobile No.:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox26" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label24" runat="server" Text="Mother's Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:TextBox ID="TextBox23" runat="server" Height="22px" AutoPostBack="True"></asp:TextBox><br />
                        </td>
                    <td style="text-align: center" rowspan="2">
                        <asp:Label ID="Label26" runat="server" Text="Mother's Work Address:"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox25" runat="server" TextMode="MultiLine" 
                            AutoPostBack="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label28" runat="server" Text="Mother's Mobile No.:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox27" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
        
            </div>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel4" runat="server" style="text-align: right">
            <asp:Button ID="Button4" runat="server" Text="Submit" onclick="Button4_Click" />
            &nbsp;<asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                Text="Reset All" />
        </asp:Panel>
        <br />
        
    
    </div>
</asp:Content>
