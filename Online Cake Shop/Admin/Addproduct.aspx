<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Online_Cake_Shop.Admin.Addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Name:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Type:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:DropDownList ID="DropDownType" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="-1">Select Type</asp:ListItem>
                    <asp:ListItem >plane</asp:ListItem>
                    <asp:ListItem >photo </asp:ListItem>
                    <asp:ListItem >1 tier</asp:ListItem>
                    <asp:ListItem >2 tier</asp:ListItem>
                    <asp:ListItem >3 tier</asp:ListItem>
                    <asp:ListItem >Pastries</asp:ListItem>    
                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownType" ErrorMessage="Select Type" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Price:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:TextBox ID="txtboxPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Description:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:TextBox ID="txtboxDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="FoodType:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:DropDownList ID="DropDownListFoodType" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="-1">Please Select</asp:ListItem>
                    <asp:ListItem >Egg</asp:ListItem>
                    <asp:ListItem >Eggless</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListFoodType" ErrorMessage="Select Food Type" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Image:-"></asp:Label>
            </td>
            <td style="width: 893px">
                <asp:FileUpload ID="FileUploadImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td style="width: 893px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#33CC33" BorderColor="#33CC33" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td style="width: 893px">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
