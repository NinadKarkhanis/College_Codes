<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac5_3.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1><asp:Label ID="Label1" runat="server" Text="Login page"></asp:Label></h1>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter Username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 35px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 36px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
