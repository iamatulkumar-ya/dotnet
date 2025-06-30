<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT  * FROM [Products] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server"  DataSourceID="SqlDataSource1"
        
            style="z-index: 1; left: 246px; top: 14px; position: absolute; height: 133px; width: 187px" 
            AutoGenerateColumns="False" ShowHeader="False" BackColor="#999966">
        <Columns>
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Image runat="server"  id="Image1" ImageUrl='<%# Eval("ImageUrl") %>' 
                style="width:200px" BorderColor="#000099" BorderStyle="Ridge" BorderWidth="3px">
            </asp:Image>
               <br />
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' 
                Font-Bold="True" ForeColor="Maroon"></asp:Label>
                <br />
                <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' BackColor="#99FF33" Font-Bold="True" 
                Font-Overline="True" Font-Underline="True" ForeColor="#000099"></asp:Label>
                <br />
                <asp:Label ID="PriceLabel" runat="server" 
                Text='<%# Eval("Price", "{0:C}" ) %>' BackColor="Yellow" Font-Bold="True" 
                Font-Italic="True" ForeColor="Red"></asp:Label>
                
              </ItemTemplate>

        </asp:TemplateField>
        </Columns>
    </asp:GridView>
     <br />
     <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" onclick="btnAdd_Click" /><br />
        <br />
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Product.aspx">Return to Products Page</asp:HyperLink>
    </div>
    </form>
</body>
</html>
