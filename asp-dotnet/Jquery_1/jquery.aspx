<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jquery.aspx.cs" Inherits="jquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="js/jquery-1.7.2.min.js"></script> <%--this is a local library--%>
    <script type="text/javascript">

        //$(function () {



        //});

        //or




        //$(document).ready(function () {
        //    $("#x").text("Hello Jquery").css("background-color","red").css("color","white").css("border","5px solid black");   
            //#is used for using the class id  x

        $(document).ready(function () {
                $("#x").mouseenter(function(){
                    $(this).css("background-color","red").css("color","blue");

                });
                $("#x").mouseleave(function(){

                    $(this).css("background-color","white").css("color","black");
                });
                $("#x").mousemove(function () {
                    $(this).css("background-color", "skyblue").css("color", "red");
                });
           

            $("#x").click(function () {
                alert("hi");
            });      
            //used when event name knows


            $("#x").bind("click", function () {
                alert("Hello");
            });
           
            $("Button1").bind("OnClick", function (e) {

                e.preventDefault();
                $("#Label1").text("you can not" + e.type + "on button");
            });
        });
        //another way to use html events


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="x">  <%-- div tag has a id "x"--%>
    
        <h1>Hello World</h1>
        <br />
        </div>
        <div>
        <asp:Button ID="Button1" runat="server" Text="Button"  />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
