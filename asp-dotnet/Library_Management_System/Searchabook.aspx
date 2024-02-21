<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Searchabook.aspx.cs" Inherits="_Default" %>
<script runat="server">

  
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 729px;
            height: 215px;
            background-color: #FFFFFF;
        }
        .st{
            text-align:left;
        }


       .vali{
           font-style:italic; font-family:Calibri; Font-Size:small; Color:Red;
       }
        

        .lbts{

            text-decoration:none;         
            lighting-color:aqua;
            font-family:Calibri;
            font-size:x-large;
            
            color:white;
            border-radius:5px 7px;
            
        }

        .auto-style3 {
            width: 198px;
            height: 189px;
            text-align:left;
        }

        .auto-style4 {
            width: 280px;
            height: 103px;
        }
        .auto-style5 {
            width: 275px;
            height: 32px;
            background-color:#FF9933;
        }

        .auto-style6 {
            width: 132px;
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
        <asp:LinkButton ID="logout" runat="server" CssClass="lbt" OnClick="logout_Click">Logout</asp:LinkButton>
           
             </div>
        </div>
         </asp:Panel>
        </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <br />
    <br />
    <table align="center" class="auto-style1" background='images/bg.jpg'>
        <tr>
            <td class="st">
                <asp:Label ID="Label3" runat="server" CssClass="lbt" Text="Enter Book Name:"></asp:Label>
            </td>
            <td class="st">
                <asp:TextBox ID="booknamebox" runat="server" Height="34px" Width="390px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Can't be Blank" CssClass="vali" ControlToValidate="booknamebox" ForeColor="White" >*</asp:RequiredFieldValidator>
            </td>
            <td class="st">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lbts" Font-Bold="True" Font-Names="Comic Sans MS" OnClick="LinkButton1_Click" BackColor="#FF6600" BorderWidth="3px">Search</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="st">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT * FROM [Book_details] WHERE ([Book_name] LIKE '%' + @Book_name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="booknamebox" Name="Book_name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="st">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="st">
                &nbsp;</td>
        </tr>
        </table> <br /><br />

      
                <asp:Panel ID="resultp" runat="server">
                    <div>
                        <fieldset>
                            <legend>
                                <asp:Label ID="Label4" runat="server" Text="Result" CssClass="lbt" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                            </legend><br />
                            <asp:Label ID="msg" runat="server" Text="Sorry No Results Found :'(" CssClass="lbt" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="XX-Large" Visible="False"></asp:Label>
                        
                <asp:GridView ID="GridView1" runat="server" ShowHeader="False" AutoGenerateColumns="False" DataKeyNames="Book_name,Author_name"  DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand"  >
                    <Columns>
                       
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="booknamebutton" runat="server" CssClass="lbt" Font-Size="Large" ForeColor="#FF9933" CommandName="bookname" Text='<%# Eval("Book_name") %>' OnClick="booknamebutton_Click" ToolTip="Click Here For Book Details"></asp:LinkButton>
                                <br />
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="125px" Width="94px" ImageUrl='<%# Eval("Book_image") %>'  />
                                <br />
                                <table align="center" class="auto-style4">
                                    <tr>
                                        <td align="left">by:</td>
                                        <td align="left">
                                            <asp:Label ID="authornamelabel" runat="server" Text='<%# Eval("Author_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">Purchase Price:</td>
                                        <td  align="left">
                                            <asp:Label ID="purchasepricelabel" runat="server" Text='<%# Eval("Purchase_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  align="left">Issue Charges:</td>
                                        <td  align="left">
                                            <asp:Label ID="issuechargeslabel" runat="server" Text='<%# Eval("Issue_charges") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="CENTER" colspan="2">
                                            <asp:Label ID="status" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Label ID="bookstatus" runat="server" CssClass="linkb" Text="Label"></asp:Label>
                                <br />
                                <table align="center" class="auto-style5">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:LinkButton ID="buylbt" runat="server" CssClass="lbt" CommandName="buy" OnClick="buylbt_Click">Buy</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="issuelbt" runat="server" CssClass="lbt" CommandName="issue" OnClick="issuelbt_Click">Issue</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                    </ItemTemplate></asp:TemplateField>
                       
                    </Columns>
                 
                    <HeaderStyle ForeColor="White" />
                    <PagerSettings Mode="NextPrevious" />
                    <RowStyle BackColor="White" />
                </asp:GridView>
                            <br />
                    </fieldset></div></asp:Panel>

    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <asp:Panel ID="Panel3" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <fieldset>
            <legend>
                <asp:Label ID="Label5" runat="server" CssClass="lbt"  Text="Optional" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
            </legend>

            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
             
            <table align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:CheckBox ID="authorcheck" runat="server" CssClass="lbt" Text="Author Name" AutoPostBack="True" OnCheckedChanged="authorcheck_CheckedChanged1" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="authornamebox" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="categorycheck" runat="server" CssClass="lbt" Text="Category" AutoPostBack="True" OnCheckedChanged="categorycheck_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="categorysbox" runat="server"  Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="subcategorycheck" runat="server" CssClass="lbt" Text="Sub-Category" AutoPostBack="True" OnCheckedChanged="subcategorycheck_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="subcategorysbox" runat="server"  Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>   </ContentTemplate>
            </asp:UpdatePanel>
            <br />
        </fieldset>

    </asp:Panel>
</asp:Content>

