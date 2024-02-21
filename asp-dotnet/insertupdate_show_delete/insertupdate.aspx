<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertupdate.aspx.cs" Inherits="insertupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 589px;
            height: 334px;
            border-style: solid;
            border-width: 2px;
        }
    </style>
</head>
<body><br /><br /><br /><br /><br /><br />
    <center><font face="pristina" size="8" >Both Insert and Update Operation Performed by One Common Button </font></center>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="id" runat="server" Text="Enter iD :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="idbox" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:Label ID="msg" runat="server" Text="Message"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="name" runat="server" Text="Enter Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="namebox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="id2" runat="server" Text="Enter ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="id2box" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="password" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="passwordbox" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" style="height: 26px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="insup" runat="server" Text="Insert/Update" OnClick="insup_Click" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
