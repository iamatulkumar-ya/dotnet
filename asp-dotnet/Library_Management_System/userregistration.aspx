<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 749px;
            height: 850px;
            background-color: #FFFFFF;
        }
         .lab{
            font-family:'Comic Sans MS' ; font-weight:bold; font-size:xx-large; color:white;
        }
         .lab2{
            font-family:Calibri; font-size:x-large; font-style:italic;
        }
        .auto-style2 {
            text-align:left;
            width: 192px;
        }
        .auto-style3 {}
        .auto-style9 {
           text-align:left;
            width: 257px;
        }
        .auto-style10 {
        text-align:left;
            width: 78px;
        }
        .auto-style11 {
            text-align:left;
            width: 78px;
            height: 74px;
        }
        .auto-style13 {
            text-align: left;
            width: 203px;
        }
       .vali{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:Red;
       }
        .labm{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:#010486;
       }
        .auto-style15 {
            text-align: left;
            height: 52px;
        }
        .auto-style16 {
            text-align: left;
            width: 203px;
            height: 52px;
        }
        .auto-style17 {
            text-align: left;
            width: 78px;
            height: 52px;
        }
        .auto-style18 {
            text-align: left;
            width: 78px;
            height: 47px;
        }
        .auto-style19 {
            text-align: left;
            width: 203px;
            height: 47px;
        }
        .auto-style20 {
            text-align: left;
            height: 47px;
        }
        .auto-style21 {
            text-align: left;
            width: 78px;
            height: 48px;
        }
        .auto-style22 {
            text-align: left;
            width: 203px;
            height: 48px;
        }
        .auto-style23 {
            text-align: left;
            width: 192px;
            height: 48px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="4"  background='images/bg.jpg' align="center">
                    <asp:Label ID="Label2" runat="server" Text="Registration Form" CssClass="lab"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" Text="First Name:" CssClass="lab2"></asp:Label>
                &nbsp;</td>
                <td class="auto-style2">
                <asp:TextBox ID="ufirstnamebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="ufirstnamebox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name contains alphabets only" CssClass="vali" ValidationExpression="[a-zA-Z]{2,30}" ControlToValidate="ufirstnamebox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="Last Name:" CssClass="lab2"></asp:Label>
                &nbsp;<br />
                    <asp:Label ID="Label13" runat="server" CssClass="labm" Text="(including middle name (if))"></asp:Label>
                </td>
                <td class="auto-style2">
                <asp:TextBox ID="ulastnamebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name contains alphabets only" CssClass="vali" ValidationExpression="[a-z A-Z]{2,30}" ControlToValidate="ulastnamebox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" Text="Email:" CssClass="lab2"></asp:Label>
                </td>
                <td class="auto-style2">
                <asp:TextBox ID="uemailbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Email"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="uemailbox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter proper form of email" CssClass="vali" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="uemailbox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number:" CssClass="lab2"></asp:Label>
                </td>
                <td class="auto-style2">
                <asp:TextBox ID="ucontactnobox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Contact number" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="ucontactnobox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Field contains 10 digits only" CssClass="vali" ValidationExpression="[0-9]{10}" ControlToValidate="ucontactnobox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style13" b>
                    <asp:Label ID="Label20" runat="server" Text="Address:" CssClass="lab2"></asp:Label>
                </td>
                <td align="left" class="auto-style2">
                    <asp:Label ID="Label21" runat="server" Text="House Number:" CssClass="lab2" Font-Italic="False" Font-Size="Medium"></asp:Label>
                    <br />
                <asp:TextBox ID="housenumberbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your House number" MaxLength="20"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label22" runat="server" Text="Street/Area:" CssClass="lab2" Font-Italic="False" Font-Size="Medium"></asp:Label>
                <asp:TextBox ID="streetbox" runat="server" Height="77px" Width="200px" ToolTip="Enter Your Street/Muhalla" MaxLength="30" Font-Names="Calibri" TextMode="MultiLine" Font-Size="Medium"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label23" runat="server" Text="LandMark:" CssClass="lab2" Font-Italic="False" Font-Size="Medium"></asp:Label>
                    <br />
                <asp:TextBox ID="landmarkbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Near LandMark" MaxLength="30"></asp:TextBox>
                </td>
                <td align="left" class="auto-style2">
                    
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <br />
                    <br />
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label7" runat="server" Text="State:" CssClass="lab2"></asp:Label>
                </td>
                <td align="left" class="auto-style20" colspan="2">
                   
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                             <asp:TextBox ID="ustatebox" runat="server" Height="28px" Width="200px"></asp:TextBox>
                             &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="152px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="State_name" DataValueField="State_name">
                            <asp:ListItem>Choose a state</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="DropDownList1" >*</asp:RequiredFieldValidator>
                    
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <br />
                    <br />
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server" Text="City:" CssClass="lab2"></asp:Label>
                </td>
                <td align="left" class="auto-style15" colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    
                     <asp:TextBox ID="ucitybox" runat="server" Height="28px" Width="200px" ReadOnly="True"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="152px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="DropDownList2" >*</asp:RequiredFieldValidator>
                       </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    </td>
                <td class="auto-style22">
                    <asp:Label ID="Label9" runat="server" Text="Zipcode:" CssClass="lab2"></asp:Label>
                </td>
                <td class="auto-style23">
                <asp:TextBox ID="uzipcodebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Zipcode" MaxLength="6"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="uzipcodebox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Field contains 6 digits only" CssClass="vali" ValidationExpression="[0-9]{6}" ControlToValidate="uzipcodebox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <br />
                    <asp:Label ID="Userid" runat="server" Text="User id:" CssClass="lab2"></asp:Label>
                    <br />
                    <asp:Label ID="Label17" runat="server" CssClass="labm" Text="(This will be your login id)"></asp:Label>
                </td>
                <td class="auto-style2">
                     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                        <asp:Label ID="exsistid" runat="server" CssClass="labm" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Label ID="Label19" runat="server" CssClass="labm" Text="(alphabets first then numeric)"></asp:Label>
                        <br />
                        <asp:TextBox ID="uidbox" runat="server" Height="28px" Width="200px" ToolTip="Enter  Password" MaxLength="30" AutoPostBack="True" OnTextChanged="uidbox_TextChanged"></asp:TextBox>
                  </ContentTemplate>

                     </asp:UpdatePanel>
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="uidbox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Userid should be alphanumeric" CssClass="vali" ValidationExpression="[a-z]{1,29}[0-9]{1,29}" ControlToValidate="uidbox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Password:" CssClass="lab2"></asp:Label>
                    <br />
                    <asp:Label ID="Label14" runat="server" CssClass="labm" Text="(This will be your login password)"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label18" runat="server" CssClass="labm" Text="(alphabets first then numeric)"></asp:Label>
                    <br />
                <asp:TextBox ID="upasswordbox" runat="server" Height="28px" Width="200px" ToolTip="Enter  Password" MaxLength="30"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="upasswordbox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Password should be alphanumeric" CssClass="vali" ValidationExpression="[a-z]{1,29}[0-9]{1,29}" ControlToValidate="upasswordbox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label12" runat="server" Text="Re-Enter Password:" CssClass="lab2"></asp:Label>
                </td>
                <td class="auto-style2">
                <asp:TextBox ID="ureenterpasswordbox" runat="server" Height="28px" Width="200px" ToolTip="Re-Enter Password" MaxLength="30"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="ureenterpasswordbox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="upasswordbox" ControlToValidate="ureenterpasswordbox" CssClass="vali" ErrorMessage="Password doesn't matched"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server" Text="Key:" CssClass="lab2"></asp:Label>
                    <br />
                    <asp:Label ID="Label15" runat="server" CssClass="labm" Text="(This will be your secret key)"></asp:Label>
                </td>
                <td class="auto-style2">
                <asp:TextBox ID="ukeybox" runat="server" Height="28px" Width="200px" ToolTip="Enter Key" MaxLength="5"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="ukeybox" >*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Field contains 5 digits only" CssClass="vali" ValidationExpression="[0-9]{5}" ControlToValidate="ukeybox"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="#000066" Font-Italic="True" Font-Names="Calibri" ShowMessageBox="True" ShowSummary="False" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center"  background='images/bg.jpg' class="auto-style3" colspan="4">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lbt" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [user_details] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user_details] ([user_id], [first_name], [last_name], [email], [contact_number], [state], [city], [address], [password], [ukey]) VALUES (@user_id, @first_name, @last_name, @email, @contact_number, @state, @city, @address, @password, @ukey)" SelectCommand="SELECT * FROM [user_details]" UpdateCommand="UPDATE [user_details] SET [first_name] = @first_name, [last_name] = @last_name, [email] = @email, [contact_number] = @contact_number, [state] = @state, [city] = @city, [address] = @address, [password] = @password, [ukey] = @ukey WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="uidbox" Name="user_id" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ufirstnamebox" Name="first_name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ulastnamebox" Name="last_name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="uemailbox" Name="email" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ucontactnobox" Name="contact_number" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ustatebox" Name="state" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ucitybox" Name="city" PropertyName="Text" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:ControlParameter ControlID="upasswordbox" Name="password" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ukeybox" Name="ukey" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="first_name" Type="String" />
                            <asp:Parameter Name="last_name" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="contact_number" Type="String" />
                            <asp:Parameter Name="state" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="ukey" Type="String" />
                            <asp:Parameter Name="user_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT [State_name] FROM [citystate] ORDER BY [State_name]"></asp:SqlDataSource>
                &nbsp;</td>
            </tr>
        </table>
    </p><br /><br />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

