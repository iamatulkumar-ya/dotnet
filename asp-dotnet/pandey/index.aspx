<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="mystyle.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="index_main_div">
    
        <table width="100%">
            <tr> <td style="font-family:Rockwell; font-size:60px; font-weight:bold; width:50%; " align="right"> Smart City </td>
                 <td style="padding-right:1em; width:30%; font-family:Calibri; font-size:20px; text-decoration:none;" align="right"> 
                      <asp:LinkButton ID="LinkButton12" runat="server" CssClass="index_header_linkbtn">Login</asp:LinkButton>  &nbsp; &nbsp;
                      <asp:LinkButton ID="LinkButton13" runat="server" CssClass="index_header_linkbtn">Sign up</asp:LinkButton> 

                 </td></tr>
        </table>
    </div>
        <br />    <br />    <br />    <br />    <br />    <br />    <br />    
        <div>
            <table width="100%" >
                <tr>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="index_linkbtn">Home</asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton2" runat="server" CssClass="index_linkbtn">Hotel/Restaurants</asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton3" runat="server" CssClass="index_linkbtn">Trasnport Service</asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton4" runat="server" CssClass="index_linkbtn">Hospital</asp:LinkButton>  </td>
                        <td  class="index_table_td" >  <asp:LinkButton ID="LinkButton5" runat="server" CssClass="index_linkbtn">Educational</asp:LinkButton>   </td>
                        <td class="index_table_td" >   <asp:LinkButton ID="LinkButton6" runat="server" CssClass="index_linkbtn"> Entertainment</asp:LinkButton> </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton7" runat="server" CssClass="index_linkbtn">Office</asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton8" runat="server" CssClass="index_linkbtn">General Services</asp:LinkButton>  </td>
                        <td  class="index_table_td" >  <asp:LinkButton ID="LinkButton9" runat="server" CssClass="index_linkbtn">visiting Card </asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton10" runat="server" CssClass="index_linkbtn">Contact us</asp:LinkButton>  </td>
                        <td  class="index_table_td" >   <asp:LinkButton ID="LinkButton11" runat="server" CssClass="index_linkbtn">About us</asp:LinkButton>  </td>
                </tr>
            </table>
        </div>
        <br />
        <div style="width:99.6%; height:500px; border:2px solid;">
            <br /><br /> Slider image section

        </div>
        <br />
        <div id="index_footer">
            <table width="100%">
                <tr>
                    <td class="index_table_footer_td"> &nbsp;</td>   
                     <td class="index_table_footer_td"> &nbsp;</td>
                        <td class="index_table_footer_td"> &nbsp;</td>
                    <td  align="center" width="60%"><b> &copy Smart City, 2016 </b> </td>
                     <td class="index_table_footer_td"> TW</td>
                     <td class="index_table_footer_td"> FB</td>
                     <td class="index_table_footer_td"> WA</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
