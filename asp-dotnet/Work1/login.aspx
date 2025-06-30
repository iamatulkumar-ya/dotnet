<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 543px;
            height: 198px;
            margin-top: 70px;
        }
        .auto-style2 {
            height: 50px;
        }
        .auto-style3 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <center> <font size="7" face="MonoType Corsiva">Log In</font> </center> 
   
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 408px; top: 157px; position: absolute" Text="Registration Number :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" MaxLength="12" style="z-index: 1; left: 665px; top: 158px; position: absolute; width: 207px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 408px; top: 204px; position: absolute" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" MaxLength="10" style="z-index: 1; left: 666px; top: 200px; position: absolute; width: 207px; right: 404px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center> <asp:Button ID="Button1" runat="server" BorderStyle="Solid" style="z-index: 1; left: 822px; top: 247px; position: absolute" Text="Log In" BackColor="#FFCCFF" BorderColor="#3366FF" Font-Names="Microsoft YaHei" />
                    <br /><br />
                   <a href="register.aspx" style="text-decoration:none"> <font size="4" face="BELL MT" color="red">Register Now</font> </a> </center>
                </td>
            </tr>
        </table>
    </form>
   
</body>
</html>
