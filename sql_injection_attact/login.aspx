<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cphUse">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
    
    <table align="center" bgcolor="#CCCCCC">
    <caption style="color: #FFFFFF; font-size: x-large; text-decoration: blink; background-color: #000080">Without handling SQL Injection Attacks</caption>
    <tr>
    <td>User Name:</td>
    <td>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter User Name" ControlToValidate="txtUserName" 
            Display="Dynamic" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
    </tr>
    
    <tr>
    <td>
        Password:
    </td>
    
    <td>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Password" ControlToValidate="txtPassword" Display="Dynamic" 
            SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
    </td>
    </tr>

    <tr>
    <td colspan="2" align="right">
        <asp:Button ID="btnLogin" runat="server" Text="Search" 
            onclick="btnLogin_Click" ValidationGroup="a" />
             <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Login" />
    </td>
    
   
    
    <td>
       
    </td>
    </tr>

        
       </table>
    
        <br />
    <br />
    
    <table align="center" bgcolor="#CCCCCC">
        <caption style="color: #FFFFFF; font-size: x-large; text-decoration: blink; background-color: #000080">After handling SQL Injection Attacks</caption>
    <tr>
    <td>User Name:</td>
    <td>
        <asp:TextBox ID="txtUn" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Enter User Name" ControlToValidate="txtUn" 
            Display="Dynamic" SetFocusOnError="True" ValidationGroup="b"></asp:RequiredFieldValidator>
    </td>
    </tr>
    
    <tr>
    <td>
        Password:
    </td>
    
    <td>
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Enter Password" ControlToValidate="txtPwd" Display="Dynamic" 
            SetFocusOnError="True" ValidationGroup="b"></asp:RequiredFieldValidator>
    </td>
    </tr>

    <tr><td colspan="2" align="right">
        <asp:Button ID="Button1" runat="server" Text="Search" ValidationGroup="b" 
            onclick="Button1_Click" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Login" />
        </td>
     </tr>

        
    </table>
  
        <center>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
      
        </center>
        
    
    
    </asp:Panel>
</asp:Content>


