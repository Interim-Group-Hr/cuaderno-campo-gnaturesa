Public Class EmpresaNaturesa

    Dim miIdEmpresa As Long
    Dim miNombreEmpresa As String
    Dim BD As New GNaturesaDB

#Region "Metodos/Funciones Publicos"
    Public Sub New()

    End Sub

    Public Sub New(idempresa As Long)
        miIdEmpresa = idempresa
        Recupera()
    End Sub

    Public Sub Guardar()
        Dim sql As String
        If miIdEmpresa = 0 Then
            'creamos empresa
        Else
            'actualizamos empresa
        End If
    End Sub

    Public Function Lista() As DataTable
        Dim sql As String = "select idempresa,nombreempresa from EMPRESAS"
        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)
        Lista = dt
    End Function

#End Region

#Region "Metodos Privados"


    Private Sub Recupera()
        Dim sql As String = "select idempresa,nombreempresa from EMPRESAS where idempresa = " & miIdEmpresa
        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then

            miNombreEmpresa = dt.Rows(0)("nombreempresa")

        End If

        dt.Clear()
        dt.Dispose()
    End Sub


#End Region

End Class
