<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 468px;
            height: 371px;
            border-color: #FFFFFF;
            background-color: #FFFFFF;
        }
         .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:x-large; color:white;text-decoration:none; 
        }
        .auto-style2 {
   
        }
        .auto-style{
              width: 431px;
            height: 199px;
            border-color: #FFFFFF;
            background-color: #FFFFFF;
        }
                
        .auto-style4 {
            width: 23px;
            height: 84px;
        }
        .auto-style5 {
            height: 84px;
        }
        .auto-style9 {
            width: 23px;
            height: 86px;
        }
        .auto-style10 {
            height: 86px;
        }
        .auto-style11 {
            width: 23px;
            height: 80px;
        }
        .auto-style12 {
            height: 80px;
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
         </asp:Panel>
         <asp:Panel ID="Panel2" runat="server">
              <div style="float:right;width:auto">
        <asp:Label ID="Label1" runat="server" CssClass="labh" Text="Hello!"></asp:Label>&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="lab3n"></asp:Label>&nbsp;
          &nbsp;<br />
        <div style="float:right;width:auto">
        <asp:LinkButton ID="logout" runat="server" CssClass="lbt" OnClick="logout_Click" >Logout</asp:LinkButton>
             </div>
        </div>
         </asp:Panel>
        </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
     <asp:Panel ID="adminkeyp" runat="server">
          
              <br />
                <table align="center" class="auto-style" >
                    <tr >
                        <td background='images/bg.jpg' style="height:45px;text-align:center">
                            <asp:Label ID="Label11" runat="server" CssClass="lnkbtn" Text="Enter Admin Key" Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center">
                            <asp:Label ID="keymsg" runat="server" CssClass="linkb" Text="Label" Font-Size="Large"></asp:Label>
                            <br />
                            <asp:TextBox ID="akeybox" runat="server" Height="28px" ToolTip="Enter Admin Key" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td  background='images/bg.jpg' style="height:36px;text-align:center">
                            <asp:LinkButton ID="submit" runat="server" CssClass="lnkbtn" Font-Size="X-Large" OnClick="submit_Click">Submit</asp:LinkButton>
                        </td>
                    </tr>
                </table>
              <br />
           
        </asp:Panel>



     <asp:Panel ID="adminloginp" runat="server">

                            <asp:Label ID="adminmsg" runat="server" CssClass="linkb" Text="Label" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="3" background='images/bg.jpg' class="auto-style2">
                <asp:Label ID="Label3" runat="server" CssClass="lnkbtn" Font-Size="XX-Large" Text="Admin Login"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                            </td>
            <td style="text-align:left;" class="auto-style12">
                            <asp:Label ID="Label14" runat="server" Text="Admin id:" CssClass="lab2"></asp:Label>
                        </td>
            <td class="auto-style12">
                            <asp:TextBox ID="adminidbox" runat="server" Height="28px" ToolTip="Enter admin id" Width="200px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style9">
                            </td>
            <td style="text-align:left;" class="auto-style10">
                            <asp:Label ID="Label15" runat="server" Text="Admin password:" CssClass="lab2"></asp:Label>
                        </td>
            <td class="auto-style10">
                            <asp:TextBox ID="adminpasswordbox" runat="server" Height="28px" ToolTip="Enter admin password" Width="200px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="auto-style4">
                            </td>
            <td style="text-align:left;" class="auto-style5">
                            <asp:Label ID="Label16" runat="server" Text="Admin key:" CssClass="lab2"></asp:Label>
                        </td>
            <td class="auto-style5" >
                            <asp:TextBox ID="adminkeybox" runat="server" Height="28px" ToolTip="Enter admin key" Width="200px" MaxLength="5"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td colspan="3" background='images/bg.jpg' class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lnkbtn" OnClick="LinkButton1_Click">Signin</asp:LinkButton>
            </td>
        </tr>
    </table>
         </asp:Panel>
    <br /><br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

