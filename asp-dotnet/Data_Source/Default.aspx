<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 716px;
            border: 1px solid #000080;
            height: 462px;
        }
        .auto-style2 {
            width: 313px;
        }
        .auto-style3 {
            width: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="6" cellspacing="6" class="auto-style1">
            <tr>
                <td class="auto-style3">id</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">name</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">city</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">gender</td>
                <td colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">language</td>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Hindi" />
                    <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="English" />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="French" />
                </td>
                <td>
                    Enter Id&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="ID" OnClick="Button1_Click" />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="UD" Enabled="False" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="SD" OnClick="Button3_Click" />&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="DD" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td colspan="2">
                    <asp:SqlDataSource 
                        ID="SqlDataSource1"
                         runat="server"
                         ConnectionString="<%$ ConnectionStrings:empInfoConnectionString %>" 
                        SelectCommand="SELECT * FROM [login1] where id=@id"
                         InsertCommand="INSERT INTO login1(id, name, city, gender, language) VALUES (@id, @name, @city, @gender, @language)" DeleteCommand="delete from login  where id=@id" UpdateCommand="UPDATE login1 SET name =@name, city =@city, gender =@gender, language =@language where id=@id" ProviderName="<%$ ConnectionStrings:empInfoConnectionString.ProviderName %>" 
                        
                          >
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TextBox4" Name="id" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="city" PropertyName="Text" />
                            <asp:Parameter Name="gender" />
                            <asp:Parameter Name="language" />
                        </InsertParameters>
                       


                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox4" Name="id" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="city" PropertyName="Text" />
                            <asp:Parameter Name="gender" />
                            <asp:Parameter Name="language" />
                            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                        </UpdateParameters>
                       


                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
