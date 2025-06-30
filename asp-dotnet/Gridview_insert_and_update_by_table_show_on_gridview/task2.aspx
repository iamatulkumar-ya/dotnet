<%@ Page Language="C#" AutoEventWireup="true" CodeFile="task2.aspx.cs" Inherits="task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 482px;
            height: 218px;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            height: 44px;
        }
        .auto-style4 {
            width: 118px;
            height: 44px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 118px;
            height: 45px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            width: 118px;
            height: 40px;
        }
    </style>
</head>
<body>
    <br />
    <font face="Pristina" size="6">Table - Login(id = 101) insertion and updation by table and data shown by gridview</font>
    <br />
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="center" class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Enter id"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="idbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Enter Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="namebox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Enter Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="passwordbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:LinkButton ID="insert" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="False" OnClick="insert_Click">Insert</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="update" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="False" OnClick="update_Click">Update</asp:LinkButton>
                </td>
                <td align="center" class="auto-style2">
                    <asp:LinkButton ID="delete" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="False" OnClick="delete_Click">Delete</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br /><br />
    
        <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="143px" Width="395px" BorderStyle="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="edit" runat="server" Font-Names="Buxton Sketch" Font-Size="X-Large" Font-Underline="False" OnClick="edit_Click">Edit</asp:LinkButton>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" DeleteCommand="DELETE FROM [login] WHERE [id] = @id" InsertCommand="INSERT INTO [login] ([id], [Name], [Password]) VALUES (@id, @Name, @Password)" SelectCommand="SELECT * FROM [login]" UpdateCommand="UPDATE [login] SET [Name] = @Name, [Password] = @Password WHERE [id] = @id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="namebox" Name="Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="passwordbox" Name="Password" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="namebox" Name="Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="passwordbox" Name="Password" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
