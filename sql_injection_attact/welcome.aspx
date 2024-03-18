<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphUse" Runat="Server">


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
    &nbsp; <br />
<br />


</asp:Content>

