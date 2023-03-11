<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Prac13_1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1><asp:Label ID="Label1" runat="server" Text="Favourite Sports Player"></asp:Label></h1>
            <br />
           
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Ronaldo</asp:ListItem>
                <asp:ListItem>Messi</asp:ListItem>
                <asp:ListItem>Virat Kholi</asp:ListItem>
                <asp:ListItem>Mabappe</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
            <br />
            
        </div>
    </form>
</body>
</html>
