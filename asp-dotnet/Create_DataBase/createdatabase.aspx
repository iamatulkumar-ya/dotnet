<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createdatabase.aspx.cs" Inherits="createdatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 507px;
            height: 197px;
        }
    </style>
</head>
<body>
    <center><h1><i>Creating New DataBase On Server</i></h1></center><br />
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
                <td>Enter New DataBase Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="cdb" runat="server" Text="create database" OnClick="cdb_Click" />
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
