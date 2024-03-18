<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="agent_details.aspx.cs" Inherits="agent_details" Title="Untitled Page" %>

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
        
<br />
<br />
        
        
<table align="center" bgcolor="#CCCCCC" style="height: 123px">

<caption style="text-decoration: blink; font-size: x-large; color: #FFFFFF; background-color: #000066;">
    Here the HACKER can Delete all the agent from our Agents Details Table</caption>
<tr>
<td>Employee Code: </td>
<td>
    <asp:TextBox ID="txtEmployeeCode" runat="server"></asp:TextBox>
                                </td>
<td>Name: </td>
<td>
    <asp:TextBox ID="txtName" runat="server" Width="142px"></asp:TextBox>
                                </td>
</tr>

<tr>
<td>D.O.B: </td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
<td>D.O.J: </td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Width="138px"></asp:TextBox>
                                </td>
</tr>

<tr>
<td>Gender: </td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="126px" Height="16px">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
</td>
<td>Qualification: </td><td> 
    <asp:TextBox ID="txtQualification" runat="server" Width="137px"></asp:TextBox>
    </td>
</tr>

<tr>
<td colspan="2" align="center">
    <asp:Button ID="btnSave" runat="server" Text="(SQL injection Handled) Create New Agent" 
        onclick="btnSave_Click" /></td>
    
    <td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="(Without SQL injection Handled)Create New Agent Details" 
            onclick="Button1_Click" /></td>

</tr>

<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Clear" />
    </td>
    
    <td colspan="2" align="center">
        <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
    </td>

</tr>
</table>
<br />
                        &nbsp;&nbsp;<center><asp:GridView ID="GridView1" runat="server">
                        </asp:GridView></center>
                        &nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hacking Code: Just 
    type ' delete from agent; -- in the Employee Code textbox     
</asp:Content>


