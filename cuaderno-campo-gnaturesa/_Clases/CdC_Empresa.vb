Public Class EmpresaNaturesa
    Private txtconexion As String = ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
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

    Public Function Lista(ByVal rol As Integer) As DataTable

        If rol < 1 Then

            Dim sql As String = "select idempresa,nombreempresa from EMPRESA where idempresa < 3"
            Dim dt As New DataTable
            BD.RellenaDataTable_GNaturesa(dt, sql, False)
            Lista = dt
        Else

            Dim sql As String = "select idempresa,nombreempresa from EMPRESA"
            Dim dt As New DataTable
            BD.RellenaDataTable_GNaturesa(dt, sql, False)
            Lista = dt

        End If
    End Function

#End Region

#Region "Metodos Privados"


    Private Sub Recupera()
        Dim sql As String = "select idempresa,nombreempresa from EMPRESA where idempresa = " & miIdEmpresa
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
