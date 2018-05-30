<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyList.aspx.cs" Inherits="HTCMS.Admin.FacultyList" MasterPageFile="~/Administrator.Master"%>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <div style="height:100%; width:100%; text-align:center; background-color:#F7F6F3">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="50%" style="margin:auto">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
        SelectCommand="SELECT [Username] FROM [Login] WHERE ([Role] = @Role)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Teacher" Name="Role" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
