<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myhome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .auto-style1 {
            width: 248px;
            background-color: #FFFFFF;
            height: 265px;
            text-align:left;
            text-indent:5px;
        }
           .auto-style2 {
            width: 247px;
            background-color: #FFFFFF;
            height: 249px;
            text-align:left;
            text-indent:5px;
        }
         .lnkbtn{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:large; color:white;text-decoration:none; 
        }
          .lab{
            font-family:'Comic Sans MS'; font-weight:bold; font-size:x-large; color:white;font-style:italic;text-shadow:8px 4px 3px #f6a90a;
        }
         .adiv {
             width: 100%;
             height: auto;
           
         }
         
         .auto-style3 {
             width: 418px;
             border-color: #FFFFFF;
             height: 198px;
         }
         .lbts{

            text-decoration:none;         
            lighting-color:aqua;
            font-family:Calibri;
            font-size:x-large;
            
            color:white;
            border-radius:5px 7px;
            
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

     <table align="center" class="auto-style1"   background='images/bg.jpg' >
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
         <table align="center" class="auto-style2"   background='images/bg.jpg' >
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
    <div class="adiv" >
        
        <asp:Panel ID="staffp" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/team.png" /><br />
        <asp:Label ID="Label3" runat="server" Text="You are in Staff Mode" CssClass="lnkbtn" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    </asp:Panel>

          <asp:Panel ID="adminp" runat="server">
              <asp:Image ID="Image2" runat="server" ImageUrl="~/images/admin.png" Height="232px" Width="246px" /><br />
        <asp:Label ID="Label4" runat="server" Text="You are in Admin Mode" CssClass="lnkbtn" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    </asp:Panel>
        <asp:Panel ID="userdetailsp" runat="server">
            <table align="center" class="auto-style3">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label5" runat="server" CssClass="lab" Text="User Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="white">
                        <asp:Label ID="Label6" runat="server" CssClass="lab2" Text="Enter User id:"></asp:Label>
                    </td>
                    <td bgcolor="white">
                        <asp:TextBox ID="useridbox" runat="server" Height="34px" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lnkbtn">Search</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />

        </asp:Panel>
        <br />

        <asp:Panel ID="updatebookp" runat="server">

            <table align="center"  background='images/bg.jpg' style="height: 104px; width: 677px">
        <tr>
            <td class="st">
                <asp:Label ID="Label7" runat="server" CssClass="lbt" Text="Enter ISBN:"></asp:Label>
            </td>
            <td class="st">
                <asp:TextBox ID="isbnbox" runat="server" Height="34px" Width="390px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="isbnbox" ForeColor="White" >*</asp:RequiredFieldValidator>
            </td>
            <td class="st">
                <asp:LinkButton ID="booksearch" runat="server" CssClass="lbts" Font-Bold="True" Font-Names="Comic Sans MS"  BackColor="#FF6600" BorderWidth="3px" OnClick="booksearch_Click">Search</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="st">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" DeleteCommand="DELETE FROM [Book_details] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [Book_details] ([Book_image], [Book_name], [Author_name], [ISBN], [Publication_name], [Edition], [Category], [Sub_category], [Quantity], [Purchase_Price], [Issue_charges], [Book_Description]) VALUES (@Book_image, @Book_name, @Author_name, @ISBN, @Publication_name, @Edition, @Category, @Sub_category, @Quantity, @Purchase_Price, @Issue_charges, @Book_Description)" SelectCommand="SELECT Book_details.* FROM Book_details where ISBN=@ISBN" UpdateCommand="UPDATE [Book_details] SET [Book_image] = @Book_image, [Book_name] = @Book_name, [Author_name] = @Author_name, [Publication_name] = @Publication_name, [Edition] = @Edition, [Category] = @Category, [Sub_category] = @Sub_category, [Quantity] = @Quantity, [Purchase_Price] = @Purchase_Price, [Issue_charges] = @Issue_charges, [Book_Description] = @Book_Description WHERE [ISBN] = @ISBN">
                    <DeleteParameters>
                        <asp:Parameter Name="ISBN" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Book_image" Type="String" />
                        <asp:Parameter Name="Book_name" Type="String" />
                        <asp:Parameter Name="Author_name" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Publication_name" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Sub_category" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Purchase_Price" Type="Int32" />
                        <asp:Parameter Name="Issue_charges" Type="Int32" />
                        <asp:Parameter Name="Book_Description" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="isbnbox" Name="ISBN" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Book_image" Type="String" />
                        <asp:Parameter Name="Book_name" Type="String" />
                        <asp:Parameter Name="Author_name" Type="String" />
                        <asp:Parameter Name="Publication_name" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Sub_category" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Purchase_Price" Type="Int32" />
                        <asp:Parameter Name="Issue_charges" Type="Int32" />
                        <asp:Parameter Name="Book_Description" Type="String" />
                        <asp:ControlParameter ControlID="isbnbox" Name="ISBN" PropertyName="Text" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="st">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="st">
                &nbsp;</td>
        </tr>
        </table> 
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Book_image" SortExpression="Book_image">
                        <EditItemTemplate>
                            <asp:Image ID="newimage" runat="server" Height="115px" ImageUrl='<%# Eval("Book_image") %>' Width="93px" />
                            <br />
                            <asp:Label ID="uploadlb" runat="server" CssClass="linkb" Text="Label" Visible="False"></asp:Label>
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" Height="115px" ImageUrl='<%# Eval("Book_image") %>' Width="93px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Book_name" HeaderText="Book_name" SortExpression="Book_name" />
                    <asp:BoundField DataField="Author_name" HeaderText="Author_name" SortExpression="Author_name" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Publication_name" HeaderText="Publication_name" SortExpression="Publication_name" />
                    <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Sub_category" HeaderText="Sub_category" SortExpression="Sub_category" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Purchase_Price" HeaderText="Purchase_Price" SortExpression="Purchase_Price" />
                    <asp:BoundField DataField="Issue_charges" HeaderText="Issue_charges" SortExpression="Issue_charges" />
                    <asp:BoundField DataField="Book_Description" HeaderText="Book_Description" SortExpression="Book_Description" />
                </Columns>
                <HeaderStyle ForeColor="White" />
                <RowStyle BackColor="White" />
            </asp:GridView>

        </asp:Panel>
        <br />
 </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
  
</asp:Content>

