<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autopostback.aspx.cs" Inherits="autopostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <font face="pristina" size="5">Result will be automaticaly shown after you will put value into "Enter no 2" box its happening by "Autopostback:true"</font>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Enter No 1"></asp:Label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Enter Number 2"></asp:Label >&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Result"></asp:Label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
    
    </div>
    </form>
</body>
</html>
