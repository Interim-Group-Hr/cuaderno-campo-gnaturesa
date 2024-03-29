﻿Imports System.Data.SqlClient
Imports System.Web.Services
Public Class muestreo
    Inherits System.Web.UI.Page

    Private mlngResp As Long
    Private mlngRespOf As Long
    Private mstrMsgError As String = String.Empty
    Dim dtLineas As New DataTable
    Dim Obj As New GNaturesaDB
    Dim txtconexion As String = "server=172.16.1.17;database=GNaturesa;uid=UsuarioGenerico;pwd=InterimGr0$;" 'ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
    Private cnBD As New SqlConnection



#Region "Métodos Privados"

    Private Function ConexionAbrirBD(ByVal pStrCon As String) As SqlConnection

        If cnBD.State = ConnectionState.Closed Then

            cnBD.ConnectionString = pStrCon
            cnBD.Open()

        End If

        Return cnBD

    End Function


    Private Sub ConexionCerrarBD()

        If cnBD.State = ConnectionState.Open Then

            cnBD.Close()

        End If

    End Sub

#End Region

#Region "Constructores"

    Public Sub New()

        mlngResp = 0
        mstrMsgError = String.Empty

    End Sub

#End Region

#Region "PropiedadesPúblicas"

    Public ReadOnly Property RespuestaOf As Long

        Get

            RespuestaOf = mlngRespOf

        End Get

    End Property

    Public ReadOnly Property Respuesta As Long

        Get

            Respuesta = mlngResp

        End Get

    End Property



    Public ReadOnly Property MsgError As String

        Get

            MsgError = mstrMsgError

        End Get

    End Property

