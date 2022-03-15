Public Class Sector

    Dim miIdSector As Long
    Dim miNombreSector As String
    Dim BD As New GNaturesaDB

#Region "Metodos/Funciones Publicos"
    Public Sub New()

    End Sub

    Public Sub New(idsector As Long)
        'miIdEmpresa = idempresa
        'Recupera()
    End Sub

    'Public Sub Guardar()
    '    Dim sql As String
    '    If miIdSector = 0 Then
    '        'creamos sector
    '    Else
    '        'actualizamos sector
    '    End If
    'End Sub

    Public Function Lista(idFinca As Long) As DataTable
        Dim sql As String = "select idParcela,Parcela from parcelas where idfinca = " & idFinca
        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)
        Lista = dt
    End Function

#End Region

#Region "Metodos Privados"


    Private Sub Recupera()
        'Dim sql As String = "select idempresa,nombreempresa from EMPRESAS where idempresa = " & miIdEmpresa
        'Dim dt As New DataTable
        'RellenaDataTable_GNaturesa(dt, sql, False)

        'If dt.Rows.Count > 0 Then

        '    miNombreEmpresa = dt.Rows(0)("nombreempresa")

        'End If

        'dt.Clear()
        'dt.Dispose()
    End Sub


#End Region

End Class

