<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyNow.aspx.cs" Inherits="Online_Cake_Shop.BuyNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            
            <asp:BoundField DataField="pr_id" HeaderText="Product Id" />
            <asp:ImageField DataImageUrlField="pr_Image" HeaderText="Image">
            </asp:ImageField>
            <asp:BoundField DataField="pr_Name" HeaderText="Product Name" />
            <asp:BoundField DataField="pr_Type" HeaderText="Type" />
            <asp:BoundField DataField="pr_Price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="viewMeasurmentDetails" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style15">
                         <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Order Detail"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" Text="Ordering Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblOrderingDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16">
                         <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblDeliveryDate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style18">&nbsp;</td>
                     <td>
                         <asp:Button ID="btnGoToStep2" runat="server" onclick="btnGoToStep2_Click" Text="Step 2 &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                 </tr>
             </table>
         </asp:View>
         <asp:View ID="View2" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style22">
                         <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Payment Detail"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style21">
                         <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Type:-"></asp:Label>
                     </td>
                     <td class="auto-style4">
                         <asp:Label ID="lblPayType" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 
                 
                 <tr>
                     <td class="auto-style23">&nbsp;
                         <asp:Button ID="btnBackToStep1" runat="server" onclick="btnBackToStep1_Click" Text="&lt;&lt; Step 1" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                     <td>&nbsp;
                         <asp:Button ID="btnGoToStep3" runat="server" onclick="btnGoToStep3_Click" Text="Step 3 &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                 </tr>
             </table>
         </asp:View>
         <asp:View ID="View3" runat="server">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style27">
                         <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Order Details"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style27">
                         <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Medium" Text="Order Date:-"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lblorderdate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 
                 <tr>
                     <td class="auto-style26">
                         <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Medium" Text="Delivery Date:-"></asp:Label>
                     </td>
                     <td class="auto-style24">
                         <asp:Label ID="lblcomplitiondate" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style26">
                         <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Medium" Text="Payment Type:-"></asp:Label>
                     </td>
                     <td class="auto-style24">
                         <asp:Label ID="lblPaymentby" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 
                 <tr>
                     <td class="auto-style27">&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="&lt;&lt; Step 2" BackColor="#FF66FF" BorderColor="#FF99FF" />
                     </td>
                     <td>&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button2_Click" Text="Submit &gt;&gt;" BackColor="#FF66FF" BorderColor="#FF66FF" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style27">&nbsp;</td>
                     <td>&nbsp;<asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#006600"></asp:Label>
                     </td>
                 </tr>
             </table>
         </asp:View>
     </asp:MultiView>
        </div>
            </form>
    </body>
</html>

