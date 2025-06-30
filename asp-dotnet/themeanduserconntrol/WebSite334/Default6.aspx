<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<%@ Register src="AddWithProperty.ascx" tagname="AddWithProperty" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <uc1:AddWithProperty ID="AddWithProperty1" runat="server" setBackColor="#FF9900" setBorderColor="#000099" setBorderStyle="Ridge" setBorderWidth="5px" setForeColor="#3333FF" />
    </form>
</body>
</html>
