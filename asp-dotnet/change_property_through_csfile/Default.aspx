<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" >
        .hello{
            background-color:gold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>


              <asp:Label ID="Label1" runat="server" Text="HELLO" Font-Size="XX-Large"></asp:Label>
        
            </ContentTemplate>

        </asp:UpdatePanel>
        
    </div>
    </form>
</body>
</html>
