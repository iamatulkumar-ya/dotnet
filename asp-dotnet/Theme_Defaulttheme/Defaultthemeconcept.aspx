<%--<%@ Page Language="C#" Theme="Green" AutoEventWireup="true" CodeFile="Defaultthemeconcept.aspx.cs" Inherits="Defaultthemeconcept" %>--%>

<%--<%@ Page Language="C#" Theme="Red" AutoEventWireup="true" CodeFile="Defaultthemeconcept.aspx.cs" Inherits="Defaultthemeconcept" %>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defaultthemeconcept.aspx.cs" Inherits="Defaultthemeconcept" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 586px;
            height: 338px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><em><h1>THEME</h1>
        <h2><span class="auto-style1">Default Theme:</span> Any control contains Only one theme (add theme name into page directive or web.config)</h2>
        default page<table align="center" class="auto-style2">
            <tr>
                <td>
    
                    &nbsp;</td>
                <td colspan="2">
    
                    &nbsp;</td>
                <td>
    
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
    
        <strong><em>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </em></strong>
                </td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td colspan="2">
    
        <strong><em>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
        </em></strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
        </em></strong>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
