<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CC0066"></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" Text="Button" SkinID="p" />
        <asp:Button ID="Button2" runat="server" Text="Button" SkinID="q" />
    
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
        
    </form>
</body>
</html>
