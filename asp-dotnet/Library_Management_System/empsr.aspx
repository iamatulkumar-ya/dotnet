<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="empsr.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 506px;
            border-color: #FFFFFF;
            height: 259px;
        }
         .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;text-decoration:none; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="lnkbtn" Font-Size="X-Large" Text="Employee Registration Successfull"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="lnkbtn" Font-Size="Large" Text="Do you want to add another account ?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="yes" runat="server" CssClass="lnkbtn" Font-Size="X-Large" ForeColor="#FF6600" OnClick="yes_Click">Yes</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="no" runat="server" CssClass="lnkbtn" Font-Size="X-Large" ForeColor="#FF6600" OnClick="no_Click"> NO</asp:LinkButton>
            </td>
        </tr>
        </table>
    <br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

