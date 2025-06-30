<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 669px;
            height: 758px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/admin.png" Height="200px" Width="200px" OnClick="ImageButton1_Click" />
                </td>
                <td>
                    <asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/images/admin.png" Height="200px" Width="200px">
                    </asp:ImageMap>
                </td>
            </tr>
            <tr>
                <td>
                    X=
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="78px"></asp:TextBox>
                &nbsp;&nbsp;
                    <br />
                    <br />
                    Y= <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="78px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="getcordinates" runat="server" Text="Get Coordinates" OnClick="getcordinates_Click" />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="City_name" DataValueField="City_name">
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="getcordinates0" runat="server" Text="go" OnClick="getcordinates0_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT [State_name], [City_name] FROM [citystate]"></asp:SqlDataSource>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                       
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />

                       
                    Enter category id:
                    <asp:TextBox ID="cid" runat="server"></asp:TextBox>
&nbsp;<br />
                    <br />
                    Enter Category Name:
                    <asp:TextBox ID="cname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:LinkButton ID="firstinsert" runat="server" OnClick="firstinsert_Click">first insert</asp:LinkButton>
                             </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                    Enter respective subcategory id:
                    <asp:TextBox ID="scid" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Enter sub_category name:
                    <asp:TextBox ID="scname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:LinkButton ID="secondinsert" runat="server" OnClick="secondinsert_Click">Second insert</asp:LinkButton>
                     </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>

    
    </div>
    </form>
</body>
</html>
