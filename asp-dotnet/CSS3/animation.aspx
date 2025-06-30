<%@ Page Language="C#" AutoEventWireup="true" CodeFile="animation.aspx.cs" Inherits="animation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        @keyframes bt{

            from {left:0px;}
            
            to {left:200px;}
        }

        .rotation{
            box-shadow:inset;
            animation-name:bt;
            animation-direction:alternate-reverse;
            animation-iteration-count:infinite;
            animation-fill-mode:both;
            animation-timing-function:cubic-bezier();

            animation:bt 10s infinite;
            animation-delay:2s;
            animation-duration:3s;
            
        }
        .rotation:hover{
            background-color:red;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" CssClass="rotation" runat="server" Text="Hello" />
    </div>
    </form>
</body>
</html>
