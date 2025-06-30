<%@ Page Language="C#" AutoEventWireup="true" CodeFile="radiobutton.aspx.cs" Inherits="radiobutton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <br /><br /><br />
    <font face="monotype corsiva" size="8"> Click on Show "Button" Then Selected Language Will be show</font>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" Text="C#" GroupName="rd" /><br />
    
   
        <asp:RadioButton ID="RadioButton2" runat="server" Text="C" GroupName="rd" /><br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="C++" GroupName="rd" /><br /><br />
          <asp:Label ID="Label2" runat="server" Text="Selected Language is :"></asp:Label>&nbsp; &nbsp
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="show" OnClick="Button1_Click" />

        <br /><br /><br /><br /><br /><br />
            <font face="monotype corsiva" size="8"> Click on "RadioButton" Then Selected Language Will be show</font><br /><br />

        <asp:RadioButton ID="RadioButton4" runat="server" Text="C#" GroupName="rdd" OnCheckedChanged="RadioButton4_CheckedChanged" AutoPostBack="True" /><br />
    
   
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Python" GroupName="rdd" OnCheckedChanged="RadioButton5_CheckedChanged" AutoPostBack="True" /><br />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="C++" GroupName="rdd" OnCheckedChanged="RadioButton6_CheckedChanged" AutoPostBack="True" /><br /><br />
          <asp:Label ID="Label3" runat="server" Text="Selected Language is :"></asp:Label>&nbsp; &nbsp
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
         </div>
    </form>
</body>
</html>
