Public Class medicion_muestreo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        fecha.InnerText = Session("Fecha")
        Finca.InnerText = Session("Finca")
        Sectores.InnerText = Session("Sector")



        Dim plaga1 As String = Session("Plaga1")
        Dim plaga2 As String = Session("Plaga2")

        If plaga1 = 1 Or plaga2 = 1 Then

            PulgonSensible.Visible = True
            pulgonOcupado.Visible = True

        ElseIf plaga1 = 2 Or plaga2 = 2 Then

            EutetranychusFruto.Visible = True
            EutetranychusHoja.Visible = True

        ElseIf plaga1 = 3 Or plaga2 = 3 Then

            Mosca.Visible = True

        ElseIf plaga1 = 4 Or plaga2 = 4 Then

            Orquidea.Visible = True

        ElseIf plaga1 = 5 Or plaga2 = 5 Then

            Planococus.Visible = True

        ElseIf plaga1 = 6 Or plaga2 = 6 Then

            polilla.Visible = True

        ElseIf plaga1 = 7 Or plaga2 = 7 Then

            minador.Visible = True

        ElseIf plaga1 = 8 Or plaga2 = 8 Then

            TetranychusFruto.Visible = True
            TetranychusHoja.Visible = True


        ElseIf plaga1 = 9 Or plaga2 = 9 Then

            Aonidella.Visible = True

        End If

    End Sub

End Class