<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CollegeManagementSite.LoginPage" EnableSessionState="True"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width:100%;
            height:100%;
            border-color:Black;
            border-width:thick; 
            border: medium inset #FFFFFF;      
        }
        .style2
        {
            width: 70%;
            text-align:right;
            background-color:#5D7B9D;
        }
        body, html, #Default
        {
         height:100%;
        }
    </style>
</head>
<body style="height:100%">
    <form id="form1" style="height:100%" runat="server">
    <div style="height:100%">
        <table class="style1">
            <tr>
                <td class="style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Hi-Tech University" 
                        Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" 
                        Text="College Management Service (HT-CMS)" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                    <br />
                    <br style="background-color: #333333" />
                </td>
                <td style="background-color:#5D7B9D">
                    <asp:Image ID="Image1" runat="server" Height="125px" Width="100%" 
                         ImageAlign="Right" ImageUrl="~/Images/hitech.jpg" 
                        style="margin:auto"/>
                </td>
            </tr>
            <tr>
                <td style="width:45%; background-color: #F7F6F3">
                    <div>
                        <strong>HT-CMS:</strong>
                        <ul>
                            <li>Integrated system that enables easy access to data </li>
                            <li>Data recovery using ADO.NET and LINQ </li>
                            <li>Reports and summaries of student progression.</li>
                            <li>3-user design.</li>
                            <li>Security , Roles and Privileges.</li>
                            <li>Easy management of course registration.</li>
                            <li style="background-color: #F7F6F3">Complete modeling of the academic workflow.</li>
                        </ul>
                    </div>
                    </td>
                <td  style="background-color: #F7F6F3">
                    <div>
                        <strong>Usage Tips:</strong>
                        <ul>
                            <li>For confidentiality, always Log Off and close your browser 
        when you have finished your online session.</li>
                            <li>Best viewed with Microsoft Internet Explorer6.0 + or 
        Mozilla FireFox 3.0 + </li>
                            <li>Do not use your browser&#39;s Back button</li>
                        </ul>
                    </div>
                </td>
                <td style="text-align:right; background-color: #F7F6F3">
                <div style="width:100%; height:100%; text-align:center">
                        <asp:Label ID="Label3" runat="server" Text="Sign In" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Kozuka Gothic Pr6N R" Font-Size="X-Large" 
                            Font-Underline="True"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" MaxLength="15"></asp:TextBox><br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" MaxLength="12" TextMode="Password"></asp:TextBox><br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign In" 
                            onclick="Button1_Click" />
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Please enter the Username"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Please enter the Password"></asp:RequiredFieldValidator>
                        <br />
                </div>
                    </td>
            </tr>
        </table>  
    </div>
    </form>
</body>
</html>
