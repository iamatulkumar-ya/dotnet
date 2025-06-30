<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateproduct.aspx.cs" Inherits="shopingCart_product_updateproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


           .auto-style1 {
            width: 1847px;
            height: 2843px;
            border: 7px solid #800000;
            margin-right: 0px;
        }
        .auto-style5 {
            height: 241px;
            }
        .auto-style9 {
         }
         .auto-style25 {
             height: 2276px;
         }
         .auto-style26 {
            height: 35px;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
           <table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td bgcolor="White" class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="466px" ImageUrl="~/shopingCart/images/11174757_432422366931801_6570275650099914772_o.jpg" Width="80%"  style="margin-top: 0px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#66FF66" class="auto-style26">
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Font-Bold="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large">
                        <DynamicItemTemplate>
                            <%# Eval("Text") %>
                        </DynamicItemTemplate>
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                            
                            <asp:MenuItem Text="Prodcut" Value="Prodcut">
                                <asp:MenuItem Text="Insert Product" Value="Insert Product"></asp:MenuItem>
                               
                                <asp:MenuItem Text="Update Product" Value="Update Product"></asp:MenuItem>
                                <asp:MenuItem Text="Delete Prduct" Value="Delete Prduct"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="About Us " Value="About Us "></asp:MenuItem>
                            <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                        </Items>
                        <LevelSelectedStyles>
                            <asp:MenuItemStyle BorderColor="Black" Font-Underline="False" Height="50px" ItemSpacing="20px" Width="1200px" />
                        </LevelSelectedStyles>
                        <StaticHoverStyle BorderStyle="None" Font-Bold="True" Font-Size="50pt" ForeColor="Black" BackColor="#993399" />
                        <StaticMenuItemStyle Height="40px" Width="50px" ForeColor="Black" ItemSpacing="50px" />
                        <StaticMenuStyle BackColor="Maroon" BorderColor="Black" BorderStyle="Solid" Height="50px" Width="2000px"/>
                        <StaticSelectedStyle ForeColor="Black" />
                        <StaticItemTemplate>
                            <%# Eval("Text") %>
                        </StaticItemTemplate>
                    </asp:Menu>
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style25" bgcolor="White">
                   
                    &nbsp;
                   
                    <asp:GridView ID="GridView2" runat="server"  align="center" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1" Height="1526px" Width="932px" BorderColor="Maroon" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateEditButton="True">
                        <Columns>
                            
                            <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" SortExpression="productid" />
                            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                            <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
                            <asp:TemplateField HeaderText="productimage" SortExpression="productimage">
                                <EditItemTemplate>
                                     <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("productimage") %>' Width="300px" />
                                     <br />
                                    
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="299px" Height="61px" />

                                </EditItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("productimage") %>' Width="300px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="productdescription" HeaderText="productdescription" SortExpression="productdescription" />
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="Label10" runat="server" ForeColor="Red" style="font-weight: 700; font-size: xx-large" Text="The table is empty first insert product"></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>" DeleteCommand="DELETE FROM [addnewproduct] WHERE [productid] = @productid" InsertCommand="INSERT INTO [addnewproduct] ([productid], [productname], [productprice], [productimage], [category], [productdescription]) VALUES (@productid, @productname, @productprice, @productimage, @category, @productdescription)" SelectCommand="SELECT * FROM [addnewproduct]" UpdateCommand="UPDATE [addnewproduct] SET [productname] = @productname, [productprice] = @productprice, [productimage] = @productimage, [category] = @category, [productdescription] = @productdescription WHERE [productid] = @productid">
                        <DeleteParameters>
                            <asp:Parameter Name="productid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="productid" Type="Int32" />
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="productprice" Type="String" />
                            <asp:Parameter Name="productimage" Type="String" />
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="productdescription" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="productprice" Type="String" />
                            <asp:Parameter Name="productimage" Type="String" />
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="productdescription" Type="String" />
                            <asp:Parameter Name="productid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" bgcolor="#66FF66" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label ID="Label9" runat="server" Text="Made by Arun,Shubham and Parvez@2015" align="center"></asp:Label>
                    <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---- <asp:HyperLink ID="HyperLink4" runat="server" align="center">Home</asp:HyperLink>
                    /<asp:HyperLink ID="HyperLink5" runat="server">about us</asp:HyperLink>
                    /<asp:HyperLink ID="HyperLink6" runat="server">contect us</asp:HyperLink>
                    ----&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            </table>
   
    </form>
</body>
</html>
