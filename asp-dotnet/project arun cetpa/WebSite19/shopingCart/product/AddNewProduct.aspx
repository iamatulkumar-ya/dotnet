<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewProduct.aspx.cs" Inherits="shopingCart_admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style1 {
            width: 1436px;
            height: 2504px;
            border: 7px solid #800000;
        }
        .auto-style5 {
            height: 241px;
            }
        .auto-style9 {
            height: 872px;
        }
        .auto-style10 {
            width: 1253px;
            height: 1312px;
        }
        .auto-style11 {
            height: 81px;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style13 {
            width: 653px;
        }
        .auto-style14 {
            height: 81px;
            width: 653px;
        }
        .auto-style15 {
            width: 653px;
            height: 152px;
        }
        .auto-style16 {
            height: 152px;
        }
        .auto-style20 {
            width: 653px;
            height: 44px;
        }
        .auto-style21 {
            height: 44px;
        }
        .auto-style22 {
            width: 653px;
            height: 317px;
        }
        .auto-style23 {
            height: 317px;
        }
        .auto-style24 {
            height: 166px;
        }
        .auto-style25 {
            height: 185px;
        }
        .auto-style26 {
            width: 653px;
            height: 83px;
        }
        .auto-style27 {
            height: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    
    </div>
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td bgcolor="White" class="auto-style5">
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image1" runat="server" Height="464px" ImageUrl="~/shopingCart/images/11174757_432422366931801_6570275650099914772_o.jpg" Width="1589px" style="margin-top: 0px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style24" bgcolor="White">
&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Menu ID="Menu1" ForeColor="Black" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem >
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
                        <StaticHoverStyle BorderStyle="None" Font-Bold="True" Font-Size="50pt" ForeColor="Black" />
                        <StaticMenuItemStyle Height="40px" Width="50px" BorderColor="Maroon" BorderStyle="Solid" ItemSpacing="100px" />
                        <StaticMenuStyle BackColor="Maroon" BorderColor="Black" BorderStyle="Solid" Height="50px" Width="1584px" />
                        <StaticSelectedStyle ForeColor="Black" ItemSpacing="100px" Height="50px" />
                    </asp:Menu>
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style9" bgcolor="White">&nbsp;<table class="auto-style10">
                    <tr>
                        <td class="auto-style26" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="Product Id" ></asp:Label>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextBox1" runat="server" Height="36px" style="margin-left: 0px" Width="254px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="Red" style="font-weight: 700; font-size: xx-large"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="Product Name"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style21">
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" Height="36px" Width="256px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Product Price"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="254px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"></td>
                        <td class="auto-style23">&nbsp;
                            <asp:Label ID="Label4" runat="server" style="font-size: x-large; font-weight: 700" Text="Category"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Clothing" OnCheckedChanged="RadioButton1_CheckedChanged" />
                            <br />
                            <br />
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Mobiles" />
                            <br />
                            <br />
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Mobile Accessories" />
                            <br />
                            <br />
                            <asp:RadioButton ID="RadioButton4" runat="server" OnCheckedChanged="RadioButton4_CheckedChanged" Text="Gift Item" />
                            <br />
                            <br />
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Shoes,Sandals and Slippers" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="Product Image"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>" InsertCommand="INSERT INTO addnewproduct(productid, productname, productprice, productimage, category, productdescription) VALUES (@productid, @productname, @productprice, @productimage, @category, @productdescription)" SelectCommand="SELECT * FROM [addnewproduct]">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="productid" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="TextBox2" Name="productname" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="TextBox3" Name="productprice" PropertyName="Text" />
                                    <asp:Parameter Name="productimage" />
                                    <asp:Parameter Name="category" />
                                    <asp:ControlParameter ControlID="TextBox4" Name="productdescription" PropertyName="Text" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style25">
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="43px" Width="351px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="Product Discription"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TextBox4" runat="server" Height="246px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="INSERT" Width="148px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </td>
                    </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <h2>
                        &nbsp;</h2>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" bgcolor="#FFFF99">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label ID="Label9" runat="server" Text="Made by Arun,Shubham and Parvez@2015"></asp:Label>
                    <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     ---- <asp:HyperLink ID="HyperLink1" runat="server" align="center">Home</asp:HyperLink>
                    /<asp:HyperLink ID="HyperLink2" runat="server">about us</asp:HyperLink>
                    /<asp:HyperLink ID="HyperLink3" runat="server">contect us</asp:HyperLink>
                    ----</td>
            </tr>
        </table>
    </form>
 
    
</body>
</html>
