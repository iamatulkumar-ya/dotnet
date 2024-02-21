<%@ Page Language="C#" AutoEventWireup="true" CodeFile="state_city.aspx.cs" Inherits="state_city" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 31%;
            height: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td>Please Select State</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>City </td>
                <td> 
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                 </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
