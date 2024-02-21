<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
       
        <div style="background-color:#f6b720;width:100%; height: 148px;" >
             
            <div style="width:20%;float:left">           
           <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/logo.png" Width="201px" Height="139px" />
              </div>

             <div style="width:79%;float:right">
             <br />

                 <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
                     <Items>
                         <asp:MenuItem Text="Daily Offer's" Value="Daily Offer's"></asp:MenuItem>
                         <asp:MenuItem Text="Special Offer's" Value="Special Offer's"></asp:MenuItem>
                         <asp:MenuItem Text="24x7 Customer Care" Value="24x7 Customer Care"></asp:MenuItem>
                         <asp:MenuItem Text="Dedication" Value="Dedication"></asp:MenuItem>
                         <asp:MenuItem Text="Sign up" Value="Sign up"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/login.aspx" Text="Login" Value="Login"></asp:MenuItem>
                     </Items>
                     <StaticHoverStyle Font-Bold="True" ForeColor="White" />
                     <StaticMenuItemStyle Font-Names="Calibri" ForeColor="#990000" HorizontalPadding="28px" Font-Size="Large" />
                 </asp:Menu>
                </div>
            <br /><br /><br /><br />
            <div style="width:75%; height: 43px;">

                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="458px"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="search" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="False" ForeColor="#990000">Search</asp:LinkButton>
            <br />
            <br /></div>
           
       </div>
<br />
          <center> 
    <table>
        <tr>
            <td align="center">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="HOME" Value="Offer's"></asp:MenuItem>
                    <asp:MenuItem Text="ELECTRONICS" Value="Gift Offer's"></asp:MenuItem>
                    <asp:MenuItem Text="MEN" Value="Contact us"></asp:MenuItem>
                    <asp:MenuItem Text="WOMEN" Value="24x7 Customer Care"></asp:MenuItem>
                    <asp:MenuItem Text="BOOKS" Value="Sign up"></asp:MenuItem>
                    <asp:MenuItem Text="SPORTS" Value="Login"></asp:MenuItem>
                    <asp:MenuItem Text="HOME&amp;KITCHEN" Value="HOME&amp;KITCHEN"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#FF9900" Font-Bold="True" />
                <StaticMenuItemStyle Font-Bold="False" Font-Names="Calibri" Font-Size="Large" HorizontalPadding="30px" ForeColor="Black" />
            </asp:Menu>   
            </td>
        </tr>
         
    </table> 
             <hr width="70%" />          
        </div></center>
        
        <div style="width:19%; height: 463px;border-style:solid; float:left">

                actual work
                </div>

        <div style="width:19%; height: 463px;border-style:solid; float:right">

                actual work
                </div>

        <center>
            <div style="width:60%; height: 463px;border-style:solid">

                actual work
                </div>

        </center>
            
        

       
        

    </form>
</body>
</html>
