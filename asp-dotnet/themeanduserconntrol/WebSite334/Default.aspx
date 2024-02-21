<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 545px;
            border: 5px solid #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" PostBackUrl="~/Default.aspx?th=blue">BLUE</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Larger" PostBackUrl="~/Default.aspx?th=yellow">YELLOW</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Larger" PostBackUrl="~/Default.aspx?th=red">RED</asp:LinkButton>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx">Next page</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
            <td colspan="2">
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
