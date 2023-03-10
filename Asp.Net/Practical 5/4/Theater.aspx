<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
Inherits="Prac5_4.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Label ID="Label1" runat="server" Text="City"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Mumbai" GroupName="City" 
OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="True"/>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="City" Text="Pune" 
OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="True" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
       
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
       
    </form>
</body>
</html>
