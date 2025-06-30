<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <div style=" text-align:center;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" CssClass="image" AlternateText="Company's Logo" ToolTip="Company's Logo"/>
        </div>

            <div class="main_div">
 AVASAR   
      <div class="main_div2"> Opportunity. Support. A Platform. </div> 
    </div>
        <hr width="80%" size="2" color="black" />
        <br />

        <center>
        <table width="50%" >
            <tr>
                <td align="center"> <asp:LinkButton ID="addsuplierbtn" runat="server" CssClass="linkbtn_td" OnClick="addsuplierbtn_Click">ADD SUPPLIER</asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="contactusbtn" runat="server" CssClass="linkbtn_td" OnClick="contactusbtn_Click">CONTACT US </asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="logoutbtn" runat="server" CssClass="linkbtn_td" OnClick="logoutbtn_Click">LOG OUT</asp:LinkButton></td>
            </tr>
        </table>
            <br />
              <asp:Image ID="Image2" runat="server" ImageUrl="~/images/logo.png" width="100%" Height="70%" AlternateText="Company's Logo" ToolTip="Company's Logo"/>
            </center>
    </div>
        <div style="width:100%; height:40px; color:white; font-family:Calibri; background-color:black; text-align:center; font-style:italic; padding-top:.1em;">
            &copy; 2k16 AVASAR
        </div>
    </form>
</body>
</html>
