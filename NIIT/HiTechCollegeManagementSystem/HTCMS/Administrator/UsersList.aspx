﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="HTCMS.Admin.UsersList" MasterPageFile="~/Administrator.Master" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <div style="height:100%; width:100%; text-align:center; background-color:#F7F6F3">
    
        +<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" style="margin: auto" Width="70%" 
            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
            DataKeyNames="Username">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" ReadOnly="True" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="No" HeaderText="No" SortExpression="No" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
            SelectCommand="SELECT [Username], [Password], [Role], [No] FROM [Login]" 
            DeleteCommand="DELETE FROM Login
WHERE Username=@Username" 
            UpdateCommand="UPDATE Login SET Username = @Username, Password = @Password, Role = @Role, No = @No WHERE (Username = @Username)"></asp:SqlDataSource>
    
    </div>
    
</asp:Content>