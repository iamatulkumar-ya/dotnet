<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <DynamicMenuItemStyle BackColor="#33CC33" />
            <DynamicMenuStyle BackColor="#FF6600" />
            <Items>
                <asp:MenuItem Text="Home" Value="Home">
                    <asp:MenuItem NavigateUrl="~/admin.aspx" Text="Admin" Value="Admin">
                        <asp:MenuItem Text="cetpa" Value="cetpa"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Super user" Value="Super user"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/aboutus.aspx" Text="About Us" Value="About Us"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/contactus.aspx" Text="Contact us" Value="Contact us"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/gallary.aspx" Text="Gallary" Value="Gallary">
                    <asp:MenuItem NavigateUrl="~/Gallary/paroductimage.aspx" Text="Product image" Value="Product image"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Gallary/customerimage.aspx" Text="Customer image" Value="Customer image"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BorderStyle="Dotted" />
            <StaticMenuItemStyle BorderColor="#CC0099" />
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
