<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileload.aspx.cs" Inherits="fileload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Save File</asp:LinkButton><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

        <font face="ravie" size="6"> It takes only ".jpg/jpeg" Formats of file</font><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:FileUpload ID="FileUpload2" runat="server" /><br /><br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Save jpeg/jpg file</asp:LinkButton>
    </form>
</body>
</html>
