<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homelogin.aspx.cs" Inherits="Online_Cake_Shop.Homelogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Log in</title>
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
        .auto-style1 {
            width: 218px;
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
                            <li class="active"><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutCakeshop.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>
                           
                        
                        </ul>
                        <ul class="nav navbar-nav navbar-right">                       
                            <li><a href="Homesignup.aspx"><span class="glyphicon glyphicon-log-in"></span>Signup</a></li>  
                        </ul>
                        
                    </div>
                 </div>
             </nav>

           <div class="container" > 
           <div class="col-sm-3">  </div>
           <div class="col-sm-6">
                   <div class="panel panel-primary">
                   <div class="panel-heading">Login</div>
                   <div class="panel-body">
                   <div class="row">
                   <div class="col-sm-12">
                   <div class="from-group">
                
                        <table class="auto-style2">
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
             </td>
             <td class="auto-style1">
                 <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">
                 &nbsp;</td>
             <td class="auto-style1">
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
             </td>
             <td class="auto-style1">
                 <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style7"></td>
             <td class="auto-style1">
                 <asp:RadioButtonList ID="rdButtonSelect" runat="server" Font-Bold="True" Font-Size="Medium" CellPadding="0" CellSpacing="0">
                     <asp:ListItem Value="1">Login as User</asp:ListItem>
                     <asp:ListItem Value="2">Login as Admin</asp:ListItem>
                 </asp:RadioButtonList>
                 <br />
             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="#33CC33" BorderColor="#66FF33" Text="Submit" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click"  />

             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td class="auto-style1">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7"></td>
             <td class="auto-style1"></td>
         </tr>
     </table>
                   </div>
               </div>
           </div>
          </div>
        </div>
      </div>
     </div>

    </form>
</body>
</html>
