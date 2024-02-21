<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageupdate.aspx.cs" Inherits="imageupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="109px" ShowFooter="True" Width="359px">
            <Columns>
                <asp:TemplateField>
                    <FooterTemplate>
                        <asp:Button ID="insert" runat="server" Text="Insert" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="namebox" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image_path" SortExpression="image_path">
                    <EditItemTemplate>
                        <asp:FileUpload ID="editupload" runat="server" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Buxton Sketch" Text="(Select New Image)"></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="footerupload" runat="server" />
                        &nbsp;
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl='<%# Eval("image_path") %>' Width="363px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <FooterTemplate>
                        <asp:Label ID="msg" runat="server" Text="Message"></asp:Label>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString2 %>" SelectCommand="SELECT * FROM [image]"></asp:SqlDataSource>
    
 
    </form>
</body>
</html>
