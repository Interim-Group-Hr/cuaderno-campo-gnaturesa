Public Class medicion_muestreo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        CargdarFenologia()
        Dim Fecha As String = Session("Fecha")


        Dim FincaySector As String = Session("Finca") + " - " + Session("Sector")
        Dim FechayArbol As String = Session("Fecha") + " | " + Session("Arbol")
        FincaSector.InnerText = FincaySector
        fechaArbol.InnerText = FechayArbol


        Dim plaga1 As String = Session("Plaga1")
        Dim plaga2 As String = Session("Plaga2")




        If plaga1 = 1 Then

            PulgonSensible.Visible = True
            pulgonOcupado.Visible = True

        ElseIf plaga1 = 2 Then

            EutetranychusFruto.Visible = True
            EutetranychusHoja.Visible = True

        ElseIf plaga1 = 3 Then

            Mosca.Visible = True

        ElseIf plaga1 = 4 Then

            Orquidea.Visible = True

        ElseIf plaga1 = 5 Then

            Planococus.Visible = True

        ElseIf plaga1 = 6 Then

            polilla.Visible = True

        ElseIf plaga1 = 7 Then

            minador.Visible = True

        ElseIf plaga1 = 8 Then

            TetranychusFruto.Visible = True
            TetranychusHoja.Visible = True

        ElseIf plaga1 = 9 Then

            Aonidella.Visible = True

        End If


        If plaga2 = 1 Then

            PulgonSensible.Visible = True
            pulgonOcupado.Visible = True

        ElseIf plaga2 = 2 Then

            EutetranychusFruto.Visible = True
            EutetranychusHoja.Visible = True

        ElseIf plaga2 = 3 Then

            Mosca.Visible = True

        ElseIf plaga2 = 4 Then

            Orquidea.Visible = True

        ElseIf plaga2 = 5 Then

            Planococus.Visible = True

        ElseIf plaga2 = 6 Then

            polilla.Visible = True

        ElseIf plaga2 = 7 Then

            minador.Visible = True

        ElseIf plaga2 = 8 Then

            TetranychusFruto.Visible = True
            TetranychusHoja.Visible = True


        ElseIf plaga2 = 9 Then

            Aonidella.Visible = True

        End If




    End Sub

    Private Sub CargarPulgon()

        Dim plagas As New Plaga
        Dim AnilloEste1 = plagas.ListarValores(1)
        Dim anilloSur2 = plagas.ListarValores(2)
        Dim AnilloOeste3 = plagas.ListarValores(3)
        Dim Norte4 = plagas.ListarValores(4)
        Dim AnilloEste5 = plagas.ListarValores(5)
        Dim AnilloSur6 = plagas.ListarValores(6)
        Dim Norte7 = plagas.ListarValores(7)


        If AnilloEste1.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (AnilloEste1.Rows.Count - 1)
                DropEstePulgonS_1.Items.Add(New ListItem(AnilloEste1.Rows(i)("Nombre"), AnilloEste1.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If anilloSur2.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (anilloSur2.Rows.Count - 1)
                DropSurPulgonS_2.Items.Add(New ListItem(anilloSur2.Rows(i)("Nombre"), anilloSur2.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If AnilloOeste3.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (anilloSur2.Rows.Count - 1)
                DropOestePulgonS_3.Items.Add(New ListItem(AnilloOeste3.Rows(i)("Nombre"), AnilloOeste3.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte4.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (anilloSur2.Rows.Count - 1)
                DropNortePulgonS_4.Items.Add(New ListItem(Norte4.Rows(i)("Nombre"), Norte4.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub CargdarFenologia()

        Dim Plagas As New Plaga
        Dim OrganoNorte74 = Plagas.ListarValores(74)
        Dim OrganoEste71 = Plagas.ListarValores(71)
        Dim OrganoSur72 = Plagas.ListarValores(72)
        Dim OrganoOeste73 = Plagas.ListarValores(73)
        Dim OrganoInterior1 = Plagas.ListarValores(75)
        Dim OrganoInterior2 = Plagas.ListarValores(76)


        If OrganoNorte74.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoNorte74.Rows.Count - 1)
                DropNorteFenologia_74.Items.Add(New ListItem(OrganoNorte74.Rows(i)("Nombre"), OrganoNorte74.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OrganoEste71.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoEste71.Rows.Count - 1)
                DropEsteFenologia_71.Items.Add(New ListItem(OrganoEste71.Rows(i)("Nombre"), OrganoEste71.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OrganoSur72.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoSur72.Rows.Count - 1)
                DropSurFenologia_72.Items.Add(New ListItem(OrganoSur72.Rows(i)("Nombre"), OrganoSur72.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OrganoOeste73.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoOeste73.Rows.Count - 1)
                DropOesteFenologia_73.Items.Add(New ListItem(OrganoOeste73.Rows(i)("Nombre"), OrganoOeste73.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OrganoInterior1.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoInterior1.Rows.Count - 1)
                DropInt1Fenologia_75.Items.Add(New ListItem(OrganoInterior1.Rows(i)("Nombre"), OrganoInterior1.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OrganoInterior2.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OrganoInterior2.Rows.Count - 1)
                DropInt2Fenologia_76.Items.Add(New ListItem(OrganoInterior2.Rows(i)("Nombre"), OrganoInterior2.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub BtnGuardar_Click(sender As Object, e As EventArgs) Handles BtnGuardar.Click

        Dim Guardado As New CdCMuestreo
        Guardado = Session("Muestreo")
        '  Guardado.GuardaMuestreoArbol(Session("IdArbol"), DropNorteFenologia.SelectedIndex, DropNorteFenologia.SelectedValue)

        For Each c As Control In SeccionFenologia.Controls

            If TypeOf c Is DropDownList Then

                Dim nombre() As String = Split(c.ID, "_")
                Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

            End If

        Next

        If PulgonSensible.Visible = True Then

            For Each c As Control In seccionPulgonSensible.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

            For Each c As Control In seccionPulgonOcupado.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next


        End If


        If EutetranychusFruto.Visible = True Then

            For Each c As Control In seccionEtetranychusH.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

            For Each c As Control In SeccionEtetranychusF.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next


        End If

        If Mosca.Visible = True Then

            For Each c As Control In SeccionMoscaB.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If Orquidea.Visible = True Then

            For Each c As Control In SeccionTripOrquedea.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If Planococus.Visible = True Then

            For Each c As Control In SeccionPlanococus.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If polilla.Visible = True Then

            For Each c As Control In SeccionPolilla.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If minador.Visible = True Then

            For Each c As Control In SeccionMinador.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If TetranychusFruto.Visible = True Then

            For Each c As Control In SeccionTetranychusF.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

            For Each c As Control In SeccionTetranychusH.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next

        End If

        If Aonidella.Visible = True Then

            For Each c As Control In SeccionAonidella.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)

                End If
            Next
        End If


    End Sub
End Class