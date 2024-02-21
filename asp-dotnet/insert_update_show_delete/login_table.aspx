<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_table.aspx.cs" Inherits="login_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 489px;
            height: 286px;
            border: 2px solid #008000;
        }
        .auto-style3 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="id" runat="server" Text="iD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="msg" runat="server" Text="Message"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="enterid" runat="server" Text="Enter id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click" />
                </td>
                <td>
                    <asp:Button ID="delete" runat="server"  Text="Delete" OnClick="delete_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="insert" runat="server" OnClick="insert_Click" Text="Insert" />
                </td>
                <td>
                    <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
