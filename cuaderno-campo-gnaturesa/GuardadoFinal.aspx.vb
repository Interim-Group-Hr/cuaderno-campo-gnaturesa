Public Class GuardadoFinal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Cargar DataTable de los comentarios y el numero del arbol


    End Sub

    Private Sub BtnGuardar_Click(sender As Object, e As EventArgs) Handles BtnGuardar.Click

        Dim muestreo As New CdCMuestreo(Session("idMuestreo"))

        muestreo.observaciones = comentarioMuestreoFinal.Value
        muestreo.Guardar()
        Response.Redirect("crear_muestreo.aspx")

    End Sub
End Class