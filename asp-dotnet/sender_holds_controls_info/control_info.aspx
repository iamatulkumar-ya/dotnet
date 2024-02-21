<%@ Page Language="C#" AutoEventWireup="true" CodeFile="control_info.aspx.cs" Inherits="control_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 613px;
            height: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br /><br /><br /><br /><br /><br /><br />
        <table align="center" class="auto-style1">
            <tr>
                <td align="center">
                    <asp:Button ID="sub" runat="server" Text="Submit" OnClick="sub_Click" />
                </td>
                <td align="center">
                    <asp:Label ID="getid" runat="server" Text="Get Id Here"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                </td>
                <td align="center">
                    <asp:Label ID="getname" runat="server" Text="Get Text Here"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
