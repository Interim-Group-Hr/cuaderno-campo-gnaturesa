Public Class Valores

    Dim miId As Long
    Dim miValor As String
    Dim BD As New GNaturesaDB

    Public Sub New()

    End Sub

    Public Function Lista(idplagaorganoorientacion As Long) As DataTable
        Dim dt As New DataTable
        Dim sql As String
        'sql = "select V.idValor,V.nombre from CdC_PLAGA_ORGANO PO inner join CdC_PLAGA_ORGANO_VALOR POV on po.idPlagaOrgano = POV.idPlagaOrgano inner join CdC_VALORES V on v.idValor = pov.idValor inner join CdC_PLAGAS P on P.idPlaga = Po.idPlaga where P.idPlaga = " & Plaga & " and Po.idOrgano = " & Organo

        sql = "select idPlagaOrganoOrientacionValor,v.Nombre from CdC_PLAGA_ORGANO_ORIENTACION_VALOR POOV inner join CdC_VALORES V on poov.idValor=v.idValor where idPlagaOrganoOrientacion = " & idplagaorganoorientacion & " order by v.ordenfenologia desc"

        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        Lista = dt
    End Function

End Class
