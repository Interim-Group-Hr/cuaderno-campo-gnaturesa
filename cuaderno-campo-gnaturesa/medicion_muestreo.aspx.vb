Public Class medicion_muestreo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("IdArbol") = DropDown_NArbol.SelectedValue
        Dim FincaySector As String = Session("Finca") + " - " + Session("Sector")
        Dim FechayArbol As String = Session("Fecha") + " | " + Session("idArbol")
        FincaSector.InnerText = FincaySector
        fechaArbol.InnerText = FechayArbol

        If Not IsPostBack Then


            If Session.Item("loginOk") Is Nothing Then

                Response.Redirect("login.aspx", True)
                Exit Sub

            Else


                If Session.Item("loginOK") = False Then

                    Response.Redirect("login.aspx", True)
                    Exit Sub

                Else

                    CargdarFenologia()
                    Dim Fecha As String = Session("Fecha")

                    Dim Arboles As New Arbol
                    Dim dtArbol = Arboles.Lista(Session("Grupo"), Session("idMuestreo"))

                    If dtArbol.Rows.Count > 0 Then

                        Dim i As Integer
                        For i = 0 To (dtArbol.Rows.Count - 1)
                            DropDown_NArbol.Items.Add(New ListItem(dtArbol.Rows(i)("NombreArbol"), dtArbol.Rows(i)("idArbol")))
                        Next

                    End If


                    Dim plaga1 As String = Session("Plaga1")
                    Dim plaga2 As String = Session("Plaga2")


                    If plaga1 = 1 Then

                        PulgonSensible.Visible = True
                        pulgonOcupado.Visible = True
                        CargarPulgon()


                    ElseIf plaga1 = 2 Then
                        checkNoMuestreo.Visible = True
                        EutetranychusFruto.Visible = True
                        EutetranychusHoja.Visible = True
                        CargarEutetranychus()

                    ElseIf plaga1 = 3 Then

                        Mosca.Visible = True
                        CargarMosca()

                    ElseIf plaga1 = 4 Then

                        Orquidea.Visible = True
                        CargarTripOrquidea()

                    ElseIf plaga1 = 5 Then

                        Planococus.Visible = True
                        CargarPlanococcus()

                    ElseIf plaga1 = 6 Then

                        polilla.Visible = True
                        CargarPolilla()

                    ElseIf plaga1 = 7 Then

                        minador.Visible = True
                        CargarMinador()

                    ElseIf plaga1 = 8 Then
                        checkNoMuestreo.Visible = True
                        TetranychusFruto.Visible = True
                        TetranychusHoja.Visible = True
                        CargarTetranychus()

                    ElseIf plaga1 = 9 Then

                        Aonidella.Visible = True
                        CargarAonidella()

                    ElseIf plaga1 = 10 Then

                        MoscaBlanca2.Visible = True
                        CargarMosca2()

                    End If


                    If plaga2 = 1 Then

                        PulgonSensible.Visible = True
                        pulgonOcupado.Visible = True
                        CargarPulgon()

                    ElseIf plaga2 = 2 Then
                        checkNoMuestreo.Visible = True
                        EutetranychusFruto.Visible = True
                        EutetranychusHoja.Visible = True
                        CargarEutetranychus()

                    ElseIf plaga2 = 3 Then

                        Mosca.Visible = True
                        CargarMosca()

                    ElseIf plaga2 = 4 Then

                        Orquidea.Visible = True
                        CargarTripOrquidea()

                    ElseIf plaga2 = 5 Then

                        Planococus.Visible = True
                        CargarPlanococcus()

                    ElseIf plaga2 = 6 Then

                        polilla.Visible = True
                        CargarPolilla()

                    ElseIf plaga2 = 7 Then

                        minador.Visible = True
                        CargarMinador()

                    ElseIf plaga2 = 8 Then
                        checkNoMuestreo.Visible = True
                        TetranychusFruto.Visible = True
                        TetranychusHoja.Visible = True
                        CargarTetranychus()

                    ElseIf plaga2 = 9 Then

                        Aonidella.Visible = True
                        CargarAonidella()

                    ElseIf plaga2 = 10 Then

                        Moscablanca2.Visible = True
                        CargarMosca2()

                    End If


                End If

            End If

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
        Dim AnilloOeste7 = plagas.ListarValores(7)
        Dim Norte8 = plagas.ListarValores(8)


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

        If AnilloEste5.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (AnilloEste5.Rows.Count - 1)
                DropEstePulgonO_5.Items.Add(New ListItem(AnilloEste5.Rows(i)("Nombre"), AnilloEste5.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If AnilloSur6.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (AnilloSur6.Rows.Count - 1)
                DropSurPulgonO_6.Items.Add(New ListItem(AnilloSur6.Rows(i)("Nombre"), AnilloSur6.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If AnilloOeste7.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (AnilloOeste7.Rows.Count - 1)
                DropOestePulgonO_7.Items.Add(New ListItem(AnilloOeste7.Rows(i)("Nombre"), AnilloOeste7.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte8.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte8.Rows.Count - 1)
                DropNortePulgonO_8.Items.Add(New ListItem(Norte8.Rows(i)("Nombre"), Norte8.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub CargarEutetranychus()
        Dim plagas As New Plaga
        Dim EsteAzar9 = plagas.ListarValores(9)
        Dim SurAzar10 = plagas.ListarValores(10)
        Dim OesteAzar11 = plagas.ListarValores(11)
        Dim NorteAzar12 = plagas.ListarValores(12)
        Dim intAzar113 = plagas.ListarValores(13)
        Dim intAzar214 = plagas.ListarValores(14)
        Dim Este15 = plagas.ListarValores(15)
        Dim Sur16 = plagas.ListarValores(16)
        Dim oeste17 = plagas.ListarValores(17)
        Dim Norte18 = plagas.ListarValores(18)
        Dim Int119 = plagas.ListarValores(19)
        Dim Int220 = plagas.ListarValores(20)

        If EsteAzar9.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (EsteAzar9.Rows.Count - 1)
                DropEsteAzarEtetranychusH_9.Items.Add(New ListItem(EsteAzar9.Rows(i)("Nombre"), EsteAzar9.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If SurAzar10.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (SurAzar10.Rows.Count - 1)
                DropSurAzarEtetranychusH_10.Items.Add(New ListItem(SurAzar10.Rows(i)("Nombre"), SurAzar10.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OesteAzar11.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OesteAzar11.Rows.Count - 1)
                DropOesteAzarEtetranychusH_11.Items.Add(New ListItem(OesteAzar11.Rows(i)("Nombre"), OesteAzar11.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If NorteAzar12.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (NorteAzar12.Rows.Count - 1)
                DropNorteAzarEtetranychusH_12.Items.Add(New ListItem(NorteAzar12.Rows(i)("Nombre"), NorteAzar12.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If intAzar113.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (intAzar113.Rows.Count - 1)
                DropInteriorAzar1EtetranychusH_13.Items.Add(New ListItem(intAzar113.Rows(i)("Nombre"), intAzar113.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If intAzar214.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (intAzar214.Rows.Count - 1)
                DropInteriorAzar2EtetranychusH_14.Items.Add(New ListItem(intAzar214.Rows(i)("Nombre"), intAzar214.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Este15.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este15.Rows.Count - 1)
                DropesteEtetranychusF_15.Items.Add(New ListItem(Este15.Rows(i)("Nombre"), Este15.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur16.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur16.Rows.Count - 1)
                DropSurEtetranychusF_16.Items.Add(New ListItem(Sur16.Rows(i)("Nombre"), Sur16.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If oeste17.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (oeste17.Rows.Count - 1)
                DropOesteEtetranychusF_17.Items.Add(New ListItem(oeste17.Rows(i)("Nombre"), oeste17.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte18.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte18.Rows.Count - 1)
                DropNorteEtetranychusF_18.Items.Add(New ListItem(Norte18.Rows(i)("Nombre"), Norte18.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Int119.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Int119.Rows.Count - 1)
                Dropinterior1EtetranychusF_19.Items.Add(New ListItem(Int119.Rows(i)("Nombre"), Int119.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Int220.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Int220.Rows.Count - 1)
                DropInterior2EtetranychusF_20.Items.Add(New ListItem(Int220.Rows(i)("Nombre"), Int220.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If


    End Sub

    Private Sub CargarMosca()

        Dim plagas As New Plaga
        Dim EsteAzar21 = plagas.ListarValores(21)
        Dim SurAzar22 = plagas.ListarValores(22)
        Dim OesteAzar23 = plagas.ListarValores(23)
        Dim NorteAzar24 = plagas.ListarValores(24)
        Dim IntAzar125 = plagas.ListarValores(25)
        Dim IntAzar226 = plagas.ListarValores(26)

        If EsteAzar21.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (EsteAzar21.Rows.Count - 1)
                DropEsteAzarMoscaB_21.Items.Add(New ListItem(EsteAzar21.Rows(i)("Nombre"), EsteAzar21.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If SurAzar22.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (SurAzar22.Rows.Count - 1)
                DropSurAzarMoscaB_22.Items.Add(New ListItem(SurAzar22.Rows(i)("Nombre"), SurAzar22.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OesteAzar23.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OesteAzar23.Rows.Count - 1)
                DropOesteAzarMoscaB_23.Items.Add(New ListItem(OesteAzar23.Rows(i)("Nombre"), OesteAzar23.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If NorteAzar24.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (NorteAzar24.Rows.Count - 1)
                DropNorteAzarMoscaB_24.Items.Add(New ListItem(NorteAzar24.Rows(i)("Nombre"), NorteAzar24.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If IntAzar125.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (IntAzar125.Rows.Count - 1)
                DropInteriorAzar1MoscaB_25.Items.Add(New ListItem(IntAzar125.Rows(i)("Nombre"), IntAzar125.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If IntAzar226.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (IntAzar226.Rows.Count - 1)
                DropInteriorAzar2MoscaB_26.Items.Add(New ListItem(IntAzar226.Rows(i)("Nombre"), IntAzar226.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub CargarTripOrquidea()

        Dim p As New Plaga
        Dim Este27 = p.ListarValores(27)
        Dim Sur28 = p.ListarValores(28)
        Dim Oeste29 = p.ListarValores(29)
        Dim Norte30 = p.ListarValores(30)

        If Este27.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este27.Rows.Count - 1)
                DropEsteTripOrquedea_27.Items.Add(New ListItem(Este27.Rows(i)("Nombre"), Este27.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur28.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur28.Rows.Count - 1)
                DropSurTripOrquedea_28.Items.Add(New ListItem(Sur28.Rows(i)("Nombre"), Sur28.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste29.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste29.Rows.Count - 1)
                DropOesteTripOrquedea_29.Items.Add(New ListItem(Oeste29.Rows(i)("Nombre"), Oeste29.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte30.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte30.Rows.Count - 1)
                DropNorteTripOrquedea_30.Items.Add(New ListItem(Norte30.Rows(i)("Nombre"), Norte30.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub CargarPlanococcus()

        Dim p As New Plaga
        Dim Este31 = p.ListarValores(31)
        Dim Sur32 = p.ListarValores(32)
        Dim oeste33 = p.ListarValores(33)
        Dim Norte34 = p.ListarValores(34)

        If Este31.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este31.Rows.Count - 1)
                DropEstePlanococus_31.Items.Add(New ListItem(Este31.Rows(i)("Nombre"), Este31.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur32.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur32.Rows.Count - 1)
                DropSurPlanococus_32.Items.Add(New ListItem(Sur32.Rows(i)("Nombre"), Sur32.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If oeste33.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (oeste33.Rows.Count - 1)
                DropOestePlanococus_33.Items.Add(New ListItem(oeste33.Rows(i)("Nombre"), oeste33.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte34.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte34.Rows.Count - 1)
                DropNortePlanococus_34.Items.Add(New ListItem(Norte34.Rows(i)("Nombre"), Norte34.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

    End Sub

    Private Sub CargarPolilla()

        Dim p As New Plaga
        Dim Este35 = p.ListarValores(35)
        Dim Sur36 = p.ListarValores(36)
        Dim Oeste37 = p.ListarValores(37)
        Dim Norte38 = p.ListarValores(38)

        If Este35.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este35.Rows.Count - 1)
                DropEstePolilla_35.Items.Add(New ListItem(Este35.Rows(i)("Nombre"), Este35.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur36.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur36.Rows.Count - 1)
                DropSurPolilla_36.Items.Add(New ListItem(Sur36.Rows(i)("Nombre"), Sur36.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste37.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste37.Rows.Count - 1)
                DropOestePolilla_37.Items.Add(New ListItem(Oeste37.Rows(i)("Nombre"), Oeste37.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte38.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte38.Rows.Count - 1)
                DropNortePolilla_38.Items.Add(New ListItem(Norte38.Rows(i)("Nombre"), Norte38.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If


    End Sub

    Private Sub CargarMinador()

        Dim p As New Plaga
        Dim Este39 = p.ListarValores(39)
        Dim Sur40 = p.ListarValores(40)
        Dim Oeste41 = p.ListarValores(41)
        Dim Norte42 = p.ListarValores(42)

        If Este39.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este39.Rows.Count - 1)
                DropEsteMinador_39.Items.Add(New ListItem(Este39.Rows(i)("Nombre"), Este39.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur40.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur40.Rows.Count - 1)
                DropSurMinador_40.Items.Add(New ListItem(Sur40.Rows(i)("Nombre"), Sur40.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste41.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste41.Rows.Count - 1)
                DropOesteMinador_41.Items.Add(New ListItem(Oeste41.Rows(i)("Nombre"), Oeste41.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte42.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte42.Rows.Count - 1)
                DropNorteMinador_42.Items.Add(New ListItem(Norte42.Rows(i)("Nombre"), Norte42.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If


    End Sub

    Private Sub CargarAonidella()

        Dim p As New Plaga
        Dim Este65 = p.ListarValores(65)
        Dim Sur66 = p.ListarValores(66)
        Dim Oeste67 = p.ListarValores(67)
        Dim Norte68 = p.ListarValores(68)
        Dim Int169 = p.ListarValores(69)
        Dim Int270 = p.ListarValores(70)

        If Este65.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este65.Rows.Count - 1)
                DropEsteAonidella_65.Items.Add(New ListItem(Este65.Rows(i)("Nombre"), Este65.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur66.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur66.Rows.Count - 1)
                DropSurAonidella_66.Items.Add(New ListItem(Sur66.Rows(i)("Nombre"), Sur66.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste67.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste67.Rows.Count - 1)
                DropOesteAonidella_67.Items.Add(New ListItem(Oeste67.Rows(i)("Nombre"), Oeste67.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte68.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte68.Rows.Count - 1)
                DropNorteAonidella_68.Items.Add(New ListItem(Norte68.Rows(i)("Nombre"), Norte68.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Int169.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Int169.Rows.Count - 1)
                DropInterior1Aonidella_69.Items.Add(New ListItem(Int169.Rows(i)("Nombre"), Int169.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Int270.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Int270.Rows.Count - 1)
                DropInterior2Aonidella_70.Items.Add(New ListItem(Int270.Rows(i)("Nombre"), Int270.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If


    End Sub

    Private Sub CargarMosca2()

        Dim p As New Plaga
        Dim Este91 = p.ListarValores(91)
        Dim Sur92 = p.ListarValores(92)
        Dim Oeste93 = p.ListarValores(93)
        Dim Norte94 = p.ListarValores(94)
        Dim Azar95 = p.ListarValores(95)
        Dim Azar96 = p.ListarValores(96)

        Dim Este97 = p.ListarValores(97)
        Dim Sur98 = p.ListarValores(98)
        Dim Oeste99 = p.ListarValores(99)
        Dim Norte100 = p.ListarValores(100)
        Dim Azar101 = p.ListarValores(101)
        Dim Azar102 = p.ListarValores(102)

        Dim Este103 = p.ListarValores(103)
        Dim Sur104 = p.ListarValores(104)
        Dim Oeste105 = p.ListarValores(105)
        Dim Norte106 = p.ListarValores(106)
        Dim Azar107 = p.ListarValores(107)
        Dim Azar108 = p.ListarValores(108)

        Dim Este109 = p.ListarValores(109)
        Dim Sur110 = p.ListarValores(110)
        Dim Oeste111 = p.ListarValores(111)
        Dim Norte112 = p.ListarValores(112)
        Dim Azar113 = p.ListarValores(113)
        Dim Azar114 = p.ListarValores(114)

        If Este91.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este91.Rows.Count - 1)
                DropEsteAdulto_91.Items.Add(New ListItem(Este91.Rows(i)("Nombre"), Este91.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur92.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur92.Rows.Count - 1)
                DropSurAdultos_92.Items.Add(New ListItem(Sur92.Rows(i)("Nombre"), Sur92.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste93.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste93.Rows.Count - 1)
                DropOesteAdultos_93.Items.Add(New ListItem(Oeste93.Rows(i)("Nombre"), Oeste93.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte94.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte94.Rows.Count - 1)
                DropNorteAdultos_94.Items.Add(New ListItem(Norte94.Rows(i)("Nombre"), Norte94.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar95.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar95.Rows.Count - 1)
                DropAdultosInteriorAzar1_95.Items.Add(New ListItem(Azar95.Rows(i)("Nombre"), Azar95.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar96.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar96.Rows.Count - 1)
                DropAdultosInteriorAzar2_96.Items.Add(New ListItem(Azar96.Rows(i)("Nombre"), Azar96.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Este97.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este97.Rows.Count - 1)
                DropEsteLarvas_97.Items.Add(New ListItem(Este97.Rows(i)("Nombre"), Este97.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur98.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur98.Rows.Count - 1)
                DropSurLarvas_98.Items.Add(New ListItem(Sur98.Rows(i)("Nombre"), Sur98.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste99.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste99.Rows.Count - 1)
                DropOesteLarvas_99.Items.Add(New ListItem(Oeste99.Rows(i)("Nombre"), Oeste99.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte100.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte100.Rows.Count - 1)
                DropNorteLarvas_100.Items.Add(New ListItem(Norte100.Rows(i)("Nombre"), Norte100.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar101.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar101.Rows.Count - 1)
                DropL1L2InteriorAzar1_101.Items.Add(New ListItem(Azar101.Rows(i)("Nombre"), Azar101.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar102.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar102.Rows.Count - 1)
                DropL1L2InteriorAzar2_102.Items.Add(New ListItem(Azar102.Rows(i)("Nombre"), Azar102.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Este103.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este103.Rows.Count - 1)
                DropEsteLarvas2_103.Items.Add(New ListItem(Este103.Rows(i)("Nombre"), Este103.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur104.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur104.Rows.Count - 1)
                DropSurLarvas2_104.Items.Add(New ListItem(Sur104.Rows(i)("Nombre"), Sur104.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste105.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste105.Rows.Count - 1)
                DropOesteLarvas2_105.Items.Add(New ListItem(Oeste105.Rows(i)("Nombre"), Oeste105.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte106.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte106.Rows.Count - 1)
                DropNorteLarvas2_106.Items.Add(New ListItem(Norte106.Rows(i)("Nombre"), Norte106.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar107.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar101.Rows.Count - 1)
                DropL3L4InteriorAzar1_107.Items.Add(New ListItem(Azar107.Rows(i)("Nombre"), Azar107.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar108.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar102.Rows.Count - 1)
                DropL3L4InteriorAzar2_108.Items.Add(New ListItem(Azar108.Rows(i)("Nombre"), Azar108.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Este109.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Este109.Rows.Count - 1)
                DropEsteHuevos_109.Items.Add(New ListItem(Este109.Rows(i)("Nombre"), Este109.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur110.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur110.Rows.Count - 1)
                DropSurHuevos_110.Items.Add(New ListItem(Sur110.Rows(i)("Nombre"), Sur110.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste111.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste111.Rows.Count - 1)
                DropOesteHuevos_111.Items.Add(New ListItem(Oeste111.Rows(i)("Nombre"), Oeste111.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte112.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte112.Rows.Count - 1)
                DropNorteHuevo_112.Items.Add(New ListItem(Norte112.Rows(i)("Nombre"), Norte112.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar113.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar113.Rows.Count - 1)
                DropHuevosInteriorAzar1_113.Items.Add(New ListItem(Azar113.Rows(i)("Nombre"), Azar113.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar114.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar114.Rows.Count - 1)
                DropHuevosInteriorAzar2_114.Items.Add(New ListItem(Azar114.Rows(i)("Nombre"), Azar114.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If




    End Sub

    Private Sub CargarTetranychus()

        Dim p As New Plaga
        Dim este = p.ListarValores(43)
        Dim EsteSinto = p.ListarValores(44)
        Dim EsteAzar = p.ListarValores(45)
        Dim Sur = p.ListarValores(46)
        Dim SurSinto = p.ListarValores(47)
        Dim SurAzar = p.ListarValores(48)
        Dim Oeste = p.ListarValores(49)
        Dim OesteSinto = p.ListarValores(50)
        Dim OesteAzar = p.ListarValores(51)
        Dim Norte = p.ListarValores(52)
        Dim NorteSinto = p.ListarValores(53)
        Dim NorteAzar = p.ListarValores(54)
        Dim Sintomatico1 = p.ListarValores(55)
        Dim Azar1 = p.ListarValores(56)
        Dim Sintomatico2 = p.ListarValores(57)
        Dim Azar2 = p.ListarValores(58)
        Dim EsteFruto = p.ListarValores(59)
        Dim SurFruto = p.ListarValores(60)
        Dim OesteFruto = p.ListarValores(61)
        Dim NorteFruto = p.ListarValores(62)
        Dim Interior1Fruto = p.ListarValores(63)
        Dim Interior2fruto = p.ListarValores(64)


        If este.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (este.Rows.Count - 1)
                DropEsteTetranychusH_43.Items.Add(New ListItem(este.Rows(i)("Nombre"), este.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If EsteSinto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (EsteSinto.Rows.Count - 1)
                DropEsteSTetranychusH_44.Items.Add(New ListItem(EsteSinto.Rows(i)("Nombre"), EsteSinto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If EsteAzar.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (EsteAzar.Rows.Count - 1)
                DropEsteAzarTetranychusH_45.Items.Add(New ListItem(EsteAzar.Rows(i)("Nombre"), EsteAzar.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sur.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sur.Rows.Count - 1)
                DropSurTetranychusH_46.Items.Add(New ListItem(Sur.Rows(i)("Nombre"), Sur.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If SurSinto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (SurSinto.Rows.Count - 1)
                DropSurSTetranychusH_47.Items.Add(New ListItem(SurSinto.Rows(i)("Nombre"), SurSinto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If SurAzar.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (SurAzar.Rows.Count - 1)
                DropSurAzarTetranychusH_48.Items.Add(New ListItem(SurAzar.Rows(i)("Nombre"), SurAzar.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Oeste.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Oeste.Rows.Count - 1)
                DropOesteTetranychusH_49.Items.Add(New ListItem(Oeste.Rows(i)("Nombre"), Oeste.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OesteSinto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OesteSinto.Rows.Count - 1)
                DropOesteSTetranychusH_50.Items.Add(New ListItem(OesteSinto.Rows(i)("Nombre"), OesteSinto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OesteAzar.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OesteAzar.Rows.Count - 1)
                DropOesteAzarTetranychusH_51.Items.Add(New ListItem(OesteAzar.Rows(i)("Nombre"), OesteAzar.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Norte.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Norte.Rows.Count - 1)
                DropNorteTetranychusH_52.Items.Add(New ListItem(Norte.Rows(i)("Nombre"), Norte.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If NorteSinto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (NorteSinto.Rows.Count - 1)
                DropNorteSTetranychusH_53.Items.Add(New ListItem(NorteSinto.Rows(i)("Nombre"), NorteSinto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If NorteAzar.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (NorteAzar.Rows.Count - 1)
                DropnorteAzarTetranychusH_54.Items.Add(New ListItem(NorteAzar.Rows(i)("Nombre"), NorteAzar.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sintomatico1.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sintomatico1.Rows.Count - 1)
                DropSintomatica1TetranychusH_55.Items.Add(New ListItem(Sintomatico1.Rows(i)("Nombre"), Sintomatico1.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar1.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar1.Rows.Count - 1)
                DropAzar1TetranychusH_56.Items.Add(New ListItem(Azar1.Rows(i)("Nombre"), Azar1.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Sintomatico2.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Sintomatico2.Rows.Count - 1)
                DropSintomatica2TetranychusH_57.Items.Add(New ListItem(Sintomatico2.Rows(i)("Nombre"), Sintomatico2.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Azar2.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Azar2.Rows.Count - 1)
                DropAzar2TetranychusH_58.Items.Add(New ListItem(Azar2.Rows(i)("Nombre"), Azar2.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If EsteFruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (EsteFruto.Rows.Count - 1)
                DropesteTetranychusF_59.Items.Add(New ListItem(EsteFruto.Rows(i)("Nombre"), EsteFruto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If SurFruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (SurFruto.Rows.Count - 1)
                DropSurTetranychusF_60.Items.Add(New ListItem(SurFruto.Rows(i)("Nombre"), SurFruto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If OesteFruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (OesteFruto.Rows.Count - 1)
                DropOesteTetranychusF_61.Items.Add(New ListItem(OesteFruto.Rows(i)("Nombre"), OesteFruto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If NorteFruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (NorteFruto.Rows.Count - 1)
                DropNorteTetranychusF_62.Items.Add(New ListItem(NorteFruto.Rows(i)("Nombre"), NorteFruto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Interior1Fruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Interior1Fruto.Rows.Count - 1)
                DropInterior1TetranychusF_63.Items.Add(New ListItem(Interior1Fruto.Rows(i)("Nombre"), Interior1Fruto.Rows(i)("idPlagaOrganoOrientacionValor")))
            Next

        End If

        If Interior2fruto.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (Interior2fruto.Rows.Count - 1)
                DropInterior2TetranychusF_64.Items.Add(New ListItem(Interior2fruto.Rows(i)("Nombre"), Interior2fruto.Rows(i)("idPlagaOrganoOrientacionValor")))
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


    Private Sub guardarArbol_Click(sender As Object, e As EventArgs) Handles guardarArbol.Click

        Dim Control As Integer = 0
        Dim Guardado As New CdCMuestreo
        Guardado = Session("Muestreo")
        '  Guardado.GuardaMuestreoArbol(Session("IdArbol"), DropNorteFenologia.SelectedIndex, DropNorteFenologia.SelectedValue)
        Guardado.GuardaComentarioMuestreoArbol(Session("idMuestreo"), comentarioArbol.Value)

        For Each c As Control In SeccionFenologia.Controls

            If TypeOf c Is DropDownList Then

                Dim nombre() As String = Split(c.ID, "_")
                Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                If miCombo.Text = "" Then
                    Control = 1
                    Exit For
                Else
                    Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                End If

            End If

        Next

        If PulgonSensible.Visible = True Then


            For Each c As Control In seccionPulgonSensible.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For

                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If

                End If
            Next

            For Each c As Control In seccionPulgonOcupado.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next


        End If

        If EutetranychusFruto.Visible = True Then

            For Each c As Control In seccionEtetranychusH.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            Control = 1
                            Exit For
                        Else
                            Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                        End If

                    End If
                Next


            For Each c As Control In SeccionEtetranychusF.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next



        End If

        If Mosca.Visible = True Then

            For Each c As Control In SeccionMoscaB.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        If Orquidea.Visible = True Then

            For Each c As Control In SeccionTripOrquedea.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        If Planococus.Visible = True Then

            For Each c As Control In SeccionPlanococus.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        If polilla.Visible = True Then

            For Each c As Control In SeccionPolilla.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        If minador.Visible = True Then

            For Each c As Control In SeccionMinador.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        If TetranychusFruto.Visible = True Then



            For Each c As Control In SeccionTetranychusF.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

            For Each c As Control In SeccionTetranychusH.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue())
                    End If
                End If
            Next

        End If

        If Aonidella.Visible = True Then

            For Each c As Control In SeccionAonidella.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next
        End If

        If Moscablanca2.Visible = True Then

            For Each c As Control In SeccionMoscaBlanca2.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next


            For Each c As Control In SeccionMoscaBlanca2_1.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

            For Each c As Control In SeccionMoscaBlanca2_2.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

            For Each c As Control In SeccionMoscaBlanca2_3.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        Control = 1
                        Exit For
                    Else
                        Guardado.GuardaMuestreoArbol(Session("IdArbol"), nombre(1), miCombo.SelectedValue)
                    End If
                End If
            Next

        End If

        'Cargar Arboles dicriminando los que ya se han elegido
        'Dim Arboles As New Arbol
        'Dim dtArbol = Arboles.Lista(Session("GrupoArbol"), Session("idMuestreo"))

        'If dtArbol.Rows.Count > 0 Then

        '    Dim i As Integer
        '    For i = 0 To (dtArbol.Rows.Count - 1)
        '        DropDown_NArbol.Items.Add(New ListItem(dtArbol.Rows(i)("NombreArbol"), dtArbol.Rows(i)("idArbol")))
        '    Next

        'End If
        If Control = 0 Then
            Response.Redirect("medicion_muestreo.aspx")
        Else
            PanelError.Visible = True
        End If



    End Sub

    Private Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click

        Response.Redirect("GuardadoFinal.aspx")

    End Sub

    Private Sub DropDown_NArbol_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDown_NArbol.SelectedIndexChanged

        Session("IdArbol") = DropDown_NArbol.SelectedValue

    End Sub

    Private Sub CheckFruto_CheckedChanged(sender As Object, e As EventArgs) Handles CheckFruto.CheckedChanged

        Dim Control As Integer = 0
        Dim Guardado As New CdCMuestreo
        Guardado = Session("Muestreo")


        If EutetranychusFruto.Visible = True Then

            If CheckFruto.Checked = True And EutetranychusFruto.Visible = True Then

                For Each c As Control In SeccionEtetranychusF.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False
                        Else
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False


                        End If

                    End If
                Next


            Else

                For Each c As Control In SeccionEtetranychusF.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True
                        Else
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True

                        End If

                    End If
                Next



            End If


        End If


        If SeccionTetranychusF.Visible = True Then

            If CheckFruto.Checked = True And SeccionTetranychusF.Visible = True Then

                For Each c As Control In SeccionTetranychusF.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False
                        Else
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False


                        End If

                    End If
                Next

            Else

                For Each c As Control In SeccionTetranychusF.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True
                        Else
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True

                        End If

                    End If
                Next

            End If

        End If


    End Sub

    Private Sub CheckHoja_CheckedChanged(sender As Object, e As EventArgs) Handles CheckHoja.CheckedChanged
        Dim Control As Integer = 0
        Dim Guardado As New CdCMuestreo
        Guardado = Session("Muestreo")



        If EutetranychusFruto.Visible = True Then

            If CheckHoja.Checked = True And EutetranychusFruto.Visible = True Then

                For Each c As Control In seccionEtetranychusH.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False
                        Else
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False


                        End If

                    End If
                Next


            Else

                For Each c As Control In seccionEtetranychusH.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True
                        Else
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True

                        End If

                    End If
                Next



            End If


        End If


        If TetranychusFruto.Visible = True Then

            If CheckHoja.Checked = True And TetranychusFruto.Visible = True Then

                For Each c As Control In SeccionTetranychusH.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False
                        Else
                            miCombo.SelectedIndex = 1
                            miCombo.Enabled = False


                        End If

                    End If
                Next

            Else

                For Each c As Control In SeccionTetranychusH.Controls

                    If TypeOf c Is DropDownList Then

                        Dim nombre() As String = Split(c.ID, "_")
                        Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                        If miCombo.Text = "" Then
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True
                        Else
                            miCombo.SelectedIndex = 0
                            miCombo.Enabled = True

                        End If

                    End If
                Next

            End If

        End If



    End Sub

    Private Sub CheckFeno_CheckedChanged(sender As Object, e As EventArgs) Handles CheckfireFeno.CheckedChanged

        Dim Control As Integer = 0
        Dim Guardado As New CdCMuestreo
        Guardado = Session("Muestreo")

        If CheckfireFeno.Checked = True Then

            For Each c As Control In SeccionFenologia.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        miCombo.SelectedIndex = 1
                        miCombo.Enabled = False
                    Else
                        miCombo.SelectedIndex = 1
                        miCombo.Enabled = False
                    End If

                End If

            Next

        Else

            For Each c As Control In SeccionFenologia.Controls

                If TypeOf c Is DropDownList Then

                    Dim nombre() As String = Split(c.ID, "_")
                    Dim miCombo As DropDownList = DirectCast(c, DropDownList)
                    If miCombo.Text = "" Then
                        miCombo.SelectedIndex = 0
                        miCombo.Enabled = True
                    Else
                        miCombo.SelectedIndex = 0
                        miCombo.Enabled = True
                    End If

                End If
            Next


        End If


    End Sub


End Class