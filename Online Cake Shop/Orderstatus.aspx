<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orderstatus.aspx.cs" Inherits="Online_Cake_Shop.Orderstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orderstatus</title>
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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="256px" Width="988px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="reply_id" >
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="reply_id" HeaderText="reply_id" InsertVisible="False" ReadOnly="True" SortExpression="reply_id" />
                    <asp:BoundField DataField="reply_status" HeaderText="reply_status" SortExpression="reply_status" />
                    <asp:BoundField DataField="replymessage" HeaderText="replymessage" SortExpression="replymessage" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineCakeshopConnectionString %>" SelectCommand="SELECT [reply_id], [reply_status], [replymessage] FROM [Adminreply]"></asp:SqlDataSource>

        </div>
                 
         </form>
        </body>
</html>
