<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac10_2.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:DropDownList ID="DL1" runat="server"></asp:DropDownList> <br /> <br />
<asp:Button runat="server" Text="Button" OnClick="Display_Click"></asp:Button> <br
/> <br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
</div>
</form>
</body>
</html>
