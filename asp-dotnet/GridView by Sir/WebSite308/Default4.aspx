<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="cid" DataSourceID="SqlDataSource1">
            <Columns>
               
                <asp:TemplateField>
                    <ItemTemplate>
                        <%#Eval("cname") %>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                                <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
                                <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                                <asp:BoundField DataField="scity" HeaderText="scity" SortExpression="scity" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aruConnectionString %>" SelectCommand="SELECT * FROM [studentDetails] WHERE ([cid] = @cid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="cid" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aruConnectionString %>" SelectCommand="SELECT * FROM [courseDetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
