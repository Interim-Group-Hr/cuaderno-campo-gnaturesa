Public Class Finca

    Dim miIdFinca As Long = 0
    Dim miNombreFinca As String = ""
    Dim miEmpresa As Long = 0
    Dim BD As New GNaturesaDB

#Region "Propiedades Publicas"
    Public Property NombreFinca As String
        Get
            NombreFinca = miNombreFinca
        End Get
        Set(value As String)
            miNombreFinca = value
        End Set
    End Property

    Public Property Empresa As Long
        Get
            Empresa = miEmpresa
        End Get
        Set(value As Long)
            miEmpresa = value
        End Set
    End Property
#End Region

#Region "Metodos/Funciones Publicos"
    Public Sub New()

    End Sub

    Public Sub New(idFinca As Long)
        miIdFinca = idFinca
        Recupera()
    End Sub

    Public Function Lista() As DataTable
        Dim sql As String = "select finca,idempresa from FINCAS where idfinca = " & miIdFinca
        Dim dt As New DataTable
        RellenaDataTable_GNaturesa(dt, sql, False)
        Lista = dt
    End Function

    Public Sub Guardar(ByRef idFinca As Long)
        Dim conexion As New SqlClient.SqlConnection(mStrConexionGNaturesa)

        Dim sql As String = ""

        Dim cmd As New SqlClient.SqlCommand()

        If miIdFinca = 0 Then
            sql = "FINCAS_Alta"
        Else
            sql = "FINCAS_Update"
        End If

        Try
            conexion.Open()
            cmd.Connection = conexion
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = sql
            cmd.Parameters.AddWithValue("@idempresa", miEmpresa)
            cmd.Parameters.AddWithValue("@NombreFinca", miNombreFinca)


            If miIdFinca = 0 Then
                cmd.Parameters.Add("@id", SqlDbType.Int)
                cmd.Parameters("@id").Direction = ParameterDirection.Output
                cmd.ExecuteNonQuery()

                idFinca = cmd.Parameters("@id").Value
            End If

        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub
#End Region


#Region "Metodos Privados"

    Private Sub Recupera()
        Dim sql As String = "select finca,idempresa from FINCAS where idfinca = " & miIdFinca
        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then
            miEmpresa = dt.Rows(0)("empresa")
            miNombreFinca = dt.Rows(0)("fecha")

        End If

        dt.Clear()
        dt.Dispose()
    End Sub

#End Region
End Class
