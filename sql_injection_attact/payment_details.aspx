<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment_details.aspx.cs" Inherits="payment_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="cphUse">


<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/agent_details.aspx">Agent Details</asp:HyperLink>
        &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/new_policy_holder.aspx">New Policy Holder</asp:HyperLink>
        
    &nbsp;
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


<table align="center" bgcolor="#CCCCCC">
<caption style="text-decoration: blink; color: #FFFFFF; font-size: x-large; background-color: #000080">
    Here the attacker will view all the payments made by all the customers in our 
    organisation</caption>

 <tr>
    <td>Card Number: </td>    
    <td><asp:TextBox ID="txtCardNo" runat="server"></asp:TextBox></td>    
    <td></td>    
    <td>Pin Number: </td>
    <td><asp:TextBox ID="txtPinNo" runat="server"></asp:TextBox></td>
    <td></td>
    </tr>
    
    <tr>
    <td colspan="2">
        <asp:Button ID="Button1" runat="server" 
            Text="Payment Details - Without handling  SQL Injection Attack" 
            onclick="Button1_Click" /></td>
        <td></td>        
        
        <td colspan="2">
        <asp:Button ID="Button2" runat="server" 
                Text="Payment Details - After handling  SQL Injection Attack" 
                onclick="Button2_Click" /></td>
        <td></td>        
    </tr>
    
    <tr>
    <td colspan="6" style="text-align: center">
        <br />
        <asp:GridView ID="gvPaymentDetails" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" style="text-align: center">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        Hacking code: aaa 'or' 1 '=' 1</td>
    </tr>
</table>
        
</asp:Content>



