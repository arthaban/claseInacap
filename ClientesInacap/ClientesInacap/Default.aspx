<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientesInacap.Default" %>

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
        <div>
            <p>
                Rut:
                <br />
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </p>
            <p>
                Nombres:
                <br />
                <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellidos:
                <br />
                <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
            </p>
            <p>
                Fecha Nacimiento:
                <br />
                <asp:TextBox ID="txtFNac" runat="server"></asp:TextBox>
            </p>
            <p>
                Sexo:<br />
                <asp:RadioButton ID="rbMasc" runat="server" Text="Masculino" /> 
                <asp:RadioButton ID="rbFem" runat="server" Text="Femenino" />
                <br />
            </p>
            <p>
                Estado Civil:
                <br />
                <asp:DropDownList ID="cboEstado" runat="server">
                    <asp:ListItem Value="1">Soltero(a)</asp:ListItem>
                    <asp:ListItem Value="2">Casado</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                Correo electronico:
                <br />
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
                <br />
            </p>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
