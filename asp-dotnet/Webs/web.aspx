<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web.aspx.cs" Inherits="web" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            border: 5px solid #000080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" ShowFooter="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <FooterTemplate>
                        <asp:Button ID="Button1" runat="server" Text="insert data" OnClick="Button1_Click" CommandName="cetpa1" />
                    </FooterTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="id">
                    <ItemTemplate>
                        <%# Eval("id") %>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="name">
                       <ItemTemplate>
                        <%# Eval("name") %>
                    </ItemTemplate>
                       <FooterTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="password">
                       <ItemTemplate>
                        <%# Eval("password") %>
                    </ItemTemplate>
                       <FooterTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
               
            
            <EmptyDataTemplate>
               
                <table align="center" cellpadding="4" cellspacing="4" class="auto-style1">
                    <tr>
                        <td>id</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>name</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" CommandName="cetpa2" Text="insert data" />
                        </td>
                    </tr>
                </table>
               
            </EmptyDataTemplate>
            
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empInfoConnectionString %>" SelectCommand="SELECT * FROM [login]" InsertCommand="insert into login values(@id,@name,@password)">
            <InsertParameters>
                <asp:Parameter Name="id" />
                <asp:Parameter Name="name" />
                <asp:Parameter Name="password" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

