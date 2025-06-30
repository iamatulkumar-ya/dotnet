<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 653px;
            height: 342px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <br />
    <center><font face="comic sans ms" size="6">BEL_DAL_BAL_Concept_Using_StoredProcedure(operation)_with_Table(login)</font></center><br /><br />
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" align="center" >
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="idbox" runat="server" Height="30px" Width="149px"></asp:TextBox>
                </td>
                <td colspan="2" rowspan="2" align="center">
                    <asp:Label ID="msg" runat="server" Text="Label" Font-Italic="True" Font-Names="Buxton Sketch" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="namebox" runat="server" Height="30px" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="passwordbox" runat="server" Height="30px" Width="149px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="ENTER ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="enteridbox" runat="server" Height="30px" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:LinkButton ID="insert" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS"  Font-Size="Large" Font-Underline="False" OnClick="insert_Click">INSERT</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="update" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS"  Font-Size="Large" Font-Underline="False" OnClick="update_Click">UPDATE</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="show" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="Large"  Font-Underline="False" OnClick="show_Click">SHOW</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="delete" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="Large"  Font-Underline="False" OnClick="delete_Click">DELETE</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
