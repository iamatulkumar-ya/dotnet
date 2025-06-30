<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page</title>

    <link href="MyStyle.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style=" text-align:center;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" CssClass="image" AlternateText="Company's Logo" ToolTip="Company's Logo"/>
        </div>

            <div class="main_div">
 AVASAR   
      <div class="main_div2"> Opportunity. Support. A Platform. </div> 
    </div>
        <br />
        <center>
            <div style="border:1px solid; width:35%;">
            <table style="min-width:35%; max-width:35%;"  cellspacing="20">
                <tr>
                    <td colspan="2" class="login_td">
                        LOGIN CREDENTIALS
                    </td>
                </tr>
                <tr> 
                    <td colspan="2" align="center">

                        <asp:Label ID="emsg" runat="server" Text="Your credentials are incorrect, please try again" CssClass="error_msg" Visible="False"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="td1"> Email id :<br />
                        <br />
                    </td> 
                    <td > <asp:TextBox ID="emailidbox" runat="server" class="td2"  placeholder=" Enter Your Email id"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailidbox" CssClass="error_msg" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailidbox" CssClass="error_msg" ErrorMessage="Please enter correct form of an Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="td1"> Password :</td>
                     <td > <asp:TextBox ID="passwordbox" runat="server" class="td2" placeholder=" Enter Your Password" TextMode="Password"></asp:TextBox> 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="passwordbox" CssClass="error_msg" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="height:40px;">
                      <br />  <asp:LinkButton ID="loginbtn" runat="server" class="loginbtn_td" OnClick="loginbtn_Click">Login</asp:LinkButton>
                    </td>
                </tr>
            </table>
                </div>
        </center>
    </form>
</body>
</html>
