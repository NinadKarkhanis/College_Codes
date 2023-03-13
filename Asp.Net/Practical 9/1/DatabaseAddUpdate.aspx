<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prac9_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label3" runat="server" Text="mobile no"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label4" runat="server" Text="dob"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="insert" Width="148px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="delete" style="margin-left: 83px" Width="132px" OnClick="Button2_Click1" />
            <asp:Button ID="Button3" runat="server" Text="reset" style="margin-left: 65px" Width="144px" OnClick="Button3_Click1" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                </Columns>
            </asp:GridView>
            <br />
        </div>

    </form>
    
</body>
</html>
