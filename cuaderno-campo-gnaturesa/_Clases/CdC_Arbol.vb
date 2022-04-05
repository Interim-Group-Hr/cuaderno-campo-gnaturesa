Public Class Arbol

    Private txtconexion As String = ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
    Dim BD As New GNaturesaDB

    Dim miidMuestreo As Long = 0
    Dim miidArbol As Long = 0

    Public Enum TipoArbol
        Pares = 1
        Impares = 2
        Todos = 3
        Personalizado = 4
    End Enum

    Public Sub New()

    End Sub

    Public Sub New(idMuestreo As Long, idArbol As Long)
        miidMuestreo = idMuestreo
        miidArbol = idArbol
    End Sub

    Public Function Lista(tipo As TipoArbol, idmuestreo As Long) As DataTable
        Dim sql As String = "select idArbol,nombreArbol from CdC_Arbol where idArbol not in (select idArbol from CdC_MUESTREO_ARBOL where idMuestreo = " & idmuestreo & ") "
        If tipo = 1 Then
            sql = sql & " and (idArbol%2) = 0"
        End If
        If tipo = 2 Then
            sql = sql & " and (idArbol%2) <> 0"
        End If

        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)
        Lista = dt
    End Function

    Public Sub GuardarMuestreoArbol(idCombo As Long, ValorCombo As Long, Observaciones As String)
        Dim conexion As New SqlClient.SqlConnection(txtconexion)

        Dim sql As String = "CdC_Muestreo_Arbol_Alta"

        Dim cmd As New SqlClient.SqlCommand()

        conexion.Open()
        cmd.Connection = conexion
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = sql
        cmd.Parameters.AddWithValue("@idPlagaOrganoOrientacion", idCombo)
        cmd.Parameters.AddWithValue("@idPlagaOrganoOrientacionValor", ValorCombo)
        cmd.Parameters.AddWithValue("@idArbol", miidArbol)
        cmd.Parameters.AddWithValue("@idMuestreo", miidMuestreo)
        cmd.Parameters.AddWithValue("@observaciones", Observaciones)

        If miidMuestreo = 0 Then
            cmd.Parameters.Add("@id", SqlDbType.Int)
            cmd.Parameters("@id").Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()

            miidMuestreo = cmd.Parameters("@id").Value
        End If

    End Sub
End Class
