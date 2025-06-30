<%@ Page Language="C#" AutoEventWireup="true" CodeFile="e-mail.aspx.cs" Inherits="e_mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1079px;
            height: 555px;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 503px;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
   
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3" rowspan="8">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Message Body:"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="606px" TextMode="MultiLine" Width="724px" Font-Names="Calibri" style="margin-top: 0px"></asp:TextBox>
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                               <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">      </asp:Timer>
                             <asp:Label ID="time1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                             
                        </ContentTemplate>
                    </asp:UpdatePanel>
                 

                    
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" ForeColor="Red" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
                </td>
            </tr>
        </table>
    <br />

     
    </div>
    </form>
</body>
</html>
