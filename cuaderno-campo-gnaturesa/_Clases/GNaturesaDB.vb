Imports System.Data.SqlClient


Public Class GNaturesaDB

    Private txtconexion As String = ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
    Private cnBD As New SqlConnection

    Private mlngResp As Long
    Private mlngRespOf As Long
    Private mstrMsgError As String = String.Empty



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


    Public Function Comprobar(ByVal pstrUsuario As String, ByVal pstrPassword As String) As Integer

        Dim strSQL As String
        Dim dtrResultado As SqlDataReader
        Dim intIdUsuario As Integer
        Dim comando As New SqlCommand

        'Se inicializa la variable de error
        mlngResp = 0
        mlngRespOf = 0
        mstrMsgError = String.Empty


        Try

            ConexionCerrarBD()

            'Se monta la instrucción SQL de consulta
            strSQL = "SELECT ID"
            strSQL = strSQL & " FROM USUARIOS"
            strSQL = strSQL & " WHERE UPPER(usuario) = '" & pstrUsuario & "' and PASSWORD = '" & pstrPassword & "' and ACTIVO = 1"

            ConexionAbrirBD(txtconexion)

            Dim cmd As SqlCommand = New SqlCommand(strSQL, cnBD)

            'Se ejecuta la consulta
            dtrResultado = cmd.ExecuteReader()

            If dtrResultado.HasRows = True Then

                dtrResultado.Read()

                intIdUsuario = dtrResultado("id")
                mlngRespOf = intIdUsuario

            Else

                intIdUsuario = -1


            End If

            'Se devuelve el resultado correcto de la operación
            mlngResp = 1

            'Se devuelve el resultado
            Comprobar = intIdUsuario



            cmd.Dispose()
            dtrResultado.Dispose()
            cmd = Nothing
            dtrResultado = Nothing

        Catch ex As Exception

            mlngResp = -1
            mstrMsgError = ex.Message

            Comprobar = -1

        Finally

            ConexionCerrarBD()

        End Try

    End Function

    Public Function Rol(ByVal IdUser As Integer) As Integer

        Dim strSQL As String
        Dim dtrResultado As SqlDataReader
        Dim RolStatus As Integer
        Dim comando As New SqlCommand

        'Se inicializa la variable de error
        mlngResp = 0
        mlngRespOf = 0
        mstrMsgError = String.Empty

        Try

            ConexionCerrarBD()

            'Se monta la instrucción SQL de consulta
            strSQL = "SELECT MUESTREO"
            strSQL = strSQL & " FROM USUARIOS"
            strSQL = strSQL & " WHERE ID = " & IdUser

            ConexionAbrirBD(txtconexion)

            Dim cmd As SqlCommand = New SqlCommand(strSQL, cnBD)

            'Se ejecuta la consulta
            dtrResultado = cmd.ExecuteReader()

            If dtrResultado.HasRows = True Then

                dtrResultado.Read()

                RolStatus = dtrResultado("Muestreo")
                mlngRespOf = RolStatus

            Else

                RolStatus = -1


            End If

            'Se devuelve el resultado correcto de la operación
            mlngResp = 1

            'Se devuelve el resultado
            Rol = RolStatus

            cmd.Dispose()
            dtrResultado.Dispose()
            cmd = Nothing
            dtrResultado = Nothing

        Catch ex As Exception

            mlngResp = -1
            mstrMsgError = ex.Message

            Rol = -1

        Finally

            ConexionCerrarBD()

        End Try



    End Function

    Public Sub RellenaDataTable_GNaturesa(ByRef pDt As DataTable, ByVal pStrSQL As String, ByVal pBolSP As Boolean)

        Try

            pDt.Clear()

            Dim cmd As SqlClient.SqlCommand = New SqlClient.SqlCommand(pStrSQL, ConexionAbrirBD(txtconexion))
            If pBolSP Then cmd.CommandType = CommandType.StoredProcedure
            Dim adapaux As New SqlClient.SqlDataAdapter
            adapaux.SelectCommand = cmd
            adapaux.Fill(pDt)

            cmd.Dispose()
            adapaux.Dispose()
            cmd = Nothing
            adapaux = Nothing

        Catch ex As Exception

            MsgBox(ex.Message, vbCritical, "Obtener Datos")

        Finally

            ConexionCerrarBD()

        End Try

    End Sub

    Public Sub EliminarCabecera(ByVal user As String)


        Dim strSQL As String
        Dim comando As New SqlCommand

        'Se inicializa la variable de error
        mlngResp = 0
        mlngRespOf = 0
        mstrMsgError = String.Empty

        Try

            ConexionCerrarBD()

            'Se monta la instrucción SQL de consulta
            strSQL = "delete from CdC_MUESTREOS where idfila in (select idFila from CdC_MUESTREOS where GrabadoPor= '" & user & "' and not exists (select * from CdC_MUESTREO_ARBOL where idMuestreo = CdC_MUESTREOS.idFila))"

            ConexionAbrirBD(txtconexion)

            Dim cmd As SqlCommand = New SqlCommand(strSQL, cnBD)

            'Se ejecuta la consulta
            cmd.ExecuteReader()

        Catch ex As Exception

            mlngResp = -1
            mstrMsgError = ex.Message

        Finally

            ConexionCerrarBD()

        End Try


    End Sub
End Class