<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 678px;
            height: 391px;
            border: 3px solid #0066FF;
        }
        .auto-style2 {
            height: 288px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="253px" meta:resourcekey="Image1Resource1" Width="407px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" meta:resourcekey="Menu1Resource1" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem meta:resourcekey="MenuItemResource4" Text="Home" Value="Home">
                                <asp:MenuItem meta:resourcekey="MenuItemResource1" Text="customer home" Value="customer home"></asp:MenuItem>
                                <asp:MenuItem meta:resourcekey="MenuItemResource2" Text="product home" Value="product home"></asp:MenuItem>
                                <asp:MenuItem meta:resourcekey="MenuItemResource3" Text="admin home" Value="admin home"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem meta:resourcekey="MenuItemResource5" Text="about us" Value="about us"></asp:MenuItem>
                            <asp:MenuItem meta:resourcekey="MenuItemResource6" Text="contact us" Value="contact us"></asp:MenuItem>
                            <asp:MenuItem meta:resourcekey="MenuItemResource7" Text="gallary" Value="gallary"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Login ID="Login1" runat="server" Height="136px" meta:resourcekey="Login1Resource1" Width="376px">
                    </asp:Login>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" meta:resourcekey="Button1Resource1" Text="Button" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx?c=hi-IN">Hindi</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Default.aspx">English</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
