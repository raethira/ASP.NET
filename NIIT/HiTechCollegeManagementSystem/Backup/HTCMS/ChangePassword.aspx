<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="HTCMS.ChangePassword" MasterPageFile="~/Site1.Master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="height:100%; width:100%; text-align:center; background-color:#F7F6F3">
    
    <table style="height:100%; width:100%;background-color:#F7F6F3">
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Change Password" Font-Bold="True" 
                    Font-Names="Adobe Fan Heiti Std B" Font-Size="X-Large" Font-Underline="True"></asp:Label>
            </td>
            <td colspan="2" style="text-align: right">
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Entered Passwords do not match" style="text-align: right" 
                    ValidationGroup="Pass"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" 
                    ValidationGroup="Pass"></asp:TextBox>
            </td>
            <td style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Old Password Required" 
                    ValidationGroup="Pass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                    ValidationGroup="Pass"></asp:TextBox>
            </td>
            <td style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="New Password Required" 
                    ValidationGroup="Pass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm New Password:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" 
                    ValidationGroup="Pass"></asp:TextBox>
            </td>
            <td style="text-align: right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Confirm New Password Required" 
                    ValidationGroup="Pass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: left">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    ValidationGroup="Pass" />
            </td>
        </tr>
    </table>
    
    </div>
                    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>

</asp:Content>

