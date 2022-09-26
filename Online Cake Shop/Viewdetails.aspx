<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewdetails.aspx.cs" Inherits="Online_Cake_Shop.Viewdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>view details</title>
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
        <form id="form2" runat="server">
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
           <%-- </form>
               <form id="form1" runat="server">--%>
                   <div>
                       <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="307px" Width="195px" />
            </td>
            <td>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Product Name:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblProductName" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Detail:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDetails" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Price:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPrice" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Food Type:-"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblFoodType" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                  
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="#333333" Font-Bold="True" Font-Size="Medium" Text="Back" ForeColor="White" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
                   </div>
                        </form>            
    
</body>
    
</html>
