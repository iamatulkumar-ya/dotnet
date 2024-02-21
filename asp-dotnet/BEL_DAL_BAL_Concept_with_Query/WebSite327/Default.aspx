<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 677px;
            height: 340px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table align="center" class="auto-style1">
            <tr>
                <td>id</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>Enter id&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="show data" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="25px" OnClick="Button4_Click" Text="delete data" Width="91px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert data" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Enabled="False" OnClick="Button2_Click" Text="update data" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
