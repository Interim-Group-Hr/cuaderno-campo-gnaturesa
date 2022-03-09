Public Class Orientacion

    Public Sub New()

    End Sub

    Public Function Lista(idplagaOrgano As Long) As DataTable
        Dim dt As New DataTable

        Dim sql As String

        'recuperamos organos de plaga
        sql = "select CdC_PLAGA_ORGANO_ORIENTACION.idPlagaOrganoOrientacion,CdC_ORIENTACIONES.Nombre from CdC_PLAGA_ORGANO_ORIENTACION inner join CdC_ORIENTACIONES on CdC_PLAGA_ORGANO_ORIENTACION.idOrientacion = CdC_ORIENTACIONES.idOrientacion where CdC_PLAGA_ORGANO_ORIENTACION.idPlagaOrgano = " & idplagaOrgano

        RellenaDataTable_GNaturesa(dt, sql, False)

        Lista = dt
    End Function

End Class
