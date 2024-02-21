<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageupload.aspx.cs" Inherits="imageupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 79%;
            height: 401px;
            border-color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div> <br /><br /><br /><br />
        <center><font face="buxton sketch" size="8">FileUpload Control</font> </center>
        <br /><br />
    
        <table align="center" class="auto-style1">
            <tr>
                <td align="center">
                    <asp:Label ID="image" runat="server" Text="Image"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="msg" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="upload" runat="server" Text="Upload" OnClick="upload_Click" />
                </td>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" Height="277px" ImageAlign="Middle" Width="521px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
