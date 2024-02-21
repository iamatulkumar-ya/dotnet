<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empInfoConnectionString %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
