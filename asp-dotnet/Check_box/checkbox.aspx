<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkbox.aspx.cs" Inherits="checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><br /><br />
    <font face="pristina" size="9">Show button used for showing result</font><br /><br />
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Hindi" /><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Urdu" /><br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="English" /><br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="French" /><br />
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="Selected Languages is/are :"></asp:Label>  &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />

        <br /><br />
    <font face="pristina" size="9">Check Box used for showing result: autopostback:true</font><br /><br />


        <asp:CheckBox ID="CheckBox5" runat="server" Text="Hindi" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" /><br />
        <asp:CheckBox ID="CheckBox6" runat="server" Text="Urdu" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" /><br />
        <asp:CheckBox ID="CheckBox7" runat="server" Text="English" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged" /><br />
        <asp:CheckBox ID="CheckBox8" runat="server" Text="French" AutoPostBack="True" OnCheckedChanged="CheckBox8_CheckedChanged" /><br />
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Selected Languages is/are :"></asp:Label>  &nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br /><br />
    
    </div>
    </form>
</body>
</html>
