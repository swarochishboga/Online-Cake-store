<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homesignup.aspx.cs" Inherits="Online_Cake_Shop.Homesignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
        .auto-style3 {
            width: 45%;
        }
        .auto-style4 {
            width: 150px;
        }
        .auto-style5 {
            width: 149px;
            height: 26px;
        }
        .auto-style9 {
            width: 490px;
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
                            <li><a href="Homelogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Log in</a></li>  
                         </ul>
                    </div>
                 </div>
                </nav>
           <div class="container">
           <div class="col-sm-3"> 
           </div>
           <div class="col-sm-6">
           <div class="panel panel-primary">
           <div class="panel-heading">SignUp</div>
           <div class="panel-body">
             <div class="row">
               <div class="col-sm-12">

                <div class="from-group">
                     <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Full Name:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxFullName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxFullName" ErrorMessage="Enter Full Name" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtboxFullName" ErrorMessage="Only Characters are allowed" ForeColor="Red" style="font-size: small" ValidationExpression="[a-zA-Z' ]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtboxUsername" ErrorMessage="Enter UserName" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtboxUsername" ErrorMessage="Only Characters are allowed" 
                            ForeColor="Red" style="font-size: small" ValidationExpression="[a-zA-Z1-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Email:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtboxemail" ErrorMessage="Enter Email" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtboxemail" ErrorMessage="Invalid Email" ForeColor="Red" 
                            style="font-size: small" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtboxPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtboxConfirmPassword" ErrorMessage="*" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtboxPassword" ControlToValidate="txtboxConfirmPassword" 
                            ErrorMessage="Password should match" ForeColor="Red" 
                            style="font-size: small"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Gender:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownListGender" runat="server">
                    <asp:ListItem Value="-1">Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Select Gender" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Date Of Birth:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxDOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtboxDOB" ErrorMessage="Enter Date of Birth" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Contact:-"></asp:Label>
            </td>
            <td class="auto-style9"><asp:TextBox ID="TxtCon" runat="server" Height="25px" 
                            Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="TxtCon" ErrorMessage="*" ForeColor="Red" 
                            style="font-size: medium"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="TxtCon" ErrorMessage="InvalidNumber" ForeColor="Red" 
                            style="font-size: small" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Address:-"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtboxAdderss" runat="server" Height="47px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtboxAdderss" ErrorMessage="Enter Address" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" BackColor="#33CC33" BorderColor="#66FF33" Text="Submit" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" />

            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>
              </div>
               </div>
             </div>
           </div>
           <div class="panel-footer">
           </div>
            </div>
             </div>
            <div class="col-sm-3"> </div>
               </div>
    </form>
</body>
</html>
