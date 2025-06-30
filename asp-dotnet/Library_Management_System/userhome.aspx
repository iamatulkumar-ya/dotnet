<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .labh{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;
        }
          .lab3n{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:#e99b0e;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <div style="float:right;width:auto">
        <asp:Label ID="Label1" runat="server" CssClass="labh" Text="Hello!"></asp:Label>&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="lab3n"></asp:Label>&nbsp;
          &nbsp;<br />
        <div style="float:right;width:auto">
        <asp:LinkButton ID="logout" runat="server" CssClass="lbt" OnClick="logout_Click" >Logout</asp:LinkButton>
             </div>
        </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="width:230px;height:auto; float:left;" >
         <br /><br />
        <asp:Menu ID="Menu2" runat="server" Orientation="Vertical" StaticSubMenuIndent="16px">
        <DynamicMenuItemStyle BackColor="#FF9900" ForeColor="White" />
        <Items>
            <asp:MenuItem Text="My Account" Value="My Account"></asp:MenuItem>
            <asp:MenuItem Text="Issue Book" Value="Issue Book"></asp:MenuItem>
            <asp:MenuItem Text="Buy Book" Value="Buy Book"></asp:MenuItem>
            <asp:MenuItem Text="Return Book" Value="Return Book"></asp:MenuItem>
        </Items>
        <StaticHoverStyle Font-Bold="True" BackColor="Black" ForeColor="White" />
        <StaticMenuItemStyle Font-Names="Calibri" Font-Size="Large" ForeColor="Black" BackColor="White" BorderStyle="Groove" VerticalPadding="6px" BorderWidth="4px" HorizontalPadding="40px" />
             <StaticMenuStyle HorizontalPadding="15px" />
    </asp:Menu>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br /><br />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

