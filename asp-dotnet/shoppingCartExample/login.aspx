<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Login ID="Login1" runat="server" CreateUserText="New User" 
        CreateUserUrl="~/Registration.aspx" 
        style="z-index: 1; left: 585px; top: 33px; position: absolute; height: 132px; width: 243px">
    </asp:Login>
    </form>
</body>
</html>
