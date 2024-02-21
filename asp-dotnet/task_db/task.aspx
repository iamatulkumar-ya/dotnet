<%@ Page Language="C#" AutoEventWireup="true" CodeFile="task.aspx.cs" Inherits="task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 506px;
        }
        .auto-style2 {
            width: 420px;
        }
        .auto-style3 {
            width: 269px;
        }
        .auto-style4 {
            width: 269px;
            height: 32px;
        }
        .auto-style5 {
            width: 420px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            width: 269px;
            height: 33px;
        }
        .auto-style8 {
            width: 420px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
        .auto-style10 {
            width: 269px;
            height: 194px;
        }
        .auto-style11 {
            width: 420px;
            height: 194px;
        }
        .auto-style12 {
            height: 194px;
        }
    </style>
</head>
<body>
    <div align="center"><font face="Buxton sketch" size="9" > Mini Application Form </font></div><br />
    <form id="form1" runat="server">
        <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="id" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="idbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="name" runat="server" Text="Nmae"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="namebox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="city" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="citybox" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="msg" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Names="Microsoft Himalaya" Font-Size="XX-Large" Height="33px" Width="123px" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="rd" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="rd" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Other" GroupName="rd" />
                </td>
                <td>
                    <asp:Label ID="enterid" runat="server" Text="Enter id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="enteridbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="language" runat="server" Text="Language"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Hindi" /><br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Urdu"/><br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="English" /><br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="French" />
                </td>
                <td align="center">
                    <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click" />
                </td>
                <td align="center">
                    <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="image" runat="server" Text="Image"></asp:Label><br /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
                    <asp:Label ID="imgmsg" runat="server" Text="label"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Image ID="Image1" runat="server" Height="176px" Width="301px" />
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style3" align="center">
                    <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click" />&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
