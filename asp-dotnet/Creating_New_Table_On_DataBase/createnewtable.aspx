<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createnewtable.aspx.cs" Inherits="createnewtable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 263px;
            width: 569px;
        }
    </style>
</head>
<body>
    <center><h1><i>Creating New Table On DataBase</i></h1></center>
    <form id="form1" runat="server">
    <div>
    <table align="center" class="auto-style1">
            <tr>
                <td>DataBase Names:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>Tables Name:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Enter New Table Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="cdb" runat="server" Text="create table" OnClick="cdb_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
