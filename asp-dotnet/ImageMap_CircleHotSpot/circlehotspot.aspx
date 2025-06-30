<%@ Page Language="C#" AutoEventWireup="true" CodeFile="circlehotspot.aspx.cs" Inherits="circlehotspot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h1>Circle HotSpot</h1></center>
        <br />


        <asp:ImageMap ID="ImageMap1" runat="server" Height="450px" Width="900px" align="center" ImageUrl="~/pics/1.jpg">
            <asp:CircleHotSpot AlternateText="house" HotSpotMode="Navigate" Radius="165" X="270" Y="250" NavigateUrl="~/circlehotspot.aspx" />
        </asp:ImageMap>


    </div>
    </form>
</body>
</html>
