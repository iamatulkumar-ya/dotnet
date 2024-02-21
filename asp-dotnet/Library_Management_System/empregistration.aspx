<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="empregistration.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 687px;
            height: 966px;
            border-color: #FFFFFF;
            background-color: #FFFFFF;
        }
         .lab2{
            font-family:Calibri; font-size:x-large; font-style:italic;
        }
         .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;text-decoration:none; 
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
    <asp:Label ID="Label18" runat="server" CssClass="lnkbtn" Text="Label"></asp:Label>
    <br />
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="3" background='images/bg.jpg'>
                    <asp:Label ID="Label17" runat="server" CssClass="lnkbtn" Text="Employee Registration Form" Font-Size="X-Large"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="left">
                    &nbsp;</td>
            <td>
                &nbsp;</td>
            <td rowspan="4" style="text-align:match-parent">
                <asp:Image ID="empimgshow" runat="server" Height="127px" Width="114px" />
                <br />
                <asp:Label ID="imgmsg" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label3" runat="server" Text="Name:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empnamebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label14" runat="server" Text="Gender:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="lab2" Font-Bold="False" Font-Italic="False" Font-Size="Medium" GroupName="a" Text="Male" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="lab2" Font-Bold="False" Font-Italic="False" Font-Size="Medium" GroupName="a" Text="Female" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" CssClass="lab2" Font-Bold="False" Font-Italic="False" Font-Size="Medium" GroupName="a" Text="Other" />
            </td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label15" runat="server" Text="Date Of Birth:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empdobbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label4" runat="server" Text="Email:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empemailbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td align="top" style="text-align:start;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label5" runat="server" Text="Address:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empaddressbox" runat="server" Height="103px" Width="200px" ToolTip="Enter Your Name" MaxLength="30" Font-Size="Medium" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td align="top" style="text-align:start;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empcontactnumberbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label12" runat="server" Text="State:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empstatebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label11" runat="server" Text="City:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empcitybox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label13" runat="server" Text="Pincode:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="emppincodebox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label7" runat="server" Text="Employee id:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empidbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label8" runat="server" Text="Employee Password:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="emppasswordbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label9" runat="server" Text="Employee Key:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empkeybox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label10" runat="server" Text="Designation:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empdesignationbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                    <asp:Label ID="Label16" runat="server" Text="Date Of Joining:" CssClass="lab2"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="empjoiningbox" runat="server" Height="28px" Width="200px" ToolTip="Enter Your Name" MaxLength="30"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" background='images/bg.jpg'>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="lnkbtn">Submit</asp:LinkButton>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [emp_details] WHERE [eid] = @eid" InsertCommand="INSERT INTO [emp_details] ([ename], [eimage], [egender], [edob], [eemail], [eaddress], [econtactno], [estate], [ecity], [epincode], [eid], [epassword], [ekey], [edesignation], [edoj]) VALUES (@ename, @eimage, @egender, @edob, @eemail, @eaddress, @econtactno, @estate, @ecity, @epincode, @eid, @epassword, @ekey, @edesignation, @edoj)" SelectCommand="SELECT * FROM [emp_details]" UpdateCommand="UPDATE [emp_details] SET [ename] = @ename, [eimage] = @eimage, [egender] = @egender, [edob] = @edob, [eemail] = @eemail, [eaddress] = @eaddress, [econtactno] = @econtactno, [estate] = @estate, [ecity] = @ecity, [epincode] = @epincode, [epassword] = @epassword, [ekey] = @ekey, [edesignation] = @edesignation, [edoj] = @edoj WHERE [eid] = @eid" >
                    <DeleteParameters>
                        <asp:Parameter Name="eid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="empnamebox" Name="ename" PropertyName="Text" Type="String" />
                        <asp:Parameter Name="eimage" Type="String" />
                        <asp:Parameter Name="egender" Type="String" />
                        <asp:ControlParameter ControlID="empdobbox" Name="edob" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empemailbox" Name="eemail" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empaddressbox" Name="eaddress" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empcontactnumberbox" Name="econtactno" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empstatebox" Name="estate" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empcitybox" Name="ecity" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="emppincodebox" Name="epincode" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empidbox" Name="eid" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="emppasswordbox" Name="epassword" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empkeybox" Name="ekey" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empdesignationbox" Name="edesignation" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="empjoiningbox" Name="edoj" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ename" Type="String" />
                        <asp:Parameter Name="eimage" Type="String" />
                        <asp:Parameter Name="egender" Type="String" />
                        <asp:Parameter Name="edob" Type="String" />
                        <asp:Parameter Name="eemail" Type="String" />
                        <asp:Parameter Name="eaddress" Type="String" />
                        <asp:Parameter Name="econtactno" Type="String" />
                        <asp:Parameter Name="estate" Type="String" />
                        <asp:Parameter Name="ecity" Type="String" />
                        <asp:Parameter Name="epincode" Type="String" />
                        <asp:Parameter Name="epassword" Type="String" />
                        <asp:Parameter Name="ekey" Type="String" />
                        <asp:Parameter Name="edesignation" Type="String" />
                        <asp:Parameter Name="edoj" Type="String" />
                        <asp:Parameter Name="eid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br /><br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

