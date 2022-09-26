<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="Online_Cake_Shop.Addtocartaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
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

        .auto-style1 {
            margin-right: 0px;
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Bold="True" Font-Size="Large" ForeColor="Black" ShowFooter="True" Width="1301px" DataSourceID="SqlDataSource1" CssClass="auto-style1" DataKeyNames="pr_id" >
        <Columns>
            <asp:BoundField DataField="pr_id" HeaderText="pr_id" SortExpression="pr_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="pr_Image" HeaderText="pr_Image" SortExpression="pr_Image" />
            <asp:BoundField DataField="pr_Name" HeaderText="pr_Name" SortExpression="pr_Name" />
            <asp:BoundField DataField="pr_Type" HeaderText="pr_Type" SortExpression="pr_Type" />
            <asp:BoundField DataField="pr_Price" HeaderText="pr_Price" SortExpression="pr_Price" />
            <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="50px" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT [pr_id], [pr_Image], [pr_Name], [pr_Type], [pr_Price] FROM [Productdetails]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product You have added to your Cart"></asp:Label>
    <asp:Label ID="lblcart" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Label"></asp:Label>
    <br />
<asp:Button ID="Button1" runat="server" BackColor="#FF66FF" BorderColor="#FF99FF" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" Text="Buy Now" />
<br />
<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
    <br />
    <br />
        </div>
            </form>
    </body>
</html>
