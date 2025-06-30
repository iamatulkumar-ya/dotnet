<%@ Page Language="C#" AutoEventWireup="true" CodeFile="div_tag_rotation.aspx.cs" Inherits="div_tag_rotation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        div#div1{
            transform:rotate(20deg);
            -moz-animation:backwards;
        }

    </style>
</head>
<body> <br /><br /> <br /><br />
    <form id="form1" runat="server">
       
   <center> <div id="div1" style="width:400px;height:300px;background-color:green;">
    hello div tag
    </div></center>
    </form>
</body>
</html>
