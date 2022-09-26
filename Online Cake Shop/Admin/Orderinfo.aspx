<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orderinfo.aspx.cs" Inherits="Online_Cake_Shop.Admin.Orderinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"  Font-Bold="True" Font-Size="Medium" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand"  style="margin-right: 3px" DataKeyNames="odr_id" DataSourceID="SqlDataSource1" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <%--<asp:BoundField DataField="odr_id" HeaderText="odr_id" SortExpression="odr_id" InsertVisible="False" ReadOnly="True">--%>
        <%--<asp:HyperLinkField HeaderText="Reply" NavigateUrl="http://localhost:64335/Admin/ReplyAdmin.aspx" Text="Reply" />--%>
            <asp:BoundField DataField="odr_id" HeaderText="odr_id" InsertVisible="False" ReadOnly="True" SortExpression="odr_id">
        </asp:BoundField>
        <asp:BoundField DataField="odr_date" HeaderText="odr_date" SortExpression="odr_date">
        </asp:BoundField>
        <asp:BoundField DataField="delivery_date" HeaderText="delivery_date" SortExpression="delivery_date" />
        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity">
        </asp:BoundField>
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:TemplateField HeaderText="Reply">
            <ItemTemplate>
                <asp:Button ID="btnReply" runat="server" CommandArgument='<%# Eval("odr_id")%>' CommandName="Reply" Text="Reply" Width="88px" BackColor="Fuchsia" BorderColor="#FF66FF" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <br />

    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT [odr_id], [odr_date], [delivery_date], [quantity], [price] FROM [orderdetails]" DeleteCommand="DELETE FROM [orderdetails] WHERE [odr_id] = @odr_id" InsertCommand="INSERT INTO [orderdetails] ([odr_date], [delivery_date], [quantity], [price]) VALUES (@odr_date, @delivery_date, @quantity, @price)" UpdateCommand="UPDATE [orderdetails] SET [odr_date] = @odr_date, [delivery_date] = @delivery_date, [quantity] = @quantity, [price] = @price WHERE [odr_id] = @odr_id" >--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT [odr_id], [odr_date], [delivery_date], [quantity], [price] FROM [orderdetails]" DeleteCommand="DELETE FROM [orderdetails] WHERE [odr_id] = @odr_id" InsertCommand="INSERT INTO [orderdetails] ([odr_date], [delivery_date], [quantity], [price]) VALUES (@odr_date, @delivery_date, @quantity, @price)" UpdateCommand="UPDATE [orderdetails] SET [odr_date] = @odr_date, [delivery_date] = @delivery_date, [quantity] = @quantity, [price] = @price WHERE [odr_id] = @odr_id">--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT Orderdetails.odr_id, Orderdetails.odr_date, Orderdetails.delivery_date, Orderdetails.quantity, Orderdetails.price, Orderdetails.pay_type, Orderdetails.product_id, Orderdetails.Cus_id, Productdetails.pr_id, Productdetails.pr_Name, Productdetails.pr_Type, Productdetails.pr_Price, Productdetails.pr_Description, Productdetails.pr_FoodType, Productdetails.pr_Image, tbl_Registration.regi_id, tbl_Registration.regi_Fullname, tbl_Registration.regi_Username, tbl_Registration.regi_Email, tbl_Registration.regi_Password, tbl_Registration.regi_Gender, tbl_Registration.regi_DOB, tbl_Registration.regi_Contact, tbl_Registration.regi_Address FROM Orderdetails INNER JOIN Productdetails ON Orderdetails.product_id = Productdetails.pr_id INNER JOIN tbl_Registration ON Orderdetails.Cus_id = tbl_Registration.regi_id ORDER BY Orderdetails.odr_id DESC"></asp:SqlDataSource>
    
        
    
       
    
</asp:Content>
