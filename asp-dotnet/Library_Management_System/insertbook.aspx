<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="insertbook.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 887px;
            height: 1282px;
            border: 2px solid #FFFFFF;
            background-color: #FFFFFF;
        }
         .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;text-decoration:none; 
        }
          .auto-style2 {
            width: 26px;
            text-align:center;
          
        }
          .auto-style3 {
            width: 210px;
            text-align: left;
        }
          .auto-style4 {
        }
        .auto-style5 {
            width: 9px;
            text-align: left;
        }
         .vali{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:Red;
       }
          .auto-style6 {
            width: 9px;
            text-align: left;
            height: 52px;
        }
        .auto-style7 {
            width: 210px;
            text-align: left;
            height: 52px;
        }
      
        .auto-style9 {
            width: 26px;
            text-align: center;
            height: 52px;
        }
        .lf{
            text-align:left;
        }
       .auto-style123 {
            width: 248px;
            background-color: #FFFFFF;
            height: 265px;
            text-align:left;
            text-indent:5px;
        }
           .auto-style124 {
            width: 247px;
            background-color: #FFFFFF;
            height: 249px;
            text-align:left;
            text-indent:5px;
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
    <div style="width:auto;height:auto;">
     <br /><br />

     <table align="center" class="auto-style123"   background='images/bg.jpg' >
         <tr>
             <td>
                 <asp:LinkButton ID="insertbook" runat="server" CssClass="lnkbtn" PostBackUrl="~/insertbook.aspx" >Insert Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="updatebook" runat="server" CssClass="lnkbtn"  >Update Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="deletebook" runat="server" CssClass="lnkbtn" >Delete Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="purchasebook" runat="server" CssClass="lnkbtn" >Purchase Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="issuebook" runat="server" CssClass="lnkbtn" >Issue Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="returnbook" runat="server" CssClass="lnkbtn" >Return Book</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="userregistration" runat="server" CssClass="lnkbtn" PostBackUrl="~/userregistration.aspx"  >User Registration</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="userdetails" runat="server" CssClass="lnkbtn"  >User Details</asp:LinkButton>
             </td>
         </tr>
         </table>&nbsp;<asp:Panel ID="adminoperationp" runat="server">
         <table align="center" class="auto-style124"   background='images/bg.jpg' >
         <tr>
             <td>
                 <asp:LinkButton ID="deleteuseraccount" runat="server" CssClass="lnkbtn"  >Delete User Account</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="empregistration" runat="server" CssClass="lnkbtn"  PostBackUrl="~/empregistration.aspx">Employee Registration</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="empdetails" runat="server" CssClass="lnkbtn">Employee Details</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:LinkButton ID="deleteempaccount" runat="server" CssClass="lnkbtn"  >Delete Employee Account</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
             </asp:Panel>
             <br /><br />

 </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br />
    <asp:Panel ID="insertdatap" runat="server">
    <asp:Label ID="message" runat="server" CssClass="lab" Font-Size="X-Large" Text="Label"></asp:Label>
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="4"  background='images/bg.jpg' class="auto-style4">
                            <asp:Label ID="Label11" runat="server" CssClass="lnkbtn" Text="Insert Book" Font-Size="XX-Large"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        
                        </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label14" runat="server" CssClass="lab2" Text="Book Name:"></asp:Label>
                        </td>
            <td class="lf">
                            <asp:TextBox ID="booknamebox" runat="server" Height="25px" ToolTip="Enter Book Name" Width="350px" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="booknamebox">*</asp:RequiredFieldValidator>
                            <br />
                        </td>
            <td class="auto-style2">
               
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="booknamebox" CssClass="vali" ErrorMessage="Field Contains words only" ValidationExpression="[A-Z a-z , ( ) 0-9 ' ' &quot; &quot; -]{3,100}"></asp:RegularExpressionValidator>
               
                
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label15" runat="server" CssClass="lab2" Text="Author Name:"></asp:Label>
                        </td>
            <td class="lf">
                            <asp:TextBox ID="authornamebox" runat="server" Height="25px" ToolTip="Enter Author Name" Width="350px" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="publicationnamebox">*</asp:RequiredFieldValidator>
                            <br />
                        </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="authornamebox" CssClass="vali" ErrorMessage="Field Contains words only" ValidationExpression="[A-Z , a-z .]{3,100}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label16" runat="server" CssClass="lab2" Text="Publication Name:"></asp:Label>
                        </td>
            <td class="lf">
                            <asp:TextBox ID="publicationnamebox" runat="server" Height="25px" ToolTip="Enter Publication Name" Width="350px" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="publicationnamebox">*</asp:RequiredFieldValidator>
                            <br />
                        </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="publicationnamebox" CssClass="vali" ErrorMessage="Field Contains words, ( ), &quot; &quot;,-,'&amp;' only" ValidationExpression="[a-z A-Z , &quot; &quot; ' ' &amp; ( ) , -]{1,100}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label17" runat="server" CssClass="lab2" Text="Edition:"></asp:Label>
                        </td>
            <td class="lf">
                            <asp:TextBox ID="editionbox" runat="server" Height="25px" ToolTip="Enter Edition" Width="350px" MaxLength="50"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="categorybx">*</asp:RequiredFieldValidator>
                        </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="editionbox" CssClass="vali" ErrorMessage="Field Contains words,digits or '-' only" ValidationExpression="[a-z A-Z , 0-9 -]{2,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label18" runat="server" CssClass="lab2" Text="Category:"></asp:Label>
                        </td>

            <td colspan="2"  class="lf" >
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="categorybx" runat="server" Height="25px" MaxLength="50" ToolTip="Enter Category" Width="350px" ReadOnly="True"></asp:TextBox>
                            &nbsp;<asp:DropDownList ID="DropDownList1"  Height="30px" Width="200px" runat="server" DataSourceID="SqlDataSource2" DataTextField="c_name" DataValueField="c_name" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                        <asp:Label ID="Label27" runat="server" CssClass="vali" Text="Label"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT [c_name] FROM [category] ORDER BY [c_name]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="categorybx" CssClass="vali" ErrorMessage="Field Can't be Blank">*</asp:RequiredFieldValidator>
                        </ContentTemplate>
                </asp:UpdatePanel>
                        </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label19" runat="server" CssClass="lab2" Text="Sub-Category:"></asp:Label>
                        </td>
            <td colspan="2"  class="lf">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                     <ContentTemplate>
                         <asp:TextBox ID="subcategorybox" runat="server" Height="25px" MaxLength="50" ReadOnly="True" ToolTip="Enter Sub-Category" Width="350px"></asp:TextBox>
                            &nbsp;<asp:DropDownList ID="DropDownList2"  Height="30px" Width="200px"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                             <asp:ListItem>**Select**</asp:ListItem>
                            </asp:DropDownList>
                        
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" CssClass="vali" ErrorMessage="Field Can't be Blank">*</asp:RequiredFieldValidator>
                        
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label20" runat="server" CssClass="lab2" Text="Purchase Price:"></asp:Label>
                        </td>
            <td class="lf">
                            <asp:TextBox ID="purchasepricebox" runat="server" Height="25px" ToolTip="Enter Purchase Price" Width="350px" MaxLength="5"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="purchasepricebox">*</asp:RequiredFieldValidator>
                        </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="purchasepricebox" CssClass="vali" ErrorMessage="Field Contains Digits only" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                            </td>
            <td class="auto-style7">
                            <asp:Label ID="Label21" runat="server" CssClass="lab2" Text="Issue Charges:"></asp:Label>
                        </td>
            <td class="lf" >
                            <asp:TextBox ID="issuechargesbox" runat="server" Height="25px" ToolTip="Enter Issue Charges" Width="350px" MaxLength="5"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="issuechargesbox">*</asp:RequiredFieldValidator>
                        </td>
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="issuechargesbox" CssClass="vali" ErrorMessage="Field Contains Digits only" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label22" runat="server" CssClass="lab2" Text="Book Description:"></asp:Label>
                        </td>
            <td  class="lf">
                            <asp:TextBox ID="bookdescriptionbox" runat="server" Height="239px" ToolTip="Enter Book Description" Width="437px" TextMode="MultiLine" MaxLength="1000" CssClass="lab2" Font-Bold="False" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="bookdescriptionbox">*</asp:RequiredFieldValidator>
                        </td>
            <td class="auto-style2">

                 <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                         <asp:Label ID="Label26" runat="server" CssClass="lab2" Font-Size="Large" Text="Select Book Image:"></asp:Label>
                         <br />
                         <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" CssClass="vali" OnCheckedChanged="CheckBox1_CheckedChanged" Text="(check if image not available)" ValidationGroup="noimage" />
                            <br />
                 
                            <br />
                <asp:Image ID="bookimage" runat="server" Height="160px" Width="110px" />
                  
                           
                 
                            <br />
                 
                            <asp:Label ID="imgmsg" runat="server" Text="Label" CssClass="linkb" ForeColor="#FF9933"></asp:Label>
                 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="vali" ErrorMessage="Field Must Contains an Image" ControlToValidate="FileUpload1">*</asp:RequiredFieldValidator>
                 
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="194px"  />
                       <asp:LinkButton ID="upload" runat="server" CssClass="lnkbtn" ForeColor="#6666FF"  ValidationGroup="image" Enabled="False">Upload</asp:LinkButton>
                          </ContentTemplate>
                </asp:UpdatePanel>


            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label23" runat="server" CssClass="lab2" Text="Book Quantity:"></asp:Label>
                        </td>
            <td  class="lf">
                            <asp:TextBox ID="bookquantitybox" runat="server" Height="25px" ToolTip="Enter Book Quantity" Width="350px" MaxLength="10"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" CssClass="vali" ErrorMessage="Field Can't be Blank" ControlToValidate="bookquantitybox">*</asp:RequiredFieldValidator>
                        </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="bookquantitybox" CssClass="vali" ErrorMessage="Field Contains Digits only" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style5">
                            &nbsp;</td>
            <td class="auto-style3">
                            <asp:Label ID="Label24" runat="server" CssClass="lab2" Text="ISBN:"></asp:Label>
                        </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel4" runat="server"  >
                    <ContentTemplate>

                  
                <asp:Panel ID="Panel3" runat="server">
                    <div style="text-align:center;">

                   <asp:Label ID="Label25" runat="server" CssClass="lab2" Font-Size="Large" Text="Select ISBN type:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="isbn10button" runat="server" CssClass="lab2" Font-Size="Large"  Text="ISBN-10" AutoPostBack="True" GroupName="isbn" OnCheckedChanged="isbn10button_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="isbn13button" runat="server" AutoPostBack="True" CssClass="lab2" Font-Size="Large" GroupName="isbn" OnCheckedChanged="isbn13button_CheckedChanged" Text="ISBN-13" />
                    </div>

               
                    <br />


               
                <asp:Panel ID="Panel10isbn" runat="server">
                    <asp:TextBox ID="isbnbox10" runat="server" Height="25px" MaxLength="50" ToolTip="Enter 10 digit ISBN" Width="350px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="isbnbox10" CssClass="vali" ErrorMessage="Field Can't be Blank">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="isbnbox10" CssClass="vali" ErrorMessage="Field Contains 10 Digits with '-' only" ValidationExpression="[0-9 -]{13}"></asp:RegularExpressionValidator>
                </asp:Panel>
    
                <asp:Panel ID="Panel13isbn" runat="server">
                    <asp:TextBox ID="isbnbox13" runat="server" Height="25px" MaxLength="50" ToolTip="Enter 13 digit ISBN" Width="350px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="isbnbox13" CssClass="vali" ErrorMessage="Field Can't be Blank">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="isbnbox13" CssClass="vali" ErrorMessage="Field Contains 13 Digits with '-' only" ValidationExpression="978-[0-9 -]{13}"></asp:RegularExpressionValidator>
                </asp:Panel>
                 </asp:Panel>  </ContentTemplate>
                </asp:UpdatePanel>
                 </td>
            <td  class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [Book_details] WHERE [Book_name] = @Book_name AND [Author_name] = @Author_name" InsertCommand="INSERT INTO [Book_details] ([Book_image], [Book_name], [Author_name], [ISBN], [Publication_name], [Edition], [Category], [Sub_category], [Quantity], [Purchase_Price], [Issue_charges], [Book_Description]) VALUES (@Book_image, @Book_name, @Author_name, @ISBN, @Publication_name, @Edition, @Category, @Sub_category, @Quantity, @Purchase_Price, @Issue_charges, @Book_Description)" SelectCommand="SELECT * FROM [Book_details]" UpdateCommand="UPDATE [Book_details] SET [Book_image] = @Book_image, [ISBN] = @ISBN, [Publication_name] = @Publication_name, [Edition] = @Edition, [Category] = @Category, [Sub_category] = @Sub_category, [Quantity] = @Quantity, [Purchase_Price] = @Purchase_Price, [Issue_charges] = @Issue_charges, [Book_Description] = @Book_Description WHERE [Book_name] = @Book_name AND [Author_name] = @Author_name">
                    <DeleteParameters>
                        <asp:Parameter Name="Book_name" Type="String" />
                        <asp:Parameter Name="Author_name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Book_image" Type="String" />
                        <asp:ControlParameter ControlID="booknamebox" Name="Book_name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="authornamebox" Name="Author_name" PropertyName="Text" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:ControlParameter ControlID="publicationnamebox" Name="Publication_name" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="editionbox" Name="Edition" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="categorybx" Name="Category" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="subcategorybox" Name="Sub_category" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="bookquantitybox" Name="Quantity" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="purchasepricebox" Name="Purchase_Price" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="issuechargesbox" Name="Issue_charges" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="bookdescriptionbox" Name="Book_Description" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Book_image" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Publication_name" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Sub_category" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Purchase_Price" Type="Int32" />
                        <asp:Parameter Name="Issue_charges" Type="Int32" />
                        <asp:Parameter Name="Book_Description" Type="String" />
                        <asp:Parameter Name="Book_name" Type="String" />
                        <asp:Parameter Name="Author_name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" align="center" background="images/bg.jpg" colspan="4">
                <asp:LinkButton ID="insert" runat="server" CssClass="lnkbtn" Font-Size="X-Large" OnClick="insert_Click">Insert</asp:LinkButton>
            </td>
        </tr>
    </table></asp:Panel>
    <br />
   
    <br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

