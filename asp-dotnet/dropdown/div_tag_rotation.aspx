<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

     div#div6
     {
         transform:rotate(15deg);
          
         

     }
    </style>
  

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>a</asp:ListItem>
            <asp:ListItem>b</asp:ListItem>
            <asp:ListItem>c</asp:ListItem>
            <asp:ListItem>d</asp:ListItem>
            <asp:ListItem>e</asp:ListItem>
            <asp:ListItem>f</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
        <br /><br /><br />
        <center>
        <div id="div6" style="background-color:red; height:400px; width:500px;" class="div2">
            <h1>
                hello baby
            </h1>
        </div></center>
    </form>
</body>
</html>
