<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dynamiccreationoftextbox.aspx.cs" Inherits="dynamiccreationoftextbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 190px">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
        </asp:Panel>

        <br />

     
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

     
    </div>
    </form>
</body>
</html>
