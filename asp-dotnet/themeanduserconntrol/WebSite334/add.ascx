<%@ Control Language="C#" AutoEventWireup="true" CodeFile="add.ascx.cs" Inherits="add" %>
<style type="text/css">
    .auto-style1 {
        width: 100px;
    }
</style>

<table align="center" class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="No1"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="No2"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add" />
        </td>
    </tr>
</table>

