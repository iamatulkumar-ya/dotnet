<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 527px;
            border: 5px solid #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="6" cellspacing="6" class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="English" PostBackUrl="~/Default.aspx?c=en-US" />
                    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Hindi" PostBackUrl="~/Default.aspx?c=hi-IN" />
                      &nbsp;  &nbsp;  &nbsp;  &nbsp;
                    <asp:Button ID="Button4" runat="server" Text="German" PostBackUrl="~/Default.aspx?c=de-DE" />
                    <asp:Image ID="Image1" runat="server" Height="93px" Width="110px" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2"><h2>Registration Form</h2></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" ></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="<%$Resources:registration,btn %>" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
