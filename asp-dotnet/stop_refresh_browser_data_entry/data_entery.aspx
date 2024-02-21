<%@ Page Language="C#" AutoEventWireup="true" CodeFile="data_entery.aspx.cs" Inherits="data_entery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            height: 288px;
            background-color: #FF9933;
        }
        .auto-style2 {
            width: 118px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="insert" runat="server" OnClick="insert_Click" Text="Insert Data" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" InsertCommand="INSERT INTO login_asp(id, Name, Password) VALUES(@id,@Name,@Password)" SelectCommand="SELECT * FROM [login_asp]">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="Name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="Password" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
