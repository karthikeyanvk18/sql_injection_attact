<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VIEW Policy Details.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeading" Runat="Server">
<table align="center" ><tr align ="center" ><td align="center" >
    <asp:Label ID="Label1" runat="server" Text="POLICY DETAILS"></asp:Label></td></tr>
<tr><td>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </td></tr></table>
</asp:Content>

