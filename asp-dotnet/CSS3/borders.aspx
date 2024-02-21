<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borders.aspx.cs" Inherits="borders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .border{
            border-width:thick; border-radius:35px; border-color:red; border:solid;
            box-shadow:10px 10px 5px #f6b720 ; width:500px; height:100px;

        }
        .border1{
            border-image:url(border.png) 30 30 round;
            border-image-slice:fill;

        }
    </style>
</head>
<body><br /><br />
    <form id="form1" runat="server">
    <div class="border">
     i am in border
    </div>
        <br /><br /><br />

        <div class="border1">
     i am in border
    </div>
    </form>
</body>
</html>
