Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Private Sub btnEntrar_Click(sender As Object, e As EventArgs) Handles btnEntrar.Click

        Dim inyeccion As Boolean = False
        Dim IP As String
        Dim UserAgent As String
        Dim DeviceInfo As String

        If Me.txtUsuario.Text <> String.Empty AndAlso Me.txtPassword.Text <> String.Empty Then

            'comprobar si hay caracteres de inyección sql en el usuario
            inyeccion = comprueba_inyeccion(Me.txtUsuario.Text)

            If inyeccion = False Then

                'comprobar si hay caracteres de inyección sql en el password
                inyeccion = comprueba_inyeccion(Me.txtPassword.Text)

                If inyeccion = False Then

                    Dim objGNaturesa As New GNaturesaDB

                    Dim intIdUsuario As Integer = objGNaturesa.Comprobar(Me.txtUsuario.Text.ToUpper, Me.txtPassword.Text)
                    Dim rol As Integer = objGNaturesa.Rol(intIdUsuario)

                    'Si se ejecuta correctamente
                    If objGNaturesa.Respuesta = 1 Then

                        If intIdUsuario = -1 Then

                            Me.Label_errores.Text = "Usuario o contraseña incorrecta"
                            Session("logueado") = False
                            Exit Sub

                        Else
                            Session("loginOk") = True
                            Session("Passok") = Me.txtPassword
                            Session("IdUser") = intIdUsuario
                            Session("Rol") = rol

                        End If

                        'Dependiendo del rol del usuario
                        Select Case objGNaturesa.Rol(intIdUsuario)

                            Case 0 'ROL: CALIBRAR 

                                IP = Request.ServerVariables("REMOTE_ADDR")
                                UserAgent = Request.ServerVariables("HTTP_USER_AGENT")
                                DeviceInfo = Device.Value


                                Response.Redirect("medicion.aspx", True)

                            Case 1 'ROL: GESTION                                        
                                IP = Request.ServerVariables("REMOTE_ADDR")
                                UserAgent = Request.ServerVariables("HTTP_USER_AGENT")
                                DeviceInfo = Device.Value


                                Response.Redirect("muestreo.aspx", True)

                        End Select

                        'IP = Request.ServerVariables("REMOTE_ADDR")
                        'UserAgent = Request.ServerVariables("HTTP_USER_AGENT")
                        'DeviceInfo = Device.Value

                        'objGNaturesa.Log(Session("IdUser"), IP, UserAgent, DeviceInfo)
                        'Response.Redirect("medicion.aspx", True)
                    Else

                        Me.Label_errores.Text = "Usuario o contraseña incorrecta"
                        Session("logueado") = False
                        Exit Sub

                    End If

                Else

                    Me.Label_errores.Text = "La contraseña contiene caracteres no permitidos"

                End If

            Else

                Me.Label_errores.Text = "El usuario contiene caracteres no permitidos"

            End If

        Else

            If Me.txtUsuario.Text = String.Empty Then

                Me.Label_errores.Text = "El usuario no puede estar vacío"

            Else

                Me.Label_errores.Text = "La contraseña no puede estar vacía"

            End If

        End If


    End Sub

    Function comprueba_inyeccion(ByVal txtuser As String) As Boolean

        'función para detectar caracteres no permitidos
        Dim retorna As Boolean = False
        Dim i As Integer
        Dim C As Char

        For i = 1 To Len(txtuser)
            C = Mid(txtuser, i, 1)
            If C = "'" OrElse C = ";" OrElse C = "=" Then
                retorna = True
                Exit For
            End If
        Next
    End Function

End Class