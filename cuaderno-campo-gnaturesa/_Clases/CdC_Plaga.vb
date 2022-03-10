Public Class Plaga

    Dim miIdPlaga As Long = 0
    Dim miNombre As String = ""
    Dim BD As New GNaturesaDB

    Dim miOrgano As DataTable = Nothing

#Region "Propiedades públicas"
    Public ReadOnly Property idPlaga As Long
        Get
            idPlaga = miIdPlaga
        End Get
    End Property

    Public ReadOnly Property Nombre As String
        Get
            Nombre = miNombre
        End Get
    End Property

    'Public ReadOnly Property Organos As DataTable
    '    Get
    '        Organos = miListaOrganos()
    '    End Get
    'End Property

#End Region

    Public Sub New()

    End Sub

    Public Sub New(idPlaga As Long)
        miIdPlaga = idPlaga
        Recupera()
        'miOrgano = miListaOrganos()
    End Sub

    Public Function Lista(fenologia As Boolean) As DataTable
        Dim dt As New DataTable

        Dim sql As String

        'recuperamos organos de plaga
        sql = "select idplaga, nombre from cdc_plagas "
        If Not fenologia Then sql = sql & "where idPlaga>0"

        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        Lista = dt
    End Function

    'Private Function miListaOrganos() As DataTable
    '    Dim dt As New DataTable

    '    Dim sql As String

    '    'recuperamos organos de plaga
    '    sql = "select PO.idOrgano,O.nombre from cdc_plagas P inner join CdC_PLAGA_ORGANO PO on P.idPlaga = Po.idPlaga inner join CdC_ORGANOS O on O.idOrgano = PO.idOrgano where P.idPlaga = " & miIdPlaga

    '    RellenaDataTable_GNaturesa(dt, sql, False)

    '    miListaOrganos = dt
    'End Function

    Private Sub Recupera()
        Dim dt As New DataTable
        Dim sql As String = "select idplaga,nombre from cdc_plagas where idplaga = " & miIdPlaga

        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then
            miIdPlaga = dt.Rows(0)("idplaga")
            miNombre = dt.Rows(0)("nombre")
        End If

        dt.Clear()

    End Sub

End Class
