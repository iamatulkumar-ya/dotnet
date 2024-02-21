<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 780px;
            height: 627px;
            border: 2px solid #FF3300;
        }
        .auto-style2 {
            width: 53px;
        }
        .auto-style3 {
            height: 9px;
        }
        .bg{
            background-color:#FF9933;
        }

        .lbtaaa{

            font-family:Calibri;
            color:white;
            font-size:xx-large;
            text-decoration:none;   
        }
        
        .lbtaaa:hover{

            color:red;
           font-weight:bold;
        }
        

    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" SelectCommand="SELECT Book_image, Book_name, Author_name, Publication_name, Edition, Category, Sub_category, Purchase_Price, Issue_charges, Book_Description FROM Book_details Where BOOK_NAME=@BOOK_NAME">
            <SelectParameters>
                <asp:QueryStringParameter Name="BOOK_NAME" QueryStringField="BOOK_NAME" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <br />
                        <table align="center" class="auto-style1">
                            <tr>
                                <td rowspan="3" class="auto-style2">
                                    <asp:Image ID="Image1" runat="server" Height="250px" Width="200px" ImageUrl='<%# Eval("Book_image") %>' />
                                </td>
                                <td colspan="2">&nbsp;</td>
                                <td colspan="2" align="right">
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="lbtaaa" Font-Size="Large">Add to Cart</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Label ID="Label2" runat="server" CssClass="lbt" Font-Italic="True" Font-Size="XX-Large" ForeColor="#FF6600" Text='<%# Eval("Book_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" CssClass="lbt" Text="By:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    <asp:Label ID="Label4" runat="server" CssClass="lbt" Text='<%# Eval("Author_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" colspan="5">

                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label5" runat="server" CssClass="lbt" Text="Publication name:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label15" runat="server" CssClass="lbt" Text='<%# Eval("Publication_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label6" runat="server" CssClass="lbt" Text="Edition:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" CssClass="lbt" Text='<%# Eval("Edition") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label7" runat="server" CssClass="lbt" Text="Category:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" CssClass="lbt" Text='<%# Eval("Category") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label8" runat="server" CssClass="lbt" Text="Sub-category:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" CssClass="lbt" Text='<%# Eval("Sub_category") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700" align="left">
                                    <asp:Label ID="Label9" runat="server" CssClass="lbt" Text="Book Description:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" CssClass="lbt" Text='<%# Eval("Book_Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label11" runat="server" CssClass="lbt" Text="Purchase Price:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label20" runat="server" CssClass="lbt" Text='<%# Eval("Purchase_Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label12" runat="server" CssClass="lbt" Text="Issue Charges:"></asp:Label>
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label21" runat="server" CssClass="lbt" Text='<%# Eval("Issue_charges") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="5" class="bg">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lbtaaa">Buy</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="lbtaaa">Issue</asp:LinkButton>
                                </td>
                                
                          
                            </tr>
                        </table>


                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

