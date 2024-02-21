<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changing_div.aspx.cs" Inherits="scroll_div" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style>
        div.div1 {
            position: fixed;
            z-index: 10;
            color: white;
            background: black;
            -webkit-filter: brightness(2);
            min-width:100%;
            max-width:100%;
            width:100% auto;
            min-height: 30px;
            max-height: 30px;
            padding: 0.5em 0em 0.5em 0em;
            text-align: center;
            font-family:'Simplified Arabic Fixed';
            font-size:25px;
        }
                div.div2 {
            position:static;
       
            color: white;
            background-color: orange;
            -webkit-filter: brightness(1);
            min-width:100%;
            max-width:100%;
            width:100% auto;
            min-height: 500px;
            max-height: 500px;
            text-align: center;
            font-family:'Simplified Arabic Fixed';
            font-size:25px;
               padding-top:5em;
        }
                                div.div3 {
            position:static;
         
            color: white;
            padding-top:5em;
            background-color: pink;
            -webkit-filter: brightness(1);
            min-width:100%;
            max-width:100%;
            width:100% auto;
            min-height: 500px;
            max-height: 500px;
            text-align: center;
            font-family:'Simplified Arabic Fixed';
            font-size:25px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div1">
    MR. KUMAR & CO.
<%--        <hr size="1" width="15%" />--%>
     <center>   <div style=" width:200px; height:2px; background:linear-gradient(to right, black, white, black);"> </div></center>
    </div>

        <div class="div2">
           div2
        </div>

            <div class="div3">
            div3
        </div>
    </form>
</body>
</html>
