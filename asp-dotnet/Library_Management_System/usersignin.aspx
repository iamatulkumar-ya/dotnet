<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usersignin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
         .lbta {
            text-decoration: none;
            lighting-color: aqua;
            font-family: Calibri;
            font-size: x-large;
            color: white;
        }
        .lbta:hover{
            font-weight:bold;
            color:#f79f32;
        }

        .auto-style1 {
            width: 414px;
            height: 407px;
            background-color: #FFFFFF;
            border-width:thick;
        }  
        
           .lab{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:xx-large; color:white;
        }
           .lbt2{
               font-family:Calibri; font-weight:bold; font-size:x-large;background-image:url('images/bg.jpg');text-decoration:none;color:white; border-radius:8px 5px;
            border-width:thin;border-style:solid;background-size:auto;border-left:3px;border-right:3px;
           }
            .lab2{
            font-family:Calibri; font-weight:bold; font-size:x-large;
        }
        .auto-style2 {
            text-align: left;
            height: 48px;
            width: 142px;
        }
        
        .auto-style3 {
            text-align: left;
            height: 77px;
            width: 142px;
        }
        .auto-style4 {
            height: 77px;
        }
        .auto-style5 {
            text-align: left;
            height: 85px;
            width: 142px;
        }
        .auto-style6 {
            height: 85px;
        }
        .auto-style7 {
            text-align: left;
            height: 76px;
            width: 142px;
        }
        .auto-style8 {
            height: 76px;
        }
        .auto-style9 {
            height: 48px;
        }
        .auto-style10 {
            height: 48px;
            }
       .vali{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:Red;
       }
        </style>
    
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
    <table align="center" class="auto-style1">
        

         <tr>
               
            <td colspan="3"  background='images/bg.jpg'>
              
                <asp:Label ID="Label1" runat="server" CssClass="lab" Text="Login"></asp:Label>
                <br />
                <asp:Label ID="hello" runat="server" CssClass="lbt" Text="Hello!"></asp:Label>
&nbsp;<asp:Label ID="name" runat="server" CssClass="lab" Text="Login" Font-Size="X-Large" ForeColor="#FFCC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <br />
            &nbsp;&nbsp;    <asp:Label ID="Label2" runat="server" Text="User id:" CssClass="lab2"></asp:Label>
            </td>
            <td colspan="2" class="auto-style6">
                <br />
               
                       <asp:Label ID="msgin" runat="server" CssClass="linkb" Font-Size="Large" Text="Label"></asp:Label><br />
                    <asp:TextBox ID="useridbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your id" AutoPostBack="True" OnTextChanged="useridbox_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="useridbox" ValidationGroup="a" >*</asp:RequiredFieldValidator>
           
                  
    
                </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <br />
              &nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" Text="Password:" CssClass="lab2"></asp:Label>
            </td>
            <td colspan="2" class="auto-style8">
                <asp:Label ID="passmsg" runat="server" CssClass="linkb" Font-Size="Large" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="userpasswordbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Password" MaxLength="30" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="userpasswordbox" ValidationGroup="a" >*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
             &nbsp;&nbsp;   <asp:Label ID="Label4" runat="server" Text="Key:" CssClass="lab2"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:Label ID="keymsg" runat="server" CssClass="linkb" Font-Size="Large" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="userkeybox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Key" MaxLength="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="userkeybox" ValidationGroup="a" >*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="#000066" Font-Italic="True" Font-Names="Calibri" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="auto-style10" colspan="2">
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="lbt2" OnClick="LinkButton4_Click" ValidationGroup="c">Try another acoount</asp:LinkButton>
            </td>
        </tr>
         <tr>
             <td class="auto-style10">
                 <asp:LinkButton ID="forgetpassword0" runat="server" CssClass="linkb" PostBackUrl="~/Forgetdetails.aspx" ValidationGroup="b">Forget Password</asp:LinkButton>
             </td>
             <td class="auto-style9">
                 <asp:LinkButton ID="forgetkey0" runat="server" CssClass="linkb" PostBackUrl="~/Forgetdetails.aspx" ValidationGroup="b">Forget Key </asp:LinkButton>
             </td>
         </tr>
        <tr>
            <td align="center" colspan="3" background='images/bg.jpg'>
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="lbta" OnClick="LinkButton3_Click" ValidationGroup="a" >Signin</asp:LinkButton>
            </td>
        </tr>
    </table>
                          </ContentTemplate>
                </asp:UpdatePanel><br />
    <br />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

