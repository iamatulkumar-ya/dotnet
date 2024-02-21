<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table id="Next" align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Prerv Page</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default3.aspx">Next page</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empInfoConnectionString %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
