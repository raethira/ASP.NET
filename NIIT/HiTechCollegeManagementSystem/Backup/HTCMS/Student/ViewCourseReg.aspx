﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCourseReg.aspx.cs" Inherits="HTCMS.Student.ViewCourseReg" EnableSessionState="True" MasterPageFile="~/Student.Master"%>

<script runat="server">

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
<div style="height:100%; width:100%; background-color:#F7F6F3">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Course_ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin:auto" Width="80%" 
        AutoGenerateDeleteButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" ReadOnly="True" 
                SortExpression="Course_ID" />
            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" 
                SortExpression="Course_Name" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" 
                SortExpression="Credits" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
        
        
        
        SelectCommand="SELECT [Course ID] AS Course_ID, [Course Name] AS Course_Name, [Credits] FROM [Courses Regd] WHERE ([Username] = @Username)" DeleteCommand="DELETE FROM [Courses Regd]
WHERE [Course ID]=@Course_ID" onselecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="Username" 
                PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:HiddenField ID="HiddenField1" runat="server" />
    
    </div>
    
</asp:Content>
