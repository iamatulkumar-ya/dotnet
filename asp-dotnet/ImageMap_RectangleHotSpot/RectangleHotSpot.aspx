<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RectangleHotSpot.aspx.cs" Inherits="RectangleHotSpot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <br />
    <center><h1>ImageMap-RactangleHotSpot</h1></center><br />
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageMap ID="ImageMap1" runat="server" Height="330px" Width="600px" ImageUrl="~/pics/2.jpg" ImageAlign="Middle" OnClick="ImageMap1_Click">
            <asp:RectangleHotSpot Bottom="330" Right="200" AlternateText="Home" HotSpotMode="PostBack" PostBackValue="home" />
            <asp:RectangleHotSpot AlternateText="About Me" Bottom="330" HotSpotMode="Navigate" Left="200" Right="400" NavigateUrl="~/panda.aspx" />
            <asp:RectangleHotSpot AlternateText="Contact Me" Bottom="330" HotSpotMode="PostBack" Left="400" Right="600" PostBackValue="contactme" />
        </asp:ImageMap>
    
    </div>
    </form>
</body>
</html>
