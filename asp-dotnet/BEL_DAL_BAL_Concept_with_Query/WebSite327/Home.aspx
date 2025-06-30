<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/admin.aspx" Text="Admin" Value="Admin"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/product.aspx" Text="Product" Value="Product"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="Contactus" Value="Contactus"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
