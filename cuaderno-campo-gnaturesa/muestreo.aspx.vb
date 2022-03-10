Public Class muestreo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then  'Si no es PostBack (Recarga al darle a un boton)

            If Session.Item("logingOk") Is Nothing Then

                Response.Redirect("login.aspx", True)
                Exit Sub

            Else

                If Session.Item("loginOK") = False Or Session.Item("ROL") = 1 Then

                    Response.Redirect("login.aspx", True)
                    Exit Sub

                End If






            End If
        End If

    End Sub

End Class