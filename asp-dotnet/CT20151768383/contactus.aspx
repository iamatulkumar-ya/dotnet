<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="MyStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <div style=" text-align:center;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" CssClass="image" AlternateText="Company's Logo" ToolTip="Company's Logo"/>
        </div>

            <div class="main_div">
 AVASAR   
      <div class="main_div2"> Opportunity. Support. A Platform. </div> 
    </div>
        <hr width="90%" size="2" color="black" />

            <center>
        <table width="50%" >
            <tr>
                <td align="center"> <asp:LinkButton ID="addsuplierbtn" runat="server" CssClass="linkbtn_td" OnClick="addsuplierbtn_Click">ADD SUPPLIER</asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="contactusbtn" runat="server" CssClass="linkbtn_td" OnClick="contactusbtn_Click">CONTACT US </asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="logoutbtn" runat="server" CssClass="linkbtn_td" OnClick="logoutbtn_Click">LOG OUT</asp:LinkButton></td>
            </tr>
        </table>
    

        <br />
        <table width="80%" border="1" cellspacing="7" cellpading="10" >
            <tr> <th align="center" colspan="2"> CONTACT DETAILS</th></tr>
            <tr> <td>
               <b> Address : </b>
                 </td>
                <td> Floor-6, Shalimar Tower, Saheed Path, Lucknow - 226019, Uttar Pradesh, India</td>
            </tr>
            <tr>
                <td> <b> Conatct No. : </b></td>
                <td> +91 9191919191, 0522 2222222</td>
            </tr>
        </table>
                            </center>
    </div>
    </form>
</body>
</html>
