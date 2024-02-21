<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addsuplier.aspx.cs" Inherits="addsuplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="MyStyle.css" type="text/css" />
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
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                
        <table width="50%" >
            <tr>
                <td align="center"> <asp:LinkButton ID="addsuplierbtn" runat="server" CssClass="linkbtn_td" OnClick="addsuplierbtn_Click" ValidationGroup="a">ADD SUPPLIER</asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="contactusbtn" runat="server" CssClass="linkbtn_td" OnClick="contactusbtn_Click" ValidationGroup="ad">CONTACT US </asp:LinkButton> </td>
                <td align="center"> <asp:LinkButton ID="logoutbtn" runat="server" CssClass="linkbtn_td" OnClick="logoutbtn_Click" ValidationGroup="add">LOG OUT</asp:LinkButton></td>
            </tr>
        </table>
                <br />
                 <div style="text-align:center;">
                      <asp:Label ID="Label10" runat="server" Text="Data successfully submitted" CssClass="lable_txt" Visible="False"></asp:Label>
                     </div>  
     
             <div style="text-align:right;">            <asp:Label ID="Label9" runat="server" Text="Note :- Field with '*' is mandatory  " CssClass="error_msg"></asp:Label></div>
                <table width="70%" cellspacing="15"  >
                    <tr> <td align="center" colspan="4"> <asp:Label ID="Label11" runat="server" Text="Enter Supplier Details" Font-Names="Calibri" Font-Size="X-Large"></asp:Label>
                        <hr width="100%" size="2" color="black" />
                         </td></tr>
               <tr> 
                   <td align="left"> <asp:Label ID="Label1" runat="server" Text="Supplier Name :" CssClass="lable_txt"></asp:Label></td>
                   <td> &nbsp;</td>
                   <td align="left"> <asp:TextBox ID="snamebox" runat="server" CssClass="txt_box"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="snamebox" CssClass="error_msg" ErrorMessage="Supplier name could not be blank">*</asp:RequiredFieldValidator>
                   </td>
                   <td align="left"> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Field Contains Only Alphabets" ValidationExpression="[a-z A-Z]" CssClass="error_msg" ControlToValidate="snamebox"></asp:RegularExpressionValidator> </td>
               </tr>

                                   <tr> 
                   <td align="left"> <asp:Label ID="Label2" runat="server" Text="Company Address :" CssClass="lable_txt"></asp:Label></td>
                   <td> &nbsp;</td>
                   <td align="left"> <asp:TextBox ID="caddressbox" runat="server" TextMode="MultiLine" Height="60px" Width="296px" BorderColor="#0AD1E5" BorderWidth="2px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="caddressbox" CssClass="error_msg" ErrorMessage="Company address could not be blank">*</asp:RequiredFieldValidator>
                                       </td>
                   <td align="left"> &nbsp; </td>
               </tr>

                                   <tr> 
                   <td align="left"> <asp:Label ID="Label3" runat="server" Text="URL :" CssClass="lable_txt"></asp:Label></td>
                   <td> &nbsp;</td>
                   <td align="left"> <asp:TextBox ID="urlbox" runat="server" CssClass="txt_box"></asp:TextBox></td>
                   <td align="left"> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter correct form of an URL" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" CssClass="error_msg" ControlToValidate="urlbox"></asp:RegularExpressionValidator> </td>
               </tr>

                                   <tr> 
                   <td align="left"> <asp:Label ID="Label4" runat="server" Text="Email :" CssClass="lable_txt"></asp:Label></td>
                   <td> &nbsp;</td>
                   <td align="left"> <asp:TextBox ID="emailbox" runat="server" CssClass="txt_box"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailbox" CssClass="error_msg" ErrorMessage="Email field could not be blank">*</asp:RequiredFieldValidator>
                                       </td>
                   <td align="left"> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please enter corect form of an Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error_msg" ControlToValidate="emailbox"></asp:RegularExpressionValidator> </td>
               </tr>

                                   <tr> 
                   <td align="left"> <asp:Label ID="Label5" runat="server" Text="Phone Number :" CssClass="lable_txt"></asp:Label></td>
                   <td align="right"> <asp:TextBox ID="TextBox10" runat="server" Enabled="False" Height="30px" Width="28px" CssClass="txt_box">+91</asp:TextBox> </td>
                   <td align="left"> <asp:TextBox ID="contactbox" runat="server" CssClass="txt_box"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactbox" CssClass="error_msg" ErrorMessage="Phone Number could not be blank">*</asp:RequiredFieldValidator>
                                       </td>
                   <td align="left"> <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter 10 digits" ValidationExpression="[0-9]{10}" CssClass="error_msg" ControlToValidate="contactbox"></asp:RegularExpressionValidator> </td>
               </tr>

                                   <tr> 
                   <td align="left"> <asp:Label ID="Label6" runat="server" Text="State :" CssClass="lable_txt"></asp:Label></td>
                   <td> &nbsp;</td>
                   <td align="left" colspan="2"> 
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt_box" DataSourceID="SqlDataSource1" DataTextField="s_name" DataValueField="s_name" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="35px" Width="305px"></asp:DropDownList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="statebox" CssClass="error_msg" ErrorMessage="Please select state">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="statebox" runat="server" Enabled="False" CssClass="txt_box"></asp:TextBox>
                                                                         </ContentTemplate></asp:UpdatePanel>
          

                   </td>
                                 
                                        </tr>
                    
                                                   <tr> 
                   <td align="left"> <asp:Label ID="Label7" runat="server" Text="Enter Password :" CssClass="lable_txt"></asp:Label></td>
                   <td rowspan="2"> &nbsp;</td>
                   <td align="left"> <asp:TextBox ID="passwordbox" runat="server" CssClass="txt_box"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="passwordbox" CssClass="error_msg" ErrorMessage="Password field could not be blank">*</asp:RequiredFieldValidator>
                       <br />
                   </td>
                   <td align="left" rowspan="2"><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not same" CssClass="error_msg" ControlToCompare="passwordbox" ControlToValidate="password2box"></asp:CompareValidator> </td>
                                  </tr>
                    
                                                   <tr> 
                   <td align="left"> <asp:Label ID="Label8" runat="server" Text="Re - Enter Password :" CssClass="lable_txt"></asp:Label></td>
                   <td align="left"> 
                       <asp:TextBox ID="password2box" runat="server" CssClass="txt_box"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password2box" CssClass="error_msg" ErrorMessage="Re- Enter Password field could not be blank">*</asp:RequiredFieldValidator>
                   </td>
                                  </tr>
                                                     <tr> 
                   <td colspan="4"> 
                      &nbsp;
                                                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" Width="252px" />
                                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CT20151768383 %>" SelectCommand="SELECT [s_name] FROM [state] ORDER BY [s_id]"></asp:SqlDataSource>
                                                       </td>
                                  </tr>
                                                   <tr> 
                   <td align="center" colspan="4"> 
                       <br />
                       <asp:LinkButton ID="submitbtn" runat="server" CssClass="linkbtn_td" OnClick="submitbtn_Click">Submit</asp:LinkButton>
                                                      <hr width="100%" size="2" color="black" />     </td>
                                  </tr>
                     </table>
                </center>
    </div>
    </form>
</body>
</html>
