<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac5_5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Ninad</asp:ListItem>
                <asp:ListItem>Hamja</asp:ListItem>
                <asp:ListItem>Shri</asp:ListItem>
                <asp:ListItem>Kaustubh</asp:ListItem>
                <asp:ListItem>Shawnnn</asp:ListItem>
            </asp:ListBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 30px" TextMode="MultiLine" Width="148px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
