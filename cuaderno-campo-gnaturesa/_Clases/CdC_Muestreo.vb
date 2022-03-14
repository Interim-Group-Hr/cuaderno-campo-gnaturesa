Public Class cls_Muestreo

    Dim miIdMuestreo As Long = 0
    Dim miEmpresa As Long = 0
    Dim miFinca As Long = 0
    Dim miSector As Long = 0
    Dim miFecha As String = ""
    Dim miGrupo As GrupoMuestreo = ""
    Dim dtPlagas As New DataTable
    Dim dtArboles As New DataTable
    Dim BD As New GNaturesaDB

    Public Enum GrupoMuestreo
        Par
        Impar
        Todos
        Personalizado
    End Enum

#Region "Metodos Publicos"
    'Public Sub New()
    '    CreadtPlagas()
    '    CreadtArboles()
    '    'Por definicion todos los muestreos han de incluir la fenología. Ya que esta codificada como plaga, añadimos siempre esta 'plaga' al crear un muestreo
    '    AddPlaga(0)
    'End Sub

    Private Sub CreadtPlagas()
        'damos forma al dt de plagas (tendra que tener el mismo diseño que los datos que recuperemos de la BD para que sea compatible cuando recuperemos un muestreo)
        'si cambiamos la recuperacion (recuperamos mas campos de la BD, tendremos que modificar la creacion del datatable)
        dtPlagas.Columns.Add("idPlaga", System.Type.GetType("System.Int32"))
        dtPlagas.Columns.Add("NombrePlaga", System.Type.GetType("System.String"))
    End Sub

    Private Sub CreadtArboles()
        'damos forma al dt de plagas (tendra que tener el mismo diseño que los datos que recuperemos de la BD para que sea compatible cuando recuperemos un muestreo)
        'si cambiamos la recuperacion (recuperamos mas campos de la BD, tendremos que modificar la creacion del datatable)
        dtArboles.Columns.Add("idArbol")
    End Sub

    Public Sub New(idMuestreo As Long)
        miIdMuestreo = idMuestreo
        Recupera()
    End Sub

    Public Sub AddPlaga(idPlaga As Long)
        'añadimos un registro al datatable de plagas

        Dim row As DataRow = dtPlagas.NewRow()

        Dim miPlaga As New Plaga(idPlaga)

        row("idplaga") = miPlaga.idPlaga
        row("nombrePlaga") = miPlaga.Nombre

        'Dim row As DataRow = dt.NewRow()
        'row("Archivo") = Archivo_
        'row("URL") = URL_
        'row("Destino") = Destino_
        'dt.Rows.Add(row)

    End Sub

    Public Sub AddArbol(idArbol As Long)
        'anadimos un registro al datatable de arboles

        Dim row As DataRow = dtArboles.NewRow()

        row("idarbol") = idArbol

    End Sub


    Public Sub Guardar()
        Dim sql As String
        If miIdMuestreo = 0 Then
            'creamos muestreo
        Else
            'actualizamos muestreo
        End If
    End Sub

#End Region

#Region "Metodos Privados"

    Private Sub Recupera()
        Dim sql As String = "select * from cdc_muestreos where idfila =" & miIdMuestreo
        Dim dt As New DataTable
        BD.RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then
            miEmpresa = dt.Rows(0)("idempresa")
            miFinca = dt.Rows(0)("idfinca")
            miSector = dt.Rows(0)("idsector")
            miFecha = dt.Rows(0)("fecha")
            miGrupo = dt.Rows(0)("grupo")
        End If

        dt.Clear()

        'RecuperaFenología
        'ver si lo integramos al recuperar plagas

        'Recupera Plagas
        'Cargamos el dt correspondiente

        'Recupera Arboles
        'Cargamos el dt correspondiente

    End Sub

#End Region

#Region "Propiedades Públicas"

    Public Property Empresa As Long
        Get
            Empresa = miEmpresa
        End Get
        Set(value As Long)
            miEmpresa = value
        End Set
    End Property

    Public Property Finca As Long
        Get
            Finca = miFinca
        End Get
        Set(value As Long)
            miFinca = value
        End Set
    End Property

    Public Property Sector As Long
        Get
            Sector = miSector
        End Get
        Set(value As Long)
            miSector = value
        End Set
    End Property

    Public Property Fecha As String
        Get
            Fecha = miFecha
        End Get
        Set(value As String)
            miFecha = value
        End Set
    End Property

    Public Property Grupo As GrupoMuestreo
        Get
            Grupo = miGrupo
        End Get
        Set(value As GrupoMuestreo)
            miGrupo = value
        End Set
    End Property

#End Region


End Class
