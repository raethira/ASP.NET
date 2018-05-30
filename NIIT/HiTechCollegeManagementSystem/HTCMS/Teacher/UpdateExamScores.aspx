<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateExamScores.aspx.cs" Inherits="HTCMS.Teacher.UpdateExamScores" EnableSessionState="True" MasterPageFile="~/Teacher.Master"%>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <div style="width:100%; height:100%; background-color:#F7F6F3; text-align:center">

    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="100%">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="100%" Width="100%" 
            AllowPaging="True" AutoGenerateEditButton="True" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="Roll_No" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
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
                <asp:BoundField DataField="Unit_1_Score" HeaderText="Unit_1_Score" 
                    SortExpression="Unit_1_Score" />
                <asp:BoundField DataField="Unit_2_Score" HeaderText="Unit_2_Score" 
                    SortExpression="Unit_2_Score" />
                <asp:BoundField DataField="Quarterly_Exam_Score" 
                    HeaderText="Quarterly_Exam_Score" SortExpression="Quarterly_Exam_Score" />
                <asp:BoundField DataField="Unit_3_Score" HeaderText="Unit_3_Score" 
                    SortExpression="Unit_3_Score" />
                <asp:BoundField DataField="Half_Yearly_Exam_Score" 
                    HeaderText="Half_Yearly_Exam_Score" SortExpression="Half_Yearly_Exam_Score" />
                <asp:BoundField DataField="Unit_4_Score" HeaderText="Unit_4_Score" 
                    SortExpression="Unit_4_Score" />
                <asp:BoundField DataField="Unit_5_Score" HeaderText="Unit_5_Score" 
                    SortExpression="Unit_5_Score" />
                <asp:BoundField DataField="Annual_Exam_Score" HeaderText="Annual_Exam_Score" 
                    SortExpression="Annual_Exam_Score" />
            </Fields>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HTCMSConnectionString %>" 
            
            SelectCommand="SELECT [Roll No] AS Roll_No, [First Name] AS First_Name, [Last Name] AS Last_Name, [Unit 1 Score] AS Unit_1_Score, [Unit 2 Score] AS Unit_2_Score, [Quarterly Exam Score] AS Quarterly_Exam_Score, [Unit 3 Score] AS Unit_3_Score, [Half Yearly Exam Score] AS Half_Yearly_Exam_Score, [Unit 4 Score] AS Unit_4_Score, [Unit 5 Score] AS Unit_5_Score, [Annual Exam Score] AS Annual_Exam_Score FROM [Student Details] WHERE ([Teacher] = @Teacher)" UpdateCommand="UPDATE [Student Details]
SET 
[Unit 1 Score]=@Unit_1_Score,
[Unit 2 Score]=@Unit_2_Score,
[Quarterly Exam Score]=@Quarterly_Exam_Score,
[Unit 3 Score]=@Unit_3_Score,
[Half Yearly Exam Score]=@Half_Yearly_Exam_Score,
[Unit 4 Score]=@Unit_4_Score,
[Unit 5 Score]=@Unit_5_Score,
[Annual Exam Score]=@Annual_Exam_Score
WHERE
[Roll No]=@Roll_no">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenField1" Name="Teacher" 
                    PropertyName="Value" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </asp:Panel>

</div>
    
</asp:Content>
