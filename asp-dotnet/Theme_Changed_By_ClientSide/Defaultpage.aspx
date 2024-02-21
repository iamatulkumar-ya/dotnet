<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defaultpage.aspx.cs" Inherits="Defaultpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 325px;
            width: 644px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <strong><em><h1>THEME</h1>
        <h2>Client can also change the theme </h2>
        <table align="center" class="auto-style2">
            <tr>
                <td>
    
                    Here is Theme</td>
                <td>
    
                    &nbsp;</td>
                <td colspan="2">
    
                    &nbsp;</td>
                <td>
    
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
    
     <strong><em>
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#009900" PostBackUrl="~/defaultpage.aspx?th=green">Green</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Red" PostBackUrl="~/defaultpage.aspx?th=red">Red</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#6699FF" PostBackUrl="~/defaultpage.aspx?th=sky">Sky</asp:LinkButton>
        </em></strong>
                </td>
                <td colspan="2">
    
        <strong><em>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
        </em></strong>
                </td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspdbConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
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
