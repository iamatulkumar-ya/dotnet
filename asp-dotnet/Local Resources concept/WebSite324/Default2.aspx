<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 771px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="4" cellspacing="5" class="auto-style1">
        <tr>
            <td>
                <asp:Menu ID="Menu1" runat="server" meta:resourcekey="Menu1Resource1" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem meta:resourcekey="MenuItemResource1" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem meta:resourcekey="MenuItemResource2" Text="About Us" Value="About Us"></asp:MenuItem>
                        <asp:MenuItem meta:resourcekey="MenuItemResource3" Text="ContactUs" Value="ContactUs"></asp:MenuItem>
                        <asp:MenuItem meta:resourcekey="MenuItemResource7" Text="User" Value="User">
                            <asp:MenuItem meta:resourcekey="MenuItemResource4" Text="Admin" Value="Admin"></asp:MenuItem>
                            <asp:MenuItem meta:resourcekey="MenuItemResource5" Text="Super admin" Value="Super admin"></asp:MenuItem>
                            <asp:MenuItem meta:resourcekey="MenuItemResource6" Text="Simple User" Value="Simple User"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle BackColor="Fuchsia" BorderColor="#993300" BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" Font-Italic="True" ForeColor="Yellow" HorizontalPadding="5px" ItemSpacing="15px" VerticalPadding="5px" />
                </asp:Menu>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="79px" meta:resourcekey="Image1Resource1" ToolTip="This is Chuuni.Munni  Here " Width="184px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Login ID="Login1" runat="server" meta:resourcekey="Login1Resource1" OnAuthenticate="Login1_Authenticate">
                </asp:Login>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default2.aspx?c=en-US" Text="English" />
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Default2.aspx?c=hi-IN" Text="Hindi" />
                <asp:Button ID="Button3" runat="server" PostBackUrl="~/Default2.aspx?c=de-DE" Text="German" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
    
</body>
</html>
