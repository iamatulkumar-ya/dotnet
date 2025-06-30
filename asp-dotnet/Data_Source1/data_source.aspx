<%@ Page Language="C#" AutoEventWireup="true" CodeFile="data_source.aspx.cs" Inherits="data_source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            float: left;
            height: 483px;
            width: 903px;
        }
        .auto-style2 {
            width: 451px;
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            width: 81px;
        }
        .auto-style5 {
            width: 219px;
        }
        .auto-style6 {
            width: 118px;
            height: 28px;
        }
        .auto-style7 {
            width: 451px;
            height: 28px;
        }
        .auto-style8 {
            width: 81px;
            height: 28px;
        }
        .auto-style9 {
            width: 219px;
            height: 28px;
        }
    </style>
</head>
<body>

  
    <center><font face="Buxton sketch" size="12"><b>Operations With SqlDataSource</b></font></center>
    <br />
     <form id="form1" runat="server">
    <div>
    
        <table align="left" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2" align="center">
                    <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                </td>
                <td colspan="2" rowspan="6" align="center">
                    <asp:Image ID="Image1" runat="server" Height="179px" Width="260px" ToolTip="image" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="id :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="idbox" runat="server" ToolTip="Enter an id" AutoPostBack="True" OnTextChanged="idbox_TextChanged" ForeColor="Black"></asp:TextBox>&nbsp; <asp:Label ID="idmsg" runat="server" Text="Label" Font-Italic="True" Font-Size="Small"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" SelectCommand="SELECT id FROM task where id=@id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="namebox" runat="server" ToolTip="Enter a name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="City :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="citybox" runat="server" ToolTip="Enter a city name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Gender :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Other" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Language :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="C#" /><br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="ASP.NET" />   <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="C" /><br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="C++" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Select an image :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" /> &nbsp;
                    <asp:Label ID="imgmsg" runat="server" Text="Label" Font-Italic="True" Font-Size="Small"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Enter an id :"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="enteridbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" 
                        InsertCommand="INSERT INTO task(id, Name, City, Gender, Language, img_path) VALUES (@id,@Name,@City,@Gender,@Language,@img_path)" 
                        SelectCommand="SELECT * FROM  Task Where id=@id" 
                        UpdateCommand="UPDATE task SET Name =@name, City =@city, Gender =@gender, Language =@language, img_path =@img_path where id=@id" 
                        DeleteCommand="Delete From Task Where id=@id">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="enteridbox" Name="id" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" />
                            <asp:ControlParameter ControlID="namebox" Name="Name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="citybox" Name="City" PropertyName="Text" />
                            <asp:Parameter Name="Gender" />
                            <asp:Parameter Name="Language" />
                            <asp:Parameter Name="img_path" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="enteridbox" Name="id" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="namebox" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="citybox" Name="city" PropertyName="Text" />
                            <asp:Parameter Name="gender" />
                            <asp:Parameter Name="language" />
                            <asp:Parameter Name="img_path" />
                            <asp:ControlParameter ControlID="idbox" Name="id" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2" align="center">
                    <asp:Button ID="insert" runat="server" Text="Insert Data" Font-Italic="False" ForeColor="#6600FF" OnClick="insert_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;
                    <asp:Button ID="update" runat="server" Text="Update Data" ForeColor="#6600FF" OnClick="update_Click" />
                </td>
                <td align="center" class="auto-style4">
                    <asp:Button ID="show" runat="server" Text="Show Data" ForeColor="#6600FF" OnClick="show_Click" />
                </td>
                <td align="center" class="auto-style5">
                    <asp:Button ID="delete" runat="server" Text="Delete Data" ForeColor="#6600FF" OnClick="delete_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
