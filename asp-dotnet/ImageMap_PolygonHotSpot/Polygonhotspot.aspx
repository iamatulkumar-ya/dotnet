<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Polygonhotspot.aspx.cs" Inherits="Polygonhotspot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h1>PolygonHotsPot</h1>
      <br />
        
        <asp:ImageMap ID="ImageMap1" runat="server" Height="330px" Width="500px" ImageUrl="~/pics/4.jpg"></asp:ImageMap> &nbsp; &nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server"  Height="330px" Width="500px" ImageUrl="~/pics/4.jpg" OnClick="ImageButton1_Click"/>
        <br /> <br />

        <asp:Button ID="coordinate" runat="server" Text="Set Coordinates" BorderStyle="Ridge" BorderWidth="5px" Font-Names="Buxton Sketch" Font-Size="X-Large" ForeColor="Black" OnClick="coordinate_Click"></asp:Button>
        </center>
    </div>
    </form>
</body>
</html>