#End Region


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then  'Si no es PostBack (Recarga al darle a un boton)

            If Session.Item("loginOk") Is Nothing Then

                Response.Redirect("login.aspx", True)
                Exit Sub

            Else


                If Session.Item("loginOK") = False Then

                    Response.Redirect("login.aspx", True)
                    Exit Sub

                Else



                    Dim BD As New GNaturesaDB
                    Dim Empresa As New EmpresaNaturesa
                    Dim Plagas As New Plaga
                    Dim dtEmpresa = Empresa.Lista(Session("TipoRol"))
                    Dim dtPlagas = Plagas.Lista(False)
                    Dim FechaString As String

                    FechaString = Now.ToShortDateString

                    TextBox_fecha.Text = FechaString



                    'Cargar DropDownList de Empresas
                    If dtEmpresa.Rows.Count > 0 Then

                        Dim i As Integer
                        For i = 0 To (dtEmpresa.Rows.Count - 1)
                            DropDown_empresa.Items.Add(New ListItem(dtEmpresa.Rows(i)("NombreEmpresa"), dtEmpresa.Rows(i)("idEmpresa")))
                        Next

                    End If

                    'Cargar DropDownList Plagas 1
                    If dtPlagas.Rows.Count > 0 Then
                        Dim i As Integer
                        For i = 0 To (dtPlagas.Rows.Count - 1)
                            DropDown_Plaga.Items.Add(New ListItem(dtPlagas.Rows(i)("Nombre"), dtPlagas.Rows(i)("idPlaga")))
                        Next
                    End If

                    'Precargar DropDownList Plaga 2

                    If dtPlagas.Rows.Count > 0 Then
                        Dim i As Integer
                        For i = 0 To (dtPlagas.Rows.Count - 1)
                            DropDown_Plaga2.Items.Add(New ListItem(dtPlagas.Rows(i)("Nombre"), dtPlagas.Rows(i)("idPlaga")))
                        Next
                    End If

                End If


            End If
        End If

    End Sub

    Private Sub DropDown_empresa_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDown_empresa.SelectedIndexChanged

        Dim Finc As New Finca

        DropDown_Finca.Items.Clear()
        DropDown_Sector.Items.Clear()
        Dim dtFincas = Finc.Lista(DropDown_empresa.SelectedValue)
        DropDown_Finca.Items.Insert(0, "--- Selecciona la finca ---")
        DropDown_Sector.Items.Insert(0, "--- Selecciona el sector ---")

        If dtFincas.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (dtFincas.Rows.Count - 1)
                DropDown_Finca.Items.Add(New ListItem(dtFincas.Rows(i)("Finca"), dtFincas.Rows(i)("idFinca")))
            Next

        End If

    End Sub



    Private Sub DropDown_Finca_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDown_Finca.SelectedIndexChanged

        Dim Sec As New Sector
        DropDown_Sector.Items.Clear()
        Dim dtSector = Sec.Lista(DropDown_Finca.SelectedValue)
        DropDown_Sector.Items.Insert(0, "--- Selecciona el sector ---")

        If dtSector.Rows.Count > 0 Then
            Dim i As Integer
            For i = 0 To (dtSector.Rows.Count - 1)
                DropDown_Sector.Items.Add(New ListItem(dtSector.Rows(i)("Parcela"), dtSector.Rows(i)("IdParcela")))
            Next
        End If

    End Sub

    Private Sub btnAddPlaga_Click(sender As Object, e As EventArgs) Handles btnAddPlaga.Click
        DropPlaga2.Visible = True
        btnAddPlaga.Visible = False
        btnDelPlaga.Visible = True

    End Sub

    Private Sub btnDelPlaga_Click(sender As Object, e As EventArgs) Handles btnDelPlaga.Click

        DropPlaga2.Visible = False
        DropDown_Plaga2.SelectedValue = 0
        btnAddPlaga.Visible = True
        btnDelPlaga.Visible = False

    End Sub



    Private Sub botonAceptar_Click(sender As Object, e As EventArgs) Handles botonAceptar.Click

        Dim msnError As String

        If DropDown_empresa.SelectedIndex = 0 Then
            msnError = "Por favor, seleccione una Empresa"
            Errormsn.Text = msnError
            Errormsn.Visible = True

        ElseIf DropDown_Finca.SelectedIndex = 0 Then
            msnError = "Por favor, selecione una Finca"
            Errormsn.Text = msnError
            Errormsn.Visible = True

        ElseIf DropDown_Sector.SelectedIndex = 0 Then
            msnError = "Por favor, seleccione un Sector"
            Errormsn.Text = msnError
            Errormsn.Visible = True

        ElseIf TextBox_fecha.Text = "" Then
            msnError = "Por favor, indique la fecha del muestreo"
            Errormsn.Text = msnError
            Errormsn.Visible = True

        ElseIf Drop_GruposArbol.SelectedIndex = 0 Then
            msnError = "Por favor, selecione grupo de arboles"
            Errormsn.Text = msnError
            Errormsn.Visible = True

        ElseIf DropDown_Plaga.SelectedIndex = 0 Then
            msnError = "Por favor, seleccione una plga"
            Errormsn.Text = msnError
            Errormsn.Visible = True


        Else

            'Guardar valores definidos por el usuario en variables de sesion para utilizarlos posteriormente 
            Session("Empresa") = DropDown_empresa.SelectedItem.Text
            Session("Finca") = DropDown_Finca.SelectedItem.Text
            Session("Sector") = DropDown_Sector.SelectedItem.Text
            Session("Grupo") = Drop_GruposArbol.SelectedValue
            Session("Plaga1") = DropDown_Plaga.SelectedValue
            Session("Plaga2") = DropDown_Plaga2.SelectedValue
            Session("Fecha") = TextBox_fecha.Text


            Dim miMuestreo As New CdCMuestreo

            'Cargar los valores para su posterior guardado
            miMuestreo.Empresa = DropDown_empresa.SelectedValue
            miMuestreo.Finca = DropDown_Finca.SelectedValue
            miMuestreo.Sector = DropDown_Sector.SelectedValue
            miMuestreo.Grupo = Drop_GruposArbol.SelectedItem.Text
            miMuestreo.Fecha = Convert.ToDateTime(TextBox_fecha.Text)
            miMuestreo.AddPlaga(DropDown_Plaga.SelectedValue)

            If DropDown_Plaga2.SelectedValue > 0 Then
                miMuestreo.AddPlaga(DropDown_Plaga2.SelectedValue)
            End If


            'Guardado
            miMuestreo.Guardar()
            Session("Muestreo") = miMuestreo

            'Despues de generar el muestreo guardamos la ID del mismo en una variable de sesion
            Session("idMuestreo") = miMuestreo.Id
            miMuestreo.GrabadoPor = Session("user") 'Session("IdUser")

            Response.Redirect("medicion_muestreo.aspx", True)


        End If

    End Sub


End Class
