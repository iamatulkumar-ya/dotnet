<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 392px;
            border-style: solid;
            border-width: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="8" cellspacing="7" class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default3.aspx">Next page</asp:HyperLink>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx?c=en-US">English</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Default.aspx?c=hi-IN">Hindi</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Default.aspx?c=de-DE">German</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Default.aspx?c=fr-FR">French</asp:LinkButton>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Prev page</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="4">
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="<%$Resources:cetpalko,Home %>" Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="<%$Resources:cetpalko,AboutUS %>" Value="AboutUS"></asp:MenuItem>
                            <asp:MenuItem Text="<%$Resources:cetpalko,ContactUs %>" Value="ContactUS"></asp:MenuItem>
                            <asp:MenuItem Text="<%$Resources:cetpalko,Admin %>" Value="Admin"></asp:MenuItem>
                        </Items>
                        <StaticMenuItemStyle BackColor="#FF9900" BorderColor="#000099" BorderStyle="Ridge" BorderWidth="6px" ForeColor="White" HorizontalPadding="5px" ItemSpacing="10px" VerticalPadding="5px" />
                    </asp:Menu>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="4">
                    <asp:Label ID="Label1" runat="server" Text="<%$Resources:cetpalko,txt %>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="4">
                    <asp:Button ID="Button1" runat="server" Text="<%$Resources:cetpalko,btn %>" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="4">
                    <asp:Button ID="Button2" runat="server" Text="<%$Resources:cetpalko,btn1 %>" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="4">
                    <asp:Label ID="Label2" runat="server" Text="<%$Resources:cetpalko,lbl %>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
