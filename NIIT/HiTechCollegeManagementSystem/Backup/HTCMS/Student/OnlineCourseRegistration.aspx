<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineCourseRegistration.aspx.cs" Inherits="HTCMS.Student.OnlineCourseRegistration" EnableSessionState="True" MasterPageFile="~/Student.Master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <br />
<div style="background-color: #F7F6F3">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Course_ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin: auto" Width="80%">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" ReadOnly="True" 
                SortExpression="Course_ID" />
            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" 
                SortExpression="Course_Name" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" 
                SortExpression="Credits" />
            <asp:CommandField EditText="Insert" ShowEditButton="True" />
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
        SelectCommand="SELECT [Course ID] AS Course_ID, [Course Name] AS Course_Name, [Credits] FROM [Courses Available]" 
        
        UpdateCommand="INSERT INTO [Courses Regd] ([Course ID], [Course Name], Credits, Username) VALUES (@Course_ID, @Course_Name, @Credits, @name)">
        <UpdateParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="name" 
                PropertyName="Value" />
            <asp:Parameter Name="Course_ID" />
            <asp:Parameter Name="Course_Name" />
            <asp:Parameter Name="Credits" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <br />
    

</div>
    
</asp:Content>
