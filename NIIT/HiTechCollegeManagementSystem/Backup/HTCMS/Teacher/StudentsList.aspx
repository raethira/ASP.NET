<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsList.aspx.cs" Inherits="HTCMS.Teacher.StudentsList" EnableSessionState="True" MasterPageFile="~/Teacher.Master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Roll_No" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" 
                SortExpression="Roll_No" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                SortExpression="Last_Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Mother_Tongue" HeaderText="Mother_Tongue" 
                SortExpression="Mother_Tongue" />
            <asp:BoundField DataField="Hostellite" HeaderText="Hostellite" 
                SortExpression="Hostellite" />
            <asp:BoundField DataField="Day_Scholar" HeaderText="Day_Scholar" 
                SortExpression="Day_Scholar" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                SortExpression="Mobile_No" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Residential_Phone_No" HeaderText="Residential_Phone_No" 
                SortExpression="Residential_Phone_No" />
            <asp:BoundField DataField="Father_Mobile_No" HeaderText="Father_Mobile_No" 
                SortExpression="Father_Mobile_No" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Mother_Mobile_No" HeaderText="Mother_Mobile_No" 
                SortExpression="Mother_Mobile_No" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
        
        
    SelectCommand="SELECT [Roll No] AS Roll_No, [First Name] AS First_Name, [Last Name] AS Last_Name, [Gender], [Mother Tongue] AS Mother_Tongue, [Hostellite], [Day Scholar] AS Day_Scholar, [Email], [Mobile No] AS Mobile_No, [Father Name] AS Father_Name, [Residential Phone No] AS Residential_Phone_No, [Father Mobile No] AS Father_Mobile_No, [Mother Name] AS Mother_Name, [Mother Mobile No] AS Mother_Mobile_No FROM [Student Details] WHERE ([Teacher] = @Teacher)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="Teacher" 
                PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:HiddenField ID="HiddenField1" runat="server" />
</asp:Content>
