<%@ Page Language="C#" AutoEventWireup="true" CodeFile="captcha.aspx.cs" Inherits="captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 773px;
            border: 2px solid #FF6600;
            height: 331px;
           
        }
        .lab
        {
             text-transform:fullwidth;
             font-stretch:narrower;
             transform:skew(45deg,8deg);
                    }
        .d
        {
          background-color:rgba(163, 156, 156, 0.32);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>string :
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>gnsum = <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>ensum =
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Image:"></asp:Label>
                </td>
                <td colspan="2"> <div  class="d" style="border-style:solid;border-color:darkorchid;border-radius:5px 6px; height:106px; width:272px;text-align:center;ruby-align:center;"</td>
                    <br />
                    <br />
                    <asp:Label ID="cpt" CssClass="lab" runat="server" Font-Bold="True" Font-Names="pristina" Font-Size="XX-Large" Font-Strikeout="True" Text="Label"></asp:Label>
                <td>
                    <asp:Button ID="generate" runat="server" Text="re-generate" OnClick="generate_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Enter Captcha Here"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="335px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="go" runat="server" Text="go" OnClick="go_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br />
    </div>
    </form>
</body>
</html>
