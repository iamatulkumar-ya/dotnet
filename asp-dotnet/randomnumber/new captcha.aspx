<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new captcha.aspx.cs" Inherits="new_captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        string :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        corresponding ascii value :
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="get ascii value" />
        <br />
        <br />
        sum of ascii value is :
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="go and match" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        string : <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        corresponding ascii value :
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        sum of ascii value is :
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
