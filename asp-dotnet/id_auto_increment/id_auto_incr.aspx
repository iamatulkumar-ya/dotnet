<%@ Page Language="C#" AutoEventWireup="true" CodeFile="id_auto_incr.aspx.cs" Inherits="id_auto_incr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1071px;
            height: 325px;
        }
        .auto-style2 {
            width: 613px;
        }
        .auto-style3 {
            width: 112px;
        }
        .auto-style4 {
            width: 145px;
        }
    </style>
</head>
<body>
    <br />
  <center>  <font face="Buxton Sketch" size="12" >iD HavinG a aUTO-INCREMENTed ProPerTy</font></center><br /><br />
    
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="2" class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td align="center" class="auto-style2">
                <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Vrinda" Font-Overline="False" Font-Size="XX-Large" ForeColor="#9900FF" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="showid" runat="server" Height="24px" Width="175px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="idlabel" runat="server" Text="Id"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="idbox" runat="server" Height="24px" ToolTip="Enter a Name" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="name" runat="server" Text=" Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="namebox" runat="server" Height="24px" ToolTip="Enter a Name" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="password" runat="server" Text=" Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="passwordbox" runat="server" Height="24px" ToolTip="Enter a Password" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:Label ID="id" runat="server" Text="Enter an id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="enteridbox" runat="server" Height="24px" Width="176px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click" />
            </td>
            <td>
                <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
