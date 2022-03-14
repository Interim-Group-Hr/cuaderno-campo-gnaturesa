<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="cuaderno_campo_gnaturesa.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://kit.fontawesome.com/19e9412b41.js" crossorigin="anonymous"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" id="Estilo" rel="stylesheet" />
    <link href="css/bootstrap-icons.css" rel="stylesheet" />
     <style>
        html,
        body {
            height: 100%;
            background-image: url(images/bg1.jpg);
            * background-position: top;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
            background-color:#fff;
            border-radius:10px;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="user"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .logo {
            margin: auto;
            width: 80px;
            text-align: center;
        }

        .logo_group {
            height: 70px;
        }
        .entrar {
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-top: 0px;
            border: 1px solid var(--ocre);
        }
        .pass {
            border-radius: 0;
            margin-bottom:0px !important;
        }
        .titulo{
            color:#0C3A44;
        }
    </style>
    <title>Login</title>
</head>
<body>
    <main class="form-signin">
        <form id="form_login" runat="server">
            <div class="form-signin-heading">
                 <input id="Device" type="hidden" runat="server" value="" />
                <center>
                    <asp:Image ID="ImageLogo" CssClass="logo_group" runat="server" ImageUrl="~/images/grupo_naturesa.png" />
                    <br /><br />
                    <h2 class="titulo"></h2>
                </center>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtUsuario" runat="server" type="user" class="form-control" placeholder="Usuario"></asp:TextBox>
                <label for="floatingInput">Usuario</label>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Contraseña"></asp:TextBox>
                <label for="floatingPassword">Contraseña</label>
            </div>
            <asp:Button ID="btnEntrar" runat="server" Text="Entrar" class="w-100 btn btn-lg btn-primary" />
            <asp:Label ID="Label_errores" runat="server" CssClass="loslabelserror"></asp:Label>
        </form>
    </main>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>