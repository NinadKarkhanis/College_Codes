<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac10_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><form id="form1" runat="server">
         <div>
            <asp:Label ID="Label1" runat="server" Text="Product"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" AutoPostBack="True">
                <asp:ListItem>Select product</asp:ListItem>
                <asp:ListItem>apple</asp:ListItem>
                <asp:ListItem>banana</asp:ListItem>
                <asp:ListItem>orange</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
     <div>
       
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate"   PostBackUrl="~/WebForm2.aspx" />
         <br />
         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
       
        </div>
    </form>
</body>
</html>
