<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAttendance.aspx.cs" Inherits="HTCMS.Teacher.UpdateAttendance" EnableSessionState="True" MasterPageFile="~/Teacher.Master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

    <div style="height:100%; width:100%; background-color:#F7F6F3"> 
    <table style="height:100%; width:100%; background-color:#F7F6F3">
        <tr>
            <td>
                <asp:DetailsView runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Roll_No" DataSourceID="SqlDataSource1" Height="50px" 
                    Width="70%" AllowPaging="True" AutoGenerateEditButton="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" style="margin: auto">
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" 
                            SortExpression="Roll_No" />
                        <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                            SortExpression="First_Name" />
                        <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                            SortExpression="Last_Name" />
                        <asp:BoundField DataField="Hostellite" HeaderText="Hostellite" 
                            SortExpression="Hostellite" />
                        <asp:BoundField DataField="Day_Scholar" HeaderText="Day_Scholar" 
                            SortExpression="Day_Scholar" />
                        <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                            SortExpression="Mobile_No" />
                        <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                            SortExpression="Father_Name" />
                        <asp:BoundField DataField="Father_Mobile_No" HeaderText="Father_Mobile_No" 
                            SortExpression="Father_Mobile_No" />
                        <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                            SortExpression="Mother_Name" />
                        <asp:BoundField DataField="Mother_Mobile_No" HeaderText="Mother_Mobile_No" 
                            SortExpression="Mother_Mobile_No" />
                        <asp:BoundField DataField="Classes_Attended" HeaderText="Classes_Attended" 
                            SortExpression="Classes_Attended" />
                        <asp:BoundField DataField="Classes_Taken" HeaderText="Classes_Taken" 
                            SortExpression="Classes_Taken" />
                    </Fields>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT [Roll No] AS Roll_No, [First Name] AS First_Name, [Last Name] AS Last_Name, [Hostellite], [Day Scholar] AS Day_Scholar, [Mobile No] AS Mobile_No, [Father Name] AS Father_Name, [Father Mobile No] AS Father_Mobile_No, [Mother Name] AS Mother_Name, [Mother Mobile No] AS Mother_Mobile_No, [Classes Attended] AS Classes_Attended, [Classes Taken] AS Classes_Taken FROM [Student Details] WHERE ([Teacher] = @Teacher)" UpdateCommand="UPDATE [Student Details]
SET 
[Classes Attended]=@Classes_Attended,
[Classes Taken]=@Classes_Taken
WHERE
[Roll No]=@Roll_No">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="Teacher" 
                            PropertyName="Value" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        </table>
</div>
    
</asp:Content>
