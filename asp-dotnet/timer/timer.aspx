<%@ Page Language="C#" AutoEventWireup="true" CodeFile="timer.aspx.cs" Inherits="timer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br /><br /><br />
        <center>
    <div>
       
        <asp:Updatepanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"> </asp:Timer>
             <asp:Image ID="simage" runat="server" Height="500px" Width="720px" />
              
                     <br />
                 <br />
              
                     </contenttemplate>
        </asp:Updatepanel>
     

    </div></center><br /><br /><br />
    </div>
    </form>
</body>
</html>
