<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Timer runat="server" ID="t1" Interval="2000" OnTick="t1_Tick">
              
            </asp:Timer> <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:Panel ID="Panel1" runat="server">
             <font family="webdings" script="symbol" size="12">Y</font> 
        </asp:Panel>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            
        </asp:ScriptManager>
        
    </div>
    </form>
</body>
</html>
