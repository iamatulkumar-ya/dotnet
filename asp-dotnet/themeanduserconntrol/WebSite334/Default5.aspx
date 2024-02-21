<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<%@ Register src="add.ascx" tagname="add" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <uc1:add ID="add1" runat="server" />
        <uc1:add ID="add2" runat="server" />
        <uc1:add ID="add3" runat="server" />
    </form>
</body>
</html>
