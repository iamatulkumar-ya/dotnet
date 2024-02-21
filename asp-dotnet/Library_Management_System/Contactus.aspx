<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 551px;
            height: 379px;
            border: 2px solid #FFFFFF;
            
        }
        
        .tl{
            text-align:left;
        }    

           .lab{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:xx-large; color:white;
        }
            .lab2{
            font-family:Calibri; font-weight:bold; font-size:x-large;
        }
            .auto-style3 {
            font-family: Calibri;
            font-size: x-large;
            font-style: italic;
        }
            .auto-style4 {
            height: 53px;
        }
        .auto-style5 {
            text-align: left;
            width: 17px;
            height: 85px;
        }
        .auto-style6 {}
        .auto-style7 {
            text-align: left;
            width: 17px;
            height: 91px;
        }
        .auto-style8 {
            text-align: left;
            height: 91px;
        }
        .auto-style9 {
            text-align: left;
            width: 17px;
            height: 94px;
        }
        .auto-style10 {
            text-align: left;
            height: 94px;
        }
        .auto-style11 {
            text-align: left;
            height: 85px;
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
         </asp:Panel>
         <asp:Panel ID="Panel2" runat="server">
              <div style="float:right;width:auto">
        <asp:Label ID="Label1" runat="server" CssClass="labh" Text="Hello!"></asp:Label>&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="lab3n"></asp:Label>&nbsp;
          &nbsp;<br />
        <div style="float:right;width:auto">
        <asp:LinkButton ID="logout" runat="server" CssClass="lbt" OnClick="logout_Click" >Logout</asp:LinkButton>
             </div>
        </div>
         </asp:Panel>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br />
    <table align="center" class="auto-style1" bgcolor="white">
        <tr>
            <td colspan="3"  background='images/bg.jpg' class="auto-style4">
                <asp:Label ID="Label3" runat="server" CssClass="lab" Text="Contact Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">  
            </td>
            <td class="auto-style8">  <asp:Label ID="Label4" runat="server" Text="Contact No:" CssClass="lab2"></asp:Label>
            </td>
            <td class="auto-style8">  <asp:Label ID="Label7" runat="server" Text="XXXXXXXXXX" CssClass="auto-style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">  
            </td>
            <td class="auto-style10">  <asp:Label ID="Label6" runat="server" Text="Email:" CssClass="lab2"></asp:Label>
            </td>
            <td class="auto-style10">  <asp:Label ID="Label8" runat="server" Text="xxxxxxxxx@xxxx.xxx" CssClass="auto-style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">  
            </td>
            <td class="auto-style11">  <asp:Label ID="Label5" runat="server" Text="Address:" CssClass="lab2"></asp:Label>
            </td>
            <td class="auto-style11">  <asp:Label ID="Label9" runat="server" Text="xxxxxxxxxxxxxxxxxxxxxxxxxxxx" CssClass="auto-style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" background='images/bg.jpg' class="auto-style6">
                <asp:Label ID="Label10" runat="server" CssClass="lab" Text="********"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

