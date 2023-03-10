<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac5_2.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 27px; margin-top: 6px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Bold" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Italic" />
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Underlined" />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Blue" GroupName="Color"/>
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Red" GroupName="Color"/>
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Green" GroupName="Color" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
    </form>
</body>
</html>
