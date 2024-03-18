<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="new_policy_holder.aspx.cs" Inherits="new_policy_holder" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cphUse">
<table align="center" bgcolor="#CCCCCC">
<caption style="background-color: #000080; color: #FFFFFF; text-decoration: blink; font-size: x-large;">
    NEW POLICY HOLDER</caption>



<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/agent_details.aspx">Agent Details</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/card_details.aspx">Card 
    Details</asp:HyperLink>
        &nbsp;
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
            PostBackUrl="~/policy_details.aspx">Policy Details</asp:LinkButton>
        
<br />
<br />


<tr>
<td>Customer Name: </td>
<td style="margin-left: 120px"><asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox></td>
<td>Age: </td>
<td><asp:TextBox ID="txtAge" runat="server" MaxLength="2"></asp:TextBox></td>
</tr>

<tr>
<td>Family Size: </td>
<td>
    <asp:TextBox ID="txtFamilySize" runat="server" MaxLength="2"></asp:TextBox>
    </td>
<td>Medical Status: </td>
<td>
    <asp:DropDownList ID="drpMedicalStatus" runat="server" Width="127px">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>d</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>

<tr>
<td>Contact Number: </td>
<td>
    <asp:TextBox ID="txtContactNumber" runat="server" MaxLength="10"></asp:TextBox>
    </td>
<td>Pincode: </td>
<td>
    <asp:TextBox ID="txtPincode" runat="server" MaxLength="6"></asp:TextBox>
    </td>
</tr>

<tr>
<td>State: </td>
<td>
    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
    </td>
<td>City: </td>
<td>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Permanent Address: </td>
<td>
    <asp:TextBox ID="txtPermanentAddress" runat="server" Height="75px"></asp:TextBox>
    </td>
<td>Address for Communication: </td>
<td>
    <asp:TextBox ID="txtAddressForCommunication" runat="server" Height="68px"></asp:TextBox>
    </td>
    </tr>
    

<tr>
<td>Email Id: </td>
<td>
    <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
    </td>
<td>Policy Id: </td>
<td>
    <asp:DropDownList ID="drpPolicyId" runat="server" Width="130px">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>

<tr>
<td>Sum Assured: </td>
<td>
    <asp:TextBox ID="txtSumAssured" runat="server"></asp:TextBox>
    </td>
<td>No.of Premiums: </td>
<td>
    <asp:TextBox ID="txtNoOfPremiums" runat="server" MaxLength="2"></asp:TextBox>
    </td>
</tr>

<tr>
<td>Premium Amount: </td>
<td>
    <asp:TextBox ID="txtPremiumAmount" runat="server"></asp:TextBox>
    </td>
<td>Polocy Status: </td>
<td>
    <asp:DropDownList ID="drpPolicyStatus" runat="server" Width="133px">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Open</asp:ListItem>
        <asp:ListItem>In Progress</asp:ListItem>
        <asp:ListItem>Approved</asp:ListItem>
    </asp:DropDownList>
    </td>
</tr>

<tr>
<td class="style1">Issued By: </td>
<td class="style1">
    <asp:DropDownList ID="drpIssuedBy" runat="server">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
</tr>

<tr>

<td colspan="4" align="center">
    <asp:Button ID="btnSave" runat="server" 
        Text="Save New Customer Details (Before Handling SQL attack)" 
        onclick="btnSave_Click" style="height: 26px" />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Search (before handling SQL injection attack)" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="clear" />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Save New Customer Details (After Handling SQL attack)" />
    <br />
    <asp:Button ID="Button3" runat="server" 
        Text="Search (After handling SQL injection attack)" 
        onclick="Button3_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    </td>


</tr>

</tr>
</tr>
</tr>
</tr>
</table>
</asp:Content>


