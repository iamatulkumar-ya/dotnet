<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newregistration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table align="center" style="width: 100%; height: 697px; border-color:black;" >
        <tr>
            <td colspan="3" style="height: 69px">
                <asp:Label ID="Label10" runat="server" Text="-Registration Form-" Font-Names="Comic Sans MS" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
            &nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="Label2" runat="server" Text="First Name:" CssClass="lb"></asp:Label>
            </td>
            <td style="width: 378px" align="left">
                <br />
                <asp:TextBox ID="firstnamebox" runat="server" CssClass="txtbox" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Must Required" ControlToValidate="firstnamebox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="firstnamebox" ErrorMessage="Please Enter Characters only" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="[a-zA-Z ]{2,30}"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 329px" align="center" rowspan="3">
                <asp:Label ID="Label13" runat="server" Text="Please Select an Image" CssClass="lb" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="168px" Width="163px" AlternateText="Please Select only .jpeg or .jpg files" />
                <br />
                <br />
                <asp:Label ID="imgmsg" runat="server" Font-Italic="True" Font-Names="Calibri" ForeColor="Yellow" Text="Label"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="label" runat="server" Text="Last Name:" CssClass="lb"></asp:Label>
            </td>
            <td style="width: 378px" align="left">
                <br />
                <asp:TextBox ID="lastnamebox" runat="server" CssClass="txtbox" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Must Required" ControlToValidate="lastnamebox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="lastnamebox" ErrorMessage="Please Enter Characters only" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="[a-zA-Z]{2,30}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="Label4" runat="server" Text="Address:" CssClass="lb"></asp:Label>
            </td>
            <td style="width: 378px" align="left">
                <br />
                <asp:TextBox ID="addressbox" runat="server" CssClass="txtbox" Height="92px" TextMode="MultiLine" Width="266px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Must Required" ControlToValidate="addressbox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="addressbox" ErrorMessage="Address contains only '/' '-' 'a-z' 'A-Z' '0-9'" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="[a-zA-Z0-9-/]{10,80}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px; height: 61px;">
                <asp:Label ID="Label5" runat="server" Text="City:" CssClass="lb"></asp:Label>
            </td>
            <td style="height: 61px;" align="left" colspan="2">
                &nbsp;<asp:Panel ID="Panel1" runat="server">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="135px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Calibri" Font-Size="Medium">
                        <asp:ListItem>Lucknow</asp:ListItem>
                        <asp:ListItem>Allahabad</asp:ListItem>
                        <asp:ListItem>Balia</asp:ListItem>
                        <asp:ListItem>Moradabad</asp:ListItem>
                        <asp:ListItem>Kanpur</asp:ListItem>
                        <asp:ListItem>Ujjain</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:TextBox ID="citybox" runat="server" CssClass="txtbox" ReadOnly="True" ></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="citybox" ErrorMessage="Field Must Required" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                    &nbsp;</asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px; height: 59px;">
                <asp:Label ID="Label6" runat="server" Text="State:" CssClass="lb"></asp:Label>
            </td>
            <td style="height: 59px;" align="left" colspan="2">
                <asp:TextBox ID="statebox" runat="server" CssClass="txtbox" ReadOnly="True" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Must Required" ControlToValidate="statebox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="Label7" runat="server" Text="Zip Code:" CssClass="lb"></asp:Label>
            </td>
            <td align="left" colspan="2">
                <br />
                <asp:TextBox ID="zipcode" runat="server" CssClass="txtbox" MaxLength="6" TextMode="Number" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field Must Required" ControlToValidate="zipcode" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="zipcode" ErrorMessage="Please Enter 6 digits zipcode" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="[\d]{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="Label8" runat="server" Text="Email:" CssClass="lb"></asp:Label>
            </td>
            <td align="left" colspan="2">
                <br />
                <asp:TextBox ID="emailbox" runat="server" CssClass="txtbox" TextMode="Email" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field Must Required" ControlToValidate="emailbox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailbox" ErrorMessage="Please Enter Proper Form of Email" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px">
                <asp:Label ID="Label9" runat="server" Text="Mobile Number:" CssClass="lb"></asp:Label>
            </td>
            <td align="left" colspan="2">
                <br />
                <asp:TextBox ID="mobilenumberbox" runat="server" CssClass="txtbox" MaxLength="10" TextMode="Number" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field Must Required" ControlToValidate="mobilenumberbox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobilenumberbox" ErrorMessage="Please Enter 10 digits only" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66" ValidationExpression="[\d]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px; height: 75px;">
                <asp:Label ID="Label11" runat="server" Text="Password:" CssClass="lb"></asp:Label>
            </td>
            <td style="height: 75px;" align="left" colspan="2">
                <br />
                <asp:TextBox ID="passwordbox" runat="server" CssClass="txtbox" MaxLength="10" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Must Required" ControlToValidate="passwordbox" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 1040px; height: 71px;">
                <asp:Label ID="Label12" runat="server" Text="Re-Enter Password:" CssClass="lb"></asp:Label>
            </td>
            <td style="height: 71px;" align="left" colspan="2">
                <br />
                <asp:TextBox ID="reenterpassword" runat="server" CssClass="txtbox" MaxLength="10" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Field Must Required" ControlToValidate="reenterpassword" ForeColor="#FFFF66">*</asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordbox" ControlToValidate="reenterpassword" ErrorMessage="Password Doesn't match" Font-Italic="True" Font-Names="Calibri" ForeColor="#FFFF66"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 1040px">
                &nbsp;</td>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 1040px" >
                <asp:Label ID="pagemsg" runat="server" Font-Italic="True" Font-Names="Calibri" ForeColor="Yellow"></asp:Label>
                </td>
            <td align="center" bgcolor="white">
                <asp:LinkButton  ID="register" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Font-Underline="False" ForeColor="#993300" OnClick="register_Click" >Register</asp:LinkButton>
            &nbsp;</td>
            <td align="left">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSOAFormConnectionString %>" DeleteCommand="DELETE FROM [register] WHERE [Registration_id] = @Registration_id" InsertCommand="INSERT INTO [register] ([First_name], [Last_name], [Address], [image_path], [City], [State], [Zipcode], [Email], [Mobile_number], [Password]) VALUES (@First_name, @Last_name, @Address, @image_path, @City, @State, @Zipcode, @Email, @Mobile_number, @Password)" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [First_name] = @First_name, [Last_name] = @Last_name, [Address] = @Address, [image_path] = @image_path, [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [Email] = @Email, [Mobile_number] = @Mobile_number, [Password] = @Password WHERE [Registration_id] = @Registration_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Registration_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="firstnamebox" Name="First_name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="lastnamebox" Name="Last_name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="addressbox" Name="Address" PropertyName="Text" Type="String" />
                        <asp:Parameter Name="image_path" Type="String" />
                        <asp:ControlParameter ControlID="citybox" Name="City" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="statebox" Name="State" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="zipcode" Name="Zipcode" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="emailbox" Name="Email" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="mobilenumberbox" Name="Mobile_number" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="passwordbox" Name="Password" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_name" Type="String" />
                        <asp:Parameter Name="Last_name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="image_path" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zipcode" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Mobile_number" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Registration_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br /><br /><br /><br /><br />


</asp:Content>

