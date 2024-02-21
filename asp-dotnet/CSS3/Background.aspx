<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Background.aspx.cs" Inherits="Background" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .bg1{
            background:url(img_flwr.gif);
            background-repeat:no-repeat;
            
        }

        .bg2{
            background-color:yellow;
            background-clip:initial;
                     
        }
        .lbl{
             font-size:15px; font-stretch:extra-expanded;  
        }
    </style>
</head>
<body><br />
    <form id="form1" runat="server">
    <div style="width:400px;height:200px" class="bg1">
    
    </div>
        <br><br />
            <div style="width:400px;height:200px" class="bg2">
                <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Hello label"></asp:Label>
    </div>
        
    </form>
</body>
</html>
