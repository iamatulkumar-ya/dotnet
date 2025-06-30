<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dedication.aspx.cs" Inherits="_Default" %>

<script runat="server">

   
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 234px;
            background-color: #FFFFFF;
            height: 323px;
            text-align:left;
            text-indent:5px;
        }
        .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;text-decoration:none; 
        }
         .lnkbtna{
            font-family:'Comic Sans MS'; font-weight:500; font-size:large; color:white;text-decoration:none; 
        }

         .lnkbtna:hover{
             font-weight:bold;
             color:#f6a90a;

         }
          

          .lab{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:x-large; color:white;font-style:italic;text-shadow:8px 4px 3px #f6a90a;
            text-align:center;
        }
        .auto-style2 {
            width: 400px;
            border: 2px solid #FFFFFF;
            background-color: #FFFFFF;
            height: 203px;
        }
          .tab{
            width: 408px;
            border: 2px solid #FFFFFF;
            background-color: #FFFFFF;
            height: 326px;
        }
        .auto-style3 {
            width: 417px;
            text-align:left;
        }
        
        .auto-style4 {
            width: 417px;
            height: 97px;
        }
        
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 394px;
        }
        .auto-style7 {
            height: 36px;
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
        <asp:LinkButton ID="logout" runat="server" CssClass="lnkbtna" OnClick="logout_Click" Font-Size="Large" >Logout</asp:LinkButton>
             </div>
        </div>
         </asp:Panel>
        </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <br /><br />

     <table align="center" class="auto-style1"   background='images/bg.jpg' >
         <tr>
             <td>
                 <asp:LinkButton ID="aboutus" runat="server" CssClass="lnkbtna" OnClick="aboutus_Click">About Us</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="onlineservice" runat="server" CssClass="lnkbtna" OnClick="onlineservice_Click">24x7 Online Services</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="homeservice" runat="server" CssClass="lnkbtna" OnClick="homeservice_Click">Home Service</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="trustedgoods" runat="server" CssClass="lnkbtna" OnClick="trustedgoods_Click">Trusted Goods</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="easyreplacement" runat="server" CssClass="lnkbtna" OnClick="easyreplacement_Click">Easy Replacement</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="feedback" runat="server" CssClass="lnkbtna" OnClick="feedback_Click">Feedback</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="developerteam" runat="server" CssClass="lnkbtna" OnClick="developerteam_Click">Developers Team</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="stafflogin" runat="server" CssClass="lnkbtna" OnClick="stafflogin_Click">Staff Login</asp:LinkButton>
             </td>
         </tr>
     </table><br /><br />


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width:auto;height:auto;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          
            <ContentTemplate>  
                
         
        <asp:Panel ID="imagetimerp" runat="server" BackColor="White">

            <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:Image ID="slideimage" runat="server" Height="486px" Width="750px" />



        </asp:Panel>

           </ContentTemplate>
        </asp:UpdatePanel>


        <asp:Panel ID="aboutusp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label3" runat="server" Text="About Us" CssClass="lab"></asp:Label>
            </legend>
                <font face="script MT" color="orange" size="6">
                    <p style="text-indent:100px">  <i style="color:white">Divine Book Store</i> is a place where you can find your taste,there are no delimits of our delights.
                    We cares our valuable patrons at our stores and on on-line as well. 
                        <i style="color:white">Divine Book Store</i> contains millions of books of every taste.
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
        <asp:Panel ID="onlineservicep" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label4" runat="server" Text="24x7 Online Services" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store</i> provides 24x7 Online Services to our dear and valuable patrons for 
                       his/her valuable time and attention towards us. 
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
         <asp:Panel ID="homeservicep" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label5" runat="server" Text="Home Service" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store</i> provides Home Services to our patrons for 
                       his/her service,that saves valuable time of our customers and builds trust between us.After order placed or Book requested,
                        within 3 days we avail your order to you at your home.
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
         <asp:Panel ID="trustedgoodsp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label6" runat="server" Text="Trusted Goods" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store</i> takes 100 % guarentee of our goods.
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
         <asp:Panel ID="easyreplacementp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label7" runat="server" Text="Easy Replacement" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store</i> Easy Replacement
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
        <asp:Panel ID="feedbackp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label8" runat="server" Text="Feedback" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store </i>Feedback
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
        <asp:Panel ID="developersteamp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label9" runat="server" Text="Developers Team" CssClass="lab"></asp:Label>
            </legend>
                <font face="SCRIPT MT" color="orange" size="6">
                    <p style="text-indent:100px"> <i style="color:white"> Divine Book Store </i>Developers Team
                </p>
                        </font>
            </fieldset>
        </asp:Panel>
        <asp:Panel ID="staffloginp" runat="server">
            <fieldset>
                <legend>
                    <asp:Label ID="Label10" runat="server" Text="Staff Login" CssClass="lab"></asp:Label>
            </legend>
                <asp:Label ID="staffmsg" runat="server" CssClass="linkb" Font-Size="Large" Text="Label"></asp:Label>
              <br />
                <table align="center" class="auto-style2" >
                    <tr >
                        <td background='images/bg.jpg' style="height:45px;text-align:center">
                            <asp:Label ID="Label11" runat="server" CssClass="lnkbtn" Text="Enter Staff Key" Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center">
                            <asp:Label ID="pinmsg" runat="server" CssClass="linkb" Text="Label"></asp:Label>
                            <br />
                            <asp:TextBox ID="staffpinbox1" runat="server" Height="28px" ToolTip="Enter Staff Key" Width="200px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="staffpinbox1" ErrorMessage="Field Must Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td  background='images/bg.jpg' class="auto-style4" style="height:36px;text-align:center" >
                            <asp:LinkButton ID="submit" runat="server" CssClass="lnkbtna" Font-Size="X-Large" OnClick="submit_Click">Submit</asp:LinkButton>
                        </td>
                    </tr>
                </table>
              <br />
            </fieldset>
        </asp:Panel>

        <asp:Panel ID="staffloginp2" runat="server">
              <fieldset>
                <legend>
                    <asp:Label ID="Label12" runat="server" Text="Staff Login" CssClass="lab"></asp:Label>
            </legend>
              <br />
                  <asp:ImageMap ID="ImageMap1" runat="server" Height="200px" ImageUrl="~/images/admin.png" Width="200px" BorderColor="White" BorderStyle="Dotted" BorderWidth="5px">
                      <asp:PolygonHotSpot Coordinates="101,185,99,184,98,180,97,174,94,169,93,165,92,160,92,158,92,156,91,149,91,147,91,144,92,139,94,133,95,130,95,135,95,120,92,116,95,112,102,111,106,108,110,116,109,120,107,124,106,126,106,129,108,134,110,140,110,143,111,149,113,153,110,156,110,161,108,162,107,166,106,170,105,175,103,180,101,185" HotSpotMode="Navigate" NavigateUrl="~/adminlogin.aspx" />
                  </asp:ImageMap>
                  <br />
                  <br />
                <table align="center" class="tab">
                    <tr >
                        <td background='images/bg.jpg' class="auto-style5" colspan="3">
                            <asp:Label ID="Label13" runat="server" CssClass="lnkbtn" Font-Size="XX-Large" Text="Login"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="Label14" runat="server" CssClass="lab2" Text="Staff id:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="staffidbox" runat="server" Height="28px" ToolTip="Enter Staff id" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="staffidbox" ErrorMessage="Field Must Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="Label15" runat="server" CssClass="lab2" Text="Password:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="staffpasswordbox" runat="server" Height="28px" ToolTip="Enter Staff Password" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="staffpasswordbox" ErrorMessage="Field Must Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="Label16" runat="server" CssClass="lab2" Text="Key:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="staffkeybox" runat="server" Height="28px" ToolTip="Enter Staff Pin" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="staffkeybox" ErrorMessage="Field Must Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td  background='images/bg.jpg' class="auto-style7" colspan="3" style="text-align:center">
                            <asp:LinkButton ID="signin" runat="server" CssClass="lnkbtna" Font-Size="X-Large" OnClick="signin_Click">Signin</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                  <br />
                  <br />
              <br />
            </fieldset>

        </asp:Panel>
        <br /><br />

    </div>
    </asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

