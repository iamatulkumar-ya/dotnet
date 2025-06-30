<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change image by hover.aspx.cs" Inherits="change_image_by_hover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        .imagebtn{

            width:250px;
            height:260px;
            border:2px solid gray;
               background-image:url('../img/bin.jpg');
               background-size:cover;
              
        }
        .imagebtn:hover{
            
            /*background-image:url('../img/purple.jpg');*/
            
            /*transform:rotateY(180deg);
            transition-duration:2s;*/
            zoom:-1.1;
           animation-name:img;
           animation-duration:2s;

           animation-fill-mode:forwards;
    
            border:2px solid black;
         
        }

        @keyframes img{
            /*from{  background-image:url('../img/bin.jpg'); opacity:0.5;}
            to{      background-image:url('../img/purple.jpg'); }*/
            from {
                          
            }
            to{    background-image: url('../img/purple.jpg');
                    width:250px;
            height:260px;
           
                transform: rotateY(180deg);
                transition-duration: 2s;}
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <a href="image slider.aspx" target="_blank" style="border:2px solid;    width:250px;           height:260px;" > <asp:Panel ID="Panel1" runat="server" class="imagebtn"></asp:Panel> </a>
    <div >
       <a href="image slider.aspx" target="_blank" style="border:2px solid;    width:250px;           height:260px;" > click upon me </a>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/bin.jpg" CssClass="imagebtn" /> <br /><br />
       
        <br /><br />
    
    </div>

                <br /><br />        <br /><br />


        <a href="image slider.aspx">
<img src="img/bin.jpg" 
onmouseover="img/blue.jpg"
onmouseout="img/bin.jpg"
border="0" alt=""/></a>
                <br /><br />        <br /><br />
    </form>
</body>
</html>
