<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendanceSummary.aspx.cs" Inherits="HTCMS.Student.AttendanceSummary" EnableSessionState="True" MasterPageFile="~/Student.Master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <div style="text-align:center; margin:auto;background-color: #F7F6F3">
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="80%">
        <asp:DetailsView ID="DetailsView1" runat="server" 
    Height="100%" Width="100%" AutoGenerateRows="False" CellPadding="4" 
            DataKeyNames="Roll_No" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" style="margin:auto">
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
                <asp:BoundField DataField="Classes_Attended" HeaderText="Classes_Attended" 
                    SortExpression="Classes_Attended" />
                <asp:BoundField DataField="Classes_Taken" HeaderText="Classes_Taken" 
                    SortExpression="Classes_Taken" />
            </Fields>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
            SelectCommand="SELECT [Roll No] AS Roll_No, [First Name] AS First_Name, [Last Name] AS Last_Name, [Classes Attended] AS Classes_Attended, [Classes Taken] AS Classes_Taken FROM [Student Details] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenField1" Name="Username" 
                    PropertyName="Value" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </asp:Panel>
</div>
</asp:Content>
