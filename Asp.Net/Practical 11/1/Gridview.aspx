<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication14.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" SortExpression="Emp_Name" />
                    <asp:BoundField DataField="Emp_Sal" HeaderText="Emp_Sal" SortExpression="Emp_Sal" />
                    <asp:BoundField DataField="Emp_Gen" HeaderText="Emp_Gen" SortExpression="Emp_Gen" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Emp_Name], [Emp_Sal], [Emp_Gen]) VALUES (@Emp_Name, @Emp_Sal, @Emp_Gen)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Emp_Name] = @Emp_Name, [Emp_Sal] = @Emp_Sal, [Emp_Gen] = @Emp_Gen WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Emp_Name" Type="String" />
                    <asp:Parameter Name="Emp_Sal" Type="Int32" />
                    <asp:Parameter Name="Emp_Gen" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Emp_Name" Type="String" />
                    <asp:Parameter Name="Emp_Sal" Type="Int32" />
                    <asp:Parameter Name="Emp_Gen" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
