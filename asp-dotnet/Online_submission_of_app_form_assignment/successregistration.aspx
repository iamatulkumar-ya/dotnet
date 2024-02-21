<%@ Page Language="C#" AutoEventWireup="true" CodeFile="successregistration.aspx.cs" Inherits="successregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .text{
                 font-family:'Comic Sans MS'; font-size:35px; text-shadow:5px 2px 2px #0094ff;
            }
        .auto-style1 {
            width: 41%;
            height: 403px;
            background-color:coral; box-shadow:15px 12px 5px #ff0000;
        }
        .auto-style4 {
            height: 2px;
        }
        .auto-style5 {
            height: 38px; background-color:white;
        }
        .auto-style8 {
            height: 18px;
        }
        .auto-style9 {
            height: 55px;
        }
        .auto-style10 {
            height: 55px;
            width: 270px;
        }
        .auto-style11 {
            height: 38px;
            width: 270px;
            background-color:white;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><asp:Label ID="Label1" CssClass="text" runat="server" Text="Online Submission Of Application Form"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" Text="~Registration Successfully~"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" align="left">
                    <asp:Label ID="Label4" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" Text="Your Registration id is:"></asp:Label>
&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" Text="Your Password is:"></asp:Label>
                </td>
                <td class="auto-style9" align="left">
                    <asp:Label ID="showid" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="showpass" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" Text="Where you like to go ?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" Font-Size="X-Large" Font-Underline="False" PostBackUrl="~/Homepage.aspx" Font-Bold="True" ForeColor="#993300">Home</asp:LinkButton>
                </td>
                <td class="auto-style5">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Names="Calibri" Font-Size="X-Large" Font-Underline="False" PostBackUrl="~/Login.aspx" Font-Bold="True" ForeColor="#993300">Login</asp:LinkButton>
                </td>
            </tr>
        </table>
        </center>
   
    </div>
        <br /><br /><br />
    </form>
</body>
</html>
