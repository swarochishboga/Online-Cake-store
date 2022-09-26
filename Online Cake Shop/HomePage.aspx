<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Online_Cake_Shop.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME TO ONLINE CAKE SHOP</title>
  
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
                            <li class="active"><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutCakeshop.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact</a></li>                      
                        
                        </ul>
                        <ul class="nav navbar-nav navbar-right">                       
                            <li><a href="Homelogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                             <li><a href="Homesignup.aspx"><span class="glyphicon glyphicon-log-in"></span>Sigup</a></li>
                        </ul>
                        
                    </div>

                    </div>
                </nav>
                 
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">

                     <ol class="carousel-indicators">
                      <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                       <li data-target="mycarousel" data-slide-to="1"></li>
                       </ol>

                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <image src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/strawberry-cake-jpg-1522267153.jpg" alt="Image">          
                                <div class="carousel-caption">
                                    <h3 class="auto-style1">
                                        Offer On </h3>
                                    <p class="auto-style2">
                                        Strawberry 40% off
                                    </p>
                                </div>
                            </image>
                        </div>
                           <div class="item ">
                            <image src=  "https://i.pinimg.com/originals/0f/8d/4c/0f8d4c7b43e66a993d2fd807fa9b722c.jpg" alt="Image">
                                <div class="carousel-caption">
                                    <h3>
                                        Offer</h3>
                                    <p>
                                        Strawberry
                                    </p>
                                </div>
                            </image>
                        </div>
                    </div>

                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                     <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                  <span class="sr-only">Next </span>
                    </a>&nbsp;&nbsp;          
                        </div>
                    </div>
                </div>             
            </div>
            <div >
               </div>
         </form>
    </body>
</html>
