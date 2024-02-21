<%@ Page Language="C#" AutoEventWireup="true" CodeFile="images.aspx.cs" Inherits="images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 914px;
            height: 482px;
        }
        .auto-style2 {
            height: 99px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" align="center">&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Select an Image"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" Width="289px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
                    <br />
                    <br />
&nbsp;<asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" Height="552px" Width="956px" />
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
