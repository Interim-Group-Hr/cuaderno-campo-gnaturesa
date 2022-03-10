Imports System.Data.SqlClient
Imports System.Web.Services
Public Class muestreo
    Inherits System.Web.UI.Page

    Private mlngResp As Long
    Private mlngRespOf As Long
    Private mstrMsgError As String = String.Empty
    Dim dtLineas As New DataTable
    Dim Obj As New GNaturesaDB
    Private txtconexion As String = ConfigurationManager.ConnectionStrings("Interim").ConnectionString
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

            If Session.Item("logingOk") Is Nothing Then

                Response.Redirect("login.aspx", True)
                Exit Sub

            Else

                If Session.Item("loginOK") = False Or Session.Item("ROL") = 1 Then

                    Response.Redirect("login.aspx", True)
                    Exit Sub

                Else
                    Dim BD As New GNaturesaDB
                    Dim Fincas As New Finca
                    'Dim Sector As New Sector
                    Dim Empresa As New EmpresaNaturesa

                    Dim dtFincas As New DataTable
                    Dim dtSector As New DataTable
                    Dim dtPlaga As New DataTable
                    Dim dtEmpresa As New DataTable

                    dtEmpresa = Empresa.Lista()

                    If dtEmpresa.Rows.Count > 0 Then
                        Dim i As Integer
                        For i = 0 To (dtEmpresa.Rows.Count - 1)
                            DropDown_empresa.Items.Add(New ListItem(dtEmpresa.Rows(i)("idEmpresa"), dtEmpresa.Rows(i)("NombreEmpresa")))
                        Next

                    End If



                End If






            End If
        End If

    End Sub

End Class