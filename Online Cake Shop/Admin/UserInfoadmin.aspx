<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfoadmin.aspx.cs" Inherits="Online_Cake_Shop.Admin.UserInfoadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"  Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Height="179px" Width="1053px" DataSourceID="SqlDataSource1" DataKeyNames="regi_id">
         
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
        
            
        
            <asp:BoundField DataField="regi_id" HeaderText="regi_id" SortExpression="regi_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="regi_Fullname" HeaderText="regi_Fullname" SortExpression="regi_Fullname" />
            <asp:BoundField DataField="regi_Username" HeaderText="regi_Username" SortExpression="regi_Username" />
            <asp:BoundField DataField="regi_Email" HeaderText="regi_Email" SortExpression="regi_Email" />
            <asp:BoundField DataField="regi_Gender" HeaderText="regi_Gender" SortExpression="regi_Gender" />
            <asp:BoundField DataField="regi_DOB" HeaderText="regi_DOB" SortExpression="regi_DOB" />
            <asp:BoundField DataField="regi_Contact" HeaderText="regi_Contact" SortExpression="regi_Contact" />
            <asp:BoundField DataField="regi_Address" HeaderText="regi_Address" SortExpression="regi_Address" />
            <asp:CommandField ShowDeleteButton="True" />
            <%--<asp:CommandField DeleteText="Remove" ShowDeleteButton="True" HeaderText="Remove" />--%>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [regi_Fullname], [regi_Username], [regi_Email], [regi_Password], [regi_Gender], [regi_DOB], [regi_Contact], [regi_Address] FROM [tbl_Registration]" OnSelecting="SqlDataSource1_Selecting">--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" DeleteCommand="DELETE FROM [tbl_Registration] WHERE [regi_id] = @original_regi_id" InsertCommand="INSERT INTO [tbl_Registration] ([regi_Fullname], [regi_Username], [regi_Email], [regi_Gender], [regi_DOB], [regi_Contact], [regi_Address], [regi_Password]) VALUES (@regi_Fullname, @regi_Username, @regi_Email, @regi_Gender, @regi_DOB, @regi_Contact, @regi_Address, @regi_Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [regi_id], [regi_Fullname], [regi_Username], [regi_Email], [regi_Gender], [regi_DOB], [regi_Contact], [regi_Address], [regi_Password] FROM [tbl_Registration]" UpdateCommand="UPDATE [tbl_Registration] SET [regi_Fullname] = @regi_Fullname, [regi_Username] = @regi_Username, [regi_Email] = @regi_Email, [regi_Gender] = @regi_Gender, [regi_DOB] = @regi_DOB, [regi_Contact] = @regi_Contact, [regi_Address] = @regi_Address, [regi_Password] = @regi_Password WHERE [regi_id] = @original_regi_id">
            <DeleteParameters>
                <asp:Parameter Name="original_regi_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regi_Fullname" Type="String" />
                <asp:Parameter Name="regi_Username" Type="String" />
                <asp:Parameter Name="regi_Email" Type="String" />
                <asp:Parameter Name="regi_Gender" Type="String" />
                <asp:Parameter Name="regi_DOB" Type="String" />
                <asp:Parameter Name="regi_Contact" Type="String" />
                <asp:Parameter Name="regi_Address" Type="String" />
                <asp:Parameter Name="regi_Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="regi_Fullname" Type="String" />
                <asp:Parameter Name="regi_Username" Type="String" />
                <asp:Parameter Name="regi_Email" Type="String" />
                <asp:Parameter Name="regi_Gender" Type="String" />
                <asp:Parameter Name="regi_DOB" Type="String" />
                <asp:Parameter Name="regi_Contact" Type="String" />
                <asp:Parameter Name="regi_Address" Type="String" />
                <asp:Parameter Name="regi_Password" Type="String" />
                <asp:Parameter Name="original_regi_id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>



