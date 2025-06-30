<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [ProductID], [Name], [Description], [Price], [ImageUrl] FROM [Products]">
            </asp:SqlDataSource>
       
        
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Both" RepeatColumns="3" 
            RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
        <table align="left" style="height: 112px; width: 226px" >
            <tr>
                <td rowspan="2">
                                <asp:ImageButton ID="ImageButton1" runat="server" style="width:100px" ImageUrl='<%# Eval("ImageUrl") %>' PostBackUrl='<%# Eval("ProductID", "ProductDetails.aspx?ProductID={0}") %>' /><br />
               
              
                   
                   </td>
                <td>
                     <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                      <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>'></asp:Label>
                    </td>
            </tr>
        </table>
        </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
       
        
        <br />
        <asp:HyperLink ID="CartLink" runat="server" NavigateUrl="~/UserCart.aspx">View Shopping Cart</asp:HyperLink><br />
        &nbsp;<br />
        .<br />
    </div>
    </form>
</body>
</html>
