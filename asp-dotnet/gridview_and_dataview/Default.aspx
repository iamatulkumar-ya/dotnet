<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        gridview<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Book_name,Author_name" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="Book_image" SortExpression="Book_image">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="143px" Width="111px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Book_name" SortExpression="Book_name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Book_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author_name" SortExpression="Author_name">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Author_name") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publication_name" SortExpression="Publication_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Publication_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Publication_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edition" SortExpression="Edition">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Edition") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Edition") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Purchase_Price" SortExpression="Purchase_Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Purchase_Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Purchase_Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Issue_charges" SortExpression="Issue_charges">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Issue_charges") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Issue_charges") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT * FROM [Book_details] WHERE Book_Name LIKE '%'+@Bname+'%'">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Bname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        datalist<br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Book_name" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                Book_image:
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="102px" ImageUrl='<%# Eval("Book_image") %>' Width="113px" />
                <br />
                Book_name:
                <br />
                <asp:Label ID="Book_nameLabel" runat="server" Text='<%# Eval("Book_name") %>' />
                <br />
                Author_name:
                <br />
                <asp:Label ID="Author_nameLabel" runat="server" Text='<%# Eval("Author_name") %>' />
                <br />
                Publication_name:
                <asp:Label ID="Publication_nameLabel" runat="server" Text='<%# Eval("Publication_name") %>' />
                <br />
                Edition:
                <asp:Label ID="EditionLabel" runat="server" Text='<%# Eval("Edition") %>' />
                <br />
                Purchase_Price:
                <asp:Label ID="Purchase_PriceLabel" runat="server" Text='<%# Eval("Purchase_Price") %>' />
                <br />
                Issue_charges:
                <asp:Label ID="Issue_chargesLabel" runat="server" Text='<%# Eval("Issue_charges") %>' />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server">Purchase Now</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Issue Now</asp:LinkButton>
<br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
