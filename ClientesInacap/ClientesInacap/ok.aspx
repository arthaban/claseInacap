<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ok.aspx.cs" Inherits="ClientesInacap.ok" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row-fluid">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="rut" HeaderText="rut" SortExpression="rut" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" 
                    SortExpression="apellidos" />
                <asp:BoundField DataField="fechaNacimiento" HeaderText="fechaNacimiento" 
                    SortExpression="fechaNacimiento" />
                <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                <asp:BoundField DataField="estadocivil" HeaderText="estadocivil" 
                    SortExpression="estadocivil" />
                <asp:BoundField DataField="correo" HeaderText="correo" 
                    SortExpression="correo" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InacapConnectionString %>" 
            SelectCommand="SELECT [id], [rut], [nombre], [apellidos], [fechaNacimiento], [sexo], [estadocivil], [correo] FROM [Clientes] ORDER BY [id] DESC">
        </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
