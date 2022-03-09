Public Class Organo

    Dim miIdOrgano As Long = 0
    Dim miOrgano As String = ""
    Dim miIdPlaga As Long = 0
    'Dim miOrientacion As DataTable = Nothing

    'Public ReadOnly Property Orientaciones As DataTable
    '    Get
    '        Orientaciones = miOrientacion
    '    End Get
    'End Property

    Public Function Lista(idplaga As Long) As DataTable
        Dim dt As New DataTable

        Dim sql As String

        'recuperamos organos de plaga
        sql = "select CdC_PLAGA_ORGANO.idplagaOrgano,cdc_organos.nombre from CdC_PLAGA_ORGANO inner join CdC_ORGANOS on CdC_PLAGA_ORGANO.idOrgano = CdC_ORGANOS.idOrgano where idPlaga = " & idplaga

        RellenaDataTable_GNaturesa(dt, sql, False)

        Lista = dt
    End Function

    Public Sub New()

    End Sub

    Public Sub New(idOrgano As Long, idPlaga As Long)
        miIdOrgano = idOrgano
        miIdPlaga = idPlaga
        Recupera()
        'miOrientacion = miListaOrientaciones()
    End Sub

    'Private Function miListaOrientaciones() As DataTable
    '    Dim dt As New DataTable

    '    Dim sql As String

    '    'recuperamos orientaciones de organo
    '    sql = "select Po.idplagaorgano from CdC_PLAGA_ORGANO PO where PO.idPlaga = " & miIdPlaga & " and Po.idOrgano = " & miIdOrgano

    '    RellenaDataTable_GNaturesa(dt, sql, False)

    '    Dim miPlagaOrgano As Long = dt.Rows(0)(0)

    '    dt.Clear()

    '    sql = "select POO.idOrientacion,O.nombre from CdC_PLAGA_ORGANO_ORIENTACION POO inner join CdC_ORIENTACIONES O on POO.idOrientacion = O.idOrientacion where POO.idPlagaOrgano = " & miPlagaOrgano

    '    RellenaDataTable_GNaturesa(dt, sql, False)

    '    miListaOrientaciones = dt

    'End Function

    Private Sub Recupera()
        Dim dt As New DataTable
        Dim sql As String = "select idorgano,nombre from cdc_organos where idorgano = " & miIdOrgano

        RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then
            miIdOrgano = dt.Rows(0)("idorgano")
            miOrgano = dt.Rows(0)("nombre")
        End If

        dt.Clear()
    End Sub

End Class
