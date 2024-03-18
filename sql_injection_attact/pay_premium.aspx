<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pay_premium.aspx.cs" Inherits="pay_premium" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cphUse">



<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/agent_details.aspx">Agent Details</asp:HyperLink>
        &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/pay_premium.aspx">Pay Premium</asp:LinkButton>
    &nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/payment_details.aspx">Payment Details</asp:LinkButton>
    &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" 
            PostBackUrl="~/VIEW Policy Details.aspx">View Policy Details</asp:LinkButton>
             &nbsp;
   
        
<br />
<br />


<table bgcolor="#CCCCCC">
<caption style="color: #FFFFFF; background-color: #000080; text-decoration: blink; font-size: x-large;">
    HERE ATTACKER CAN KNOW THE DETAILS OF OTHER MEMBERS CARD DETAILS</caption>

<tr>
<td>Customer Id: </td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    </td>
<td></td>
<td>Policy Id: </td>
<td><asp:TextBox ID="txtPolicyId" runat="server"></asp:TextBox></td>
<td></td>
</tr>

<tr>
<td>Premium Amount: </td>
<td><asp:TextBox ID="txtPremiumAmount" runat="server" 
        onmouseclick="txtPremiumAmount_TextChanged"></asp:TextBox></td>
<td></td>
<td>Card Name: </td>
<td><asp:TextBox ID="txtCardName" runat="server" ></asp:TextBox></td>
<td></td>
</tr>

<tr>
<td>Card Number&nbsp; </td>
<td><asp:TextBox ID="txtCardNumber" runat="server" MaxLength="12"></asp:TextBox></td>
<td></td>
<td>Pin Numner: </td>
<td><asp:TextBox ID="txtPinNumber" runat="server" MaxLength="4"></asp:TextBox></td>
<td></td>
</tr>

<tr>
<td>Transfer TO: </td>
<td><asp:TextBox ID="txtTransferTo" runat="server" MaxLength="11"></asp:TextBox></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

<tr>

<td colspan="2">
    <asp:Button ID="Button1" runat="server" 
        Text="Pay Premium - (SQL Injection Attack Not handled)" 
        onclick="Button1_Click" />
    <br />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Search(Before SQL Injection handled)" />
    <br />
    </td>
    
    <td></td>
<td colspan="2">
    <asp:Button ID="Button2" runat="server" 
        Text="Pay Premium - (SQL Injection Attack handled)" onclick="Button2_Click" />
    <br />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Search(After SQL injection Handled" />
    <br />
    </td>
</tr>


   <center> <asp:GridView ID="GridView1" runat="server">
    </asp:GridView></center>


</table>
</asp:Content>


