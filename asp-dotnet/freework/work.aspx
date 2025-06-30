<%@ Page Language="C#" AutoEventWireup="true" CodeFile="work.aspx.cs" Inherits="work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 138px; width: 1259px">
        <table class="auto-style1">
            <tr>
                <td align="center">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="132px" Width="234px"/>
                </td>
            </tr>
        </table>
    </div><br />
        <div style="height: 343px; width: 1260px">

            <table class="auto-style1">
                <tr>
                    <td align="center">
                        <asp:Image ID="Image1" runat="server" Height="146px" Width="195px" />
                    </td>
                    <td align="center">
                        <asp:Image ID="Image2" runat="server"  Height="146px" Width="195px" />
                    </td>
                    <td align="center">
                        <asp:Image ID="Image3" runat="server"  Height="146px" Width="195px"  />
                    </td>
                    <td align="center">
                        <asp:Image ID="Image4" runat="server"  Height="146px" Width="195px"  />
                    </td>
                    <td align="center">
                        <asp:Image ID="Image5" runat="server"  Height="146px" Width="195px"  />
                    </td>
                </tr>
            </table>

        </div>
        
    </form>
</body>
</html>
