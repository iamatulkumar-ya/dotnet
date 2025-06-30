<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createcookie.aspx.cs" Inherits="createcookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="cc" runat="server"  Text="Create Cookie" OnClick="cc_Click" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/readcookie.aspx">next page</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
