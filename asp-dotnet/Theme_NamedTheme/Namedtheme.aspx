<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Namedtheme.aspx.cs" Inherits="Namedtheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 703px;
            height: 339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td>Skinid-id1</td>
                <td>Skinid-id2</td>
            </tr>
            <tr>
                <td>
                    <asp:Button  ID="Button1" runat="server" Text="id1" />
                </td>
                <td>
                    <asp:Button  ID="Button2" runat="server" Text="id2" SkinID="id2" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Calendar  ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    <asp:Calendar  ID="Calendar2" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton  ID="LinkButton1" runat="server">id1</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton  ID="LinkButton2" runat="server">id2</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
