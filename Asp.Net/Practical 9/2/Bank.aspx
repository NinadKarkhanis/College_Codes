<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac9_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            Bank<asp:TextBox ID="bank" runat="server"></asp:TextBox>
        </div>
        <div>
            Customer Name<asp:TextBox ID="customer" runat="server"></asp:TextBox>
        </div>
        <div>
            Account No<asp:TextBox ID="accno" runat="server"></asp:TextBox>
        </div>
         <div>
            Branch Name<asp:TextBox ID="branch" runat="server"></asp:TextBox>
        </div>
         <div>
            City<asp:TextBox ID="city" runat="server"></asp:TextBox>
        </div>
        <div>
            State<asp:TextBox ID="state" runat="server"></asp:TextBox>
        </div>
         <div>
            Zip Code<asp:TextBox ID="zip" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /> 
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
         <div>
            Enter Acc No<asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
        </div>
       <div>
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />

       </div>
         <div>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
