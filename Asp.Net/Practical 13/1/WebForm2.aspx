<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Prac13_1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            ,<h1><asp:Label ID="Label1" runat="server" Text="Favourite Book"></asp:Label></h1>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>lord Of Rings</asp:ListItem>
                <asp:ListItem>Dragon Ball</asp:ListItem>
                <asp:ListItem>Chainsaw Man</asp:ListItem>
                <asp:ListItem>Spider-Man</asp:ListItem>
            </asp:DropDownList>
            <br />
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
            
        </div>
    </form>
</body>
</html>
