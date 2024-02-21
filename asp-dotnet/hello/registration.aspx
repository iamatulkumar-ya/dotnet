<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table style="width: 100%">
        <tr>
            <td>NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>DATE OF BIRTH</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>GENDER</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ab" Text="MALE" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ab" Text="FEMALE" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ab" Text="OTHER"  />
            </td>
        </tr>
        <tr>
            <td>CITY</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="lnkbt" ForeColor="Gray">SUBMIT</asp:LinkButton>
            </td>
        </tr>
    </table>

    
</asp:Content>

