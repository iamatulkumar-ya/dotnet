<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panelview.aspx.cs" Inherits="panelview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br />
        <center>
    <div style="text-align:center;height:auto;width:80%;border-style:solid;border-color:green;">

    
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" Font-Underline="False" ForeColor="#FF5050" OnClick="LinkButton1_Click">About US</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel1" runat="server"  BorderStyle="Solid" BorderColor="WindowFrame">
            <font face="calibri" size="5"> Library is regarded as the brain of any institute; 
                many institutes understand the importance of the library to the growth of the institute and their esteem users (students)
                 as well as the library also useful for many citizens who like to read various types of books. 
                Library Management system offers many flexible and convenient features, allowing librarians and library users to maximize time and efficiency. 
                Library Management System gives the all detailed information about patron, staff and books. 
                It will track on the how many books available in library and books issued to the patron.</font>
        </asp:Panel>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" Font-Underline="False" ForeColor="#FF5050" OnClick="LinkButton2_Click">Work Area</asp:LinkButton>
        <br />
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderColor="WindowFrame">
           <font face="calibri" size="5">  This application can be used by any Library to automate the process of manually maintaining the records related to the 
            subject of maintaining the stock and Book Issues. As we know that the time is very precious and the trees are play major 
            role for us so this automated system saves the paper and time as well. The database of books and patron managed by computer
             software and stores on the hard disk, so the efficiency of task performed by admin also increases and also provides the backup of stored data.
             We can easily retrieve any information about patron and books.</font>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    
    </div></center>
        <br /><br />
    </form>
</body>
</html>
