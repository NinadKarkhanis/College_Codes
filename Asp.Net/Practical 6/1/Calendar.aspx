<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac6_1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <p>Calendar 1</p>
            <p>Starting Date:</p>
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>
            <p>Calendar 2</p>
            <p>Ending Date:</p>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            <br />
            <br />
            <p>Differnce Between 2 dates</p>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
        <br />
            <br />
        <p>Selected Date On Calendar 1</p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
        <p>Current Time and Date</p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
    </form>
</body>
</html>
