<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
       <tr>
         <td>
          <!-- Insert the random string as a hidden entry -->
          <input type="hidden" name="random"
             value="<% = captchas.random () %>" />
             Your message:</td><td><input name="message" size="60" />
         </td>
       </tr>
       <tr>
         <td>
           The CAPTCHA password:
         </td>
         <td>
           <input name="password" size="6" />
         </td>
       </tr>
       <tr>
         <td>
         </td>
         <td>
           <!-- Insert the CAPTCHA image and audio link-->
           <%= captchas.image () %>
           <br> <a href="<%= captchas.audio_url () %>">Phonetic spelling (mp3)</a>
         </td>
       </tr>
       <tr>
         <td>
         </td>
         <td>
            <input type="submit" value="Submit" />
         </td>
       </tr>
     </table>
    </div>
    </form>
</body>
</html>
