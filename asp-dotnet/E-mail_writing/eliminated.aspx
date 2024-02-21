<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eliminated.aspx.cs" Inherits="eliminated" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br /><br /><br /><br />
      <center> <asp:Panel ID="timeoutp" runat="server">

            <asp:Label ID="Label4" runat="server" Text="Sorry you are eliminated....." Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        </asp:Panel>
        <br /><br /><br /><br />
        <asp:LinkButton ID="retry" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" ForeColor="Red" OnClick="retry_Click">Retry</asp:LinkButton></center>
   
    </div>
    </form>
</body>
</html>
