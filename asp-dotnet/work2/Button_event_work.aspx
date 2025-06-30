<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Button_event_work.aspx.cs" Inherits="Button_event_work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 409px; top: 70px; position: absolute; height: 22px; width: 127px;" Text="Enter Number 1 :"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 411px; top: 113px; position: absolute; height: 21px; width: 124px" Text="Enter Number 2 :"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 563px; top: 68px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 562px; top: 113px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 412px; top: 189px; position: absolute; height: 28px; width: 73px" Text="Addition" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 494px; top: 190px; position: absolute; height: 27px; width: 119px; right: 672px" Text="Multiplication" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 625px; top: 189px; position: absolute; height: 28px; width: 110px" Text="Substraction" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 760px; top: 189px; position: absolute; height: 26px; width: 64px" Text="Division" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 586px; top: 257px; position: absolute" Text="Clear" />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; top: 155px; position: absolute; left: 417px; height: 19px; width: 54px" Text="Result :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 563px; top: 155px; position: absolute"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 750px; top: 100px; position: absolute; height: 21px; width: 124px"  Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
