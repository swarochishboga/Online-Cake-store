<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutCakeshop.aspx.cs" Inherits="Online_Cake_Shop.AboutCakeshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ABOUT US</title>
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
      <form id="form2" runat="server"></form>
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
        <asp:label runat="server" text="About Us" ForeColor="Black" Font-Bold="True" Font-Size=" Large" ></asp:label>
    </h1>
                     <p style="font-size:x-large " >
                         An online Cake store that allows users to check for various Cake products available at the online store and purchase online. The project consists of list of Cake products displayed in various categories. The user may browse through these items as per categories. If the user likes a product he/she may add it to his shopping cart. Once user wishes to checkout he must register on the site first. He can then login using same id password next time. Now he may pay through a credit card or cash on delivery. Once the user makes a successful transaction he gets a copy of the shopping receipt on his email id. Here we use .net framework to make the entire frontend. The middle tier or code behind model is designed in c#. And SQL serves as a backend to store Cake products lists data. Thus, the online Cake shopping project brings an entire Cake shop online and makes it easy for both buyer and seller.
                     </p>
                 
               
               </div>
             <footer class="container-fluid text-center jumbotron">
             <p>
            Follow Us on Instagram and Facebook for tasty Cakes  
               @OnlineCakeStore
              </p>
       </footer>
</body>  
</html>
