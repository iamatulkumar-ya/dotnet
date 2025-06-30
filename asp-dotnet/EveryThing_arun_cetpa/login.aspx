<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 413px;
            height: 475px;

        }
        .auto-style2 {
            height: 55px;
        }
        .auto-style3 {
            height: 173px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 54px;
        }
        .auto-style6 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
      
            
        <table align="center" class="auto-style1">
            <tr>
                <td align="center" colspan="2" class="auto-style3">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/logo.png" Width="247px" Height="155px" ImageAlign="Middle" />
            
                </td>
            </tr>
            <tr>
                <td bgcolor="#f6b720" align="center" colspan="2" class="auto-style2"><font face="calibri" size="6" color="white">Login</font></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Email :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="158px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="158px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Calibri" Text="Remember Password" />
                </td>
            </tr>
            <tr>
                <td  bgcolor="#f6b720" align="center" class="auto-style5" colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" Font-Size="Large" Font-Underline="False" ForeColor="White">Sign in</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Calibri" Font-Size="Large" Font-Underline="False" ForeColor="White">Sign up</asp:LinkButton>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
