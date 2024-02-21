<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform_1.aspx.cs" Inherits="webform_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> webform_1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <font face="ravie" size="9"><marquee>Hello WebForm </marquee> </font>
    </div>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 386px; top: 97px; position: absolute; height: 25px; width: 42px" Text="Email :"></asp:Label>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 386px; top: 131px; position: absolute; height: 25px; width: 70px" Text="Password :"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 384px; top: 179px; position: absolute; width: 78px" Text="Welcome :"></asp:Label>
        <asp:Label ID="label3" runat="server" style="z-index: 1; left: 384px; top: 234px; position: absolute; width: 78px" Text="Address :"></asp:Label>
        
        <asp:TextBox ID="textbox1" runat="server" style="z-index: 1; left:480px; top: 97px; position: absolute; width: 150px"></asp:TextBox>
        <asp:TextBox ID="textbox2" runat="server" style="animation: 1; left:480px; top:131px; position:absolute; width:150px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 470px; top: 260px; position: absolute; margin-top: 3px" Text="Submit"  />
        <img src="E:\My dOcs\programming\dot NET\asp programs\asp_1\img2.jpg" style="z-index: 1; left:793px; top:80px; position:absolute; visibility:visible; width:210px; height:280px"/>
    </form>
</body>
</html>
