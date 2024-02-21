<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CAPTCHA.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .cpta{
            border:solid;border-color:black;
        }
        .rt{
            transform:rotate(-10deg); text-transform:fullwidth;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;
        <div class="cpta" style="width:247px; height:63px">
            <asp:Label ID="cpt" runat="server" Font-Italic="False" Font-Names="Ravie" Font-Strikeout="True" Text="Label" Font-Size="XX-Large" CssClass="rt"></asp:Label>
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="generate" CommandName="b" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="match" CommandName="a" />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; textbox1 ka text =
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; split label ==
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        code :
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        final code of alphabets in string =<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        digit =
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        final string =
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;sum of alphabets ascii codes ===
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="test" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="outp" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
