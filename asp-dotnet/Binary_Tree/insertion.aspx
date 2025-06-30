<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertion.aspx.cs" Inherits="insertion" %>

<!DOCTYPE html>
<script runat="server">

  
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 470px;
            height: 186px;
            border: 1px solid #FF6600;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 220px;
        }
        .auto-style4 {
            width: 903px;
            height: 542px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2" align="center">
                    <asp:Label ID="msg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Enter the value of node:"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="64px" MaxLength="3"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" align="center">
                    <asp:Button ID="rootbutton" runat="server" Text="Insert First Node" OnClick="rootbutton_Click" />
                </td>
                <td align="center">
                    <asp:Button ID="childbutton" runat="server" Enabled="False" Text="Insert Child Node" OnClick="childbutton_Click" />
                </td>
            </tr>
        </table>
        <br />
   
        <asp:Panel ID="Panel1" runat="server" Height="710px" Width="1261px" >
        
            
            <center><asp:Label ID="rootn" runat="server" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <table align="center" class="auto-style4">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="odd" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="even" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </center>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
