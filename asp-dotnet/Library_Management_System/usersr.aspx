<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usersr.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 555px;
            height: 489px;
            background-color: #FFFFFF;
        }
         .lab{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:xx-large; color:white;
        }
         .lab2{
            font-family:Calibri; font-size:x-large; font-style:italic;
        }
        .auto-style2 {
            text-align:left;
        }
        .auto-style3 {
            width: 228px;
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
            width: 39px;
        }
        .lbta {
            text-decoration: none;
            lighting-color: aqua;
            font-family: Calibri;
            font-size: x-large;
            color: white;
        }
        .lbta:hover{
            font-weight:900;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="3" background='images/bg.jpg'><asp:Label ID="Label1" runat="server" CssClass="lab" Text="Registration Successfully"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="lab" Text="Your credential informations are :" Font-Size="Large"></asp:Label></td>
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
                <asp:LinkButton ID="homebt" runat="server" CssClass="lbta" PostBackUrl="~/Homepage.aspx" >Home</asp:LinkButton>
            </td>
            <td background='images/bg.jpg'>
                <asp:LinkButton ID="signinbt" runat="server" CssClass="lbta" PostBackUrl="~/usersignin.aspx" >Signin</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

