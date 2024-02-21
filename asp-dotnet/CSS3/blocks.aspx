<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blocks.aspx.cs" Inherits="blocks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 426px;
            height: 195px;
            ruby-align:center;
        }
        .hv{
            Height:40px; Width:45px; 
        }
        .hv:hover{
            width:145px;
            height:140px;
            box-shadow:inset;


        }
        .bt{

        }
        .bt:hover{

            font-family:'Times New Roman';
            color:yellow;
            background-color:red;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
        <table align="center" class="auto-style1">
            <tr>
                <td align="center">
                    <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/fb.png"  CssClass="hv"/>
                    <asp:Button ID="Button1" runat="server" CssClass="bt" Text="Button" />
                </td>
                <td align="center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/twt.png"  CssClass="hv"/>
                </td>
                <td align="center">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/wa.png"  CssClass="hv"/>
                </td>
             
            </tr>
        </table>
    <br />
        <br />
    </div>
    </form>
</body>
</html>
