<%@ Page Language="C#" AutoEventWireup="true" CodeFile="source_page.aspx.cs" Inherits="source_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/image/009.gif" NavigateUrl="~/destination_page.aspx">Go To Another Page</asp:HyperLink>
    
    </div>
        <p>
            i am source page</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;&nbsp;&nbsp; with coding</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" Width="82px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </p>
    </form>
</body>
</html>
