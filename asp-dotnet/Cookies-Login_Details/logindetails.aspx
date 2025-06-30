<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logindetails.aspx.cs" Inherits="logindetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
            height: 381px;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 13px;
        }
        .auto-style8 {
            height: 38px;
        }
    </style>
</head>
<body background="bg2.jpg">
    <form id="form1" runat="server">
        cookies concept with login validation<br /><br /><br /><br /><br /><br />
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2" bgcolor="skyblue" align="center" ><font color="white" size="6" face="comic sans mt">LogIn</font></td>
            </tr>
            <tr>
                <td class="auto-style3" style="border-width: 2px">
                    <asp:Label ID="Label1" runat="server" Text="Email :"></asp:Label>
                </td>
                <td class="auto-style3" style="border-width: 2px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="174px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field can not be blank" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter correct form of email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-width: 2px">
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style8" style="border-width: 2px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="174px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field can not be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="border-width: 2px"></td>
                <td class="auto-style7" style="border-width: 2px">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Password" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="border-width: 2px"></td>
                <td class="auto-style6" style="border-width: 2px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" OnClick="LinkButton1_Click">SignIn</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
