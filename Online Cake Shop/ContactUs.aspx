<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Online_Cake_Shop.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Contact us</title>
    <meta charset="utf -5" />
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
                            <li class="active"><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutCakeshop.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>
                            </ul>
                        
                    </div>
                 </div>
             </nav>
            
                     <div>
                           <h1 style="background-color:#ffffff" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Contact Us" ForeColor="Black" Font-Bold="True" Font-Size=" Large" ></asp:label>
    </h1>
                     </div>
                       <table class="auto-style2">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="For any Query Please Contact Us on this Email &amp; Contact Number"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="Email Id:-"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="Swarochish01@gmail.com"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="Contact:-"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="9440077579"></asp:Label>
            </td>
        </tr>
    </table>
                        
     </form>
      <br />
    <footer class="container-fluid text-center jumbotron">
        <p>
             Follow Us on Instagram and Facebook for tasty Cakes  
                  @OnlineCakeStore
        </p>

    </footer>
 </body>
</html>
