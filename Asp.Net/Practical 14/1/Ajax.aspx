<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac14_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Times of India"></asp:Label>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Breaking News"></asp:Label>
                    &nbsp;&nbsp;
                     
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                     
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    <br />
<br />
                    <asp:UpdateProgress runat="server">

                        <ProgressTEmplate>
                            Loading ....
                        </ProgressTEmplate>
                    </asp:UpdateProgress>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

