//upper case or lower case
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac5_1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server">Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="17px" style="margin-left: 65px" Width="121px"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upper Case"  />  <asp:Button ID="Button2" runat="server"  Text="Lower Case" OnClick="Button2_Click"  />
        </p>
       
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

