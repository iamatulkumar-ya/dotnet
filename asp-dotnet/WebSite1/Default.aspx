﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="text" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Hello world"></asp:Label>
        &nbsp;<asp:Label ID="result" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" />
    
    &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
