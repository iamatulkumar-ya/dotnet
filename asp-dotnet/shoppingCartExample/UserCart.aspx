<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserCart.aspx.cs" Inherits="UserCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductID" onrowcancelingedit="grdCart_RowCancelingEdit" 
            onrowdeleted="grdCart_RowDeleted" onrowdeleting="grdCart_RowDeleting" 
            onrowediting="grdCart_RowEditing" onrowupdating="grdCart_RowUpdating" >
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' style="width:100px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="SubTotal" DataFormatString="{0:c}" HeaderText="Total"
            ReadOnly="True" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <EmptyDataTemplate>
        Your Shopping Cart is empty, add items
        <a href="Product.aspx">Add Products</a>
    </EmptyDataTemplate>
</asp:GridView>
       
<asp:Label ID="TotalLabel" runat="server"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
           >Check Out</asp:LinkButton>
<br />
<br />
    </div>
    </form>
</body>
</html>
