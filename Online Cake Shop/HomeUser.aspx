<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="Online_Cake_Shop.HomeUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Dashboard</title>
     <meta charset="utf -8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet"/ " href=" https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     
    <style>

        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .carousel-inner img {
         width: 100%;
         min-height:200px;

        }

        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }

</style>
        </head>
    <body>
        <form id="form1" runat="server">
            <div class="jumbotron text-center" style="margin-bottom: 0;background-color:#f199bf">
                <h1>Online Cake store</h1>
                <p>
                    The World of Cakes!
                </p>
            </div>

            <nav class="navbar navbar-inverse">
                <div class="container-fluid"> 
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>

                        <a class="navbar-brand" href="HomePage.aspx">Cake Bake</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="HomeUser.aspx">Home</a></li>
                                  <li><a href="Addtocart.aspx">Cart</a></li>
                                  <li><a href="Orderstatus.aspx">Orderstatus</a></li>
                                  <li><a href="ContactUs.aspx">Contact</a></li>                      
                        
                        </ul>
                        <ul class="nav navbar-nav navbar-right">                       
                            <li><a href="HomePage.aspx"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
                        </ul>
                        
                    </div>
                    </div>
                </nav>
                 
         
        <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyField="pr_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" Width="1300px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table border="1" class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pr_Image") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Price:-"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pr_Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Quantity:-"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Text="in Kgs"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        
                        <asp:Label ID="Label6" runat="server" Text="Type:-"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("pr_Type") %>'></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#FFFF99" Font-Bold="True" Font-Size="Medium" Text="Add To Cart " CommandArgument='<%# Eval("pr_id")%>' CommandName="addtocart" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" BackColor="#66CCFF" BorderColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" Text="View Detail" CommandArgument='<%# Eval("pr_id")%>' CommandName="viewdetail" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
</asp:DataList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT * FROM [Productdetails] ORDER BY [pr_id] DESC" ></asp:SqlDataSource>
        </div>
            </form>
    </body>
</html>
