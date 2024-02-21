<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetdetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 492px;
            width: 545px;
        }
        .left{
            text-align:left;
        }
        .labm{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:#010486;
       }
        .auto-style2 {
            text-align: left;
            width: 253px;
        }
        .auto-style3 {
            width: 253px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <div style="float:right;">
         <asp:Panel ID="Panel1" runat="server">
             <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Signin" ToolTip="For Registered User" Value="Signin" NavigateUrl="~/usersignin.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Signup" ToolTip="For New User" Value="Signup" NavigateUrl="~/userregistration.aspx"></asp:MenuItem>
            </Items>
              <StaticHoverStyle Font-Bold="True" ForeColor="Blue" />
            <StaticMenuItemStyle Font-Names="Calibri" Font-Size="X-Large" ForeColor="White" HorizontalPadding="10px" />
            
        </asp:Menu>
         </asp:Panel></div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <br />
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <br /> <table align="center" class="auto-style1" bgcolor="white">
        <tr>
            <td colspan="3"  background='images/bg.jpg'>
                <asp:Label ID="Label1" runat="server" CssClass="lab" Text="I Lost My Credentials  :("></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            &nbsp;&nbsp;    <asp:Label ID="Label2" runat="server" Text="User id:" CssClass="lab2"></asp:Label>
            </td>
            <td colspan="2" >
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <asp:Label ID="Label19" runat="server" CssClass="labm" ForeColor="Red" Font-Size="Small"></asp:Label>
                        <br />
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="useridbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your id" AutoPostBack="True" OnTextChanged="useridbox_TextChanged"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="useridbox" ForeColor="Red" >*</asp:RequiredFieldValidator>
            </ContentTemplate></asp:UpdatePanel>
                            </td>
        </tr>
        <tr>
            <td class="auto-style2" >
              &nbsp;&nbsp;  <asp:Label ID="Label3" runat="server" Text="Contact Number:" CssClass="lab2"></asp:Label>
                <br />
                        <asp:Label ID="Label22" runat="server" CssClass="labm" ForeColor="#003366">(incase you lost your password &amp; key both)</asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="usernumberbox" Height="28px" Width="200px" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label6" runat="server" CssClass="lab" Text="OR" Font-Size="X-Large" ForeColor="#003366"></asp:Label>
                <br />
                        <asp:Label ID="msg" runat="server" CssClass="labm" ForeColor="Red" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
             &nbsp;&nbsp;   <asp:Label ID="Label4" runat="server" Text="Key:" CssClass="lab2"></asp:Label>
                <br />
                        <asp:Label ID="Label20" runat="server" CssClass="labm" ForeColor="#003366">(incase you lost your password only)</asp:Label>
            </td>
            <td colspan="2" >
                <asp:TextBox ID="userkeybox" Height="28px" Width="200px" runat="server" MaxLength="5" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Password:" CssClass="lab2"></asp:Label>
                <br />
                        <asp:Label ID="Label21" runat="server" CssClass="labm" ForeColor="#003366">(incase you lost your key only)</asp:Label>
            </td>
            <td colspan="2" >
                <asp:TextBox ID="userpasswordbox" Height="28px" Width="200px" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="#000066" Font-Italic="True" Font-Names="Calibri" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td >
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3" background='images/bg.jpg'>
                <asp:LinkButton ID="go" runat="server" CssClass="lbt" OnClick="go_Click"  >Go</asp:LinkButton>
            </td>
        </tr>
    </table><br />
    <br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

