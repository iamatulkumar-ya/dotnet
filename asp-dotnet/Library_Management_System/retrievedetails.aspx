<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="retrievedetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">      
      .auto-style2 {
            text-align:left;
        }
        .auto-style3 {
             width: 238px;
             text-align: left;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <div style="float:right;">
         <asp:Panel ID="Panel1" runat="server">
             <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Signin" ToolTip="For Registered User" Value="Signin" NavigateUrl="~/usersignin.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Signup" ToolTip="For New User" Value="Signup" NavigateUrl="~/userregistration.aspx"></asp:MenuItem>
            </Items>
              <StaticHoverStyle Font-Bold="True" ForeColor="Blue" />
            <StaticMenuItemStyle Font-Names="Calibri" Font-Size="X-Large" ForeColor="White" HorizontalPadding="10px" />
            
        </asp:Menu>
         </asp:Panel></div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <br />
    <table align="center" bgcolor="white" style="height: 392px; width: 500px" >
        <tr>
            <td colspan="3" background='images/bg.jpg'><asp:Label ID="Label13" runat="server" CssClass="lab" Text="Hello"></asp:Label>
               
        &nbsp; <asp:Label ID="username" runat="server" CssClass="lab" ForeColor="#FF6600"></asp:Label>
               
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="lab" Text="Your credential informations are:" Font-Size="X-Large"></asp:Label>
               
        </tr>
        <tr>
            <td class="auto-style4">
                    &nbsp;</td>
            <td class="auto-style3">
                    <asp:Label ID="Use" runat="server" Text="User id:" CssClass="lab2"></asp:Label>
                    </td>
            <td  class="auto-style2">
                    <asp:Label ID="userid" runat="server" CssClass="lab2"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="auto-style4">
                    &nbsp;</td>
            <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Password:" CssClass="lab2"></asp:Label>
                    </td>
            <td class="auto-style2">
                    <asp:Label ID="userpassword" runat="server" CssClass="lab2"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="auto-style4">
                    &nbsp;</td>
            <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Key:" CssClass="lab2"></asp:Label>
                    </td>
            <td class="auto-style2">
                    <asp:Label ID="userkey" runat="server" CssClass="lab2"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3" background='images/bg.jpg'>
                <asp:Label ID="Label12" runat="server" CssClass="lab" Text="Where you like to go ?" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" background='images/bg.jpg'>
                <asp:LinkButton ID="homebt" runat="server" CssClass="lbt" PostBackUrl="~/Homepage.aspx" >Home</asp:LinkButton>
            </td>
            <td background='images/bg.jpg'>
                <asp:LinkButton ID="signinbt" runat="server" CssClass="lbt" PostBackUrl="~/usersignin.aspx" >Signin</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

