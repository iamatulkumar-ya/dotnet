<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readcookie.aspx.cs" Inherits="readcookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="rc" runat="server"  Text="Read Cookie" OnClick="rc_Click" />
    
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
