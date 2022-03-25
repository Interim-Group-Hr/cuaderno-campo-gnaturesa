Public Class CdCMuestreo

    Private txtconexion As String = ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
    Dim miIdMuestreo As Long = 0
    Dim miEmpresa As Long = 0
    Dim miFinca As Long = 0
    Dim miSector As Long = 0
    Dim miFecha As String = ""
    Dim miGrupo As String
    Dim miObservaciones As String = ""
    Dim dtPlagas As New DataTable
    Dim dtArboles As New DataTable
    Dim DB As New GNaturesaDB


    Public Enum GrupoMuestreo
        Par
        Impar
        Todos
        Personalizado
    End Enum

#Region "Metodos Publicos"
    Public Sub New()
        CreadtPlagas()
        CreadtArboles()
        'Por definicion todos los muestreos han de incluir la fenología. Ya que esta codificada como plaga, añadimos siempre esta 'plaga' al crear un muestreo
        AddPlaga(0)
    End Sub

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

    End Sub

    Public Function ListaPlagas() As DataTable
        ListaPlagas = dtPlagas
    End Function

    Public Sub AddArbol(idArbol As Long)
        'anadimos un registro al datatable de arboles

        Dim row As DataRow = dtArboles.NewRow()

        row("idarbol") = idArbol

    End Sub


    Public Sub Guardar()

        Dim conexion As New SqlClient.SqlConnection(txtconexion)

        Dim sql As String = "CdC_Muestreos_Alta"

        Dim cmd As New SqlClient.SqlCommand()

        conexion.Open()
        cmd.Connection = conexion
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = sql
        cmd.Parameters.AddWithValue("@idempresa", miEmpresa)
        cmd.Parameters.AddWithValue("@idfinca", miFinca)
        cmd.Parameters.AddWithValue("@idsector", miSector)
        cmd.Parameters.AddWithValue("@fecha", miFecha)
        cmd.Parameters.AddWithValue("@grupo", miGrupo)


        If miIdMuestreo = 0 Then
            cmd.Parameters.Add("@idMuestreo", SqlDbType.Int)
            cmd.Parameters("@idMuestreo").Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()

            miIdMuestreo = cmd.Parameters("@idMuestreo").Value
        End If


    End Sub

#End Region

#Region "Metodos Privados"

    Private Sub Recupera()
        Dim sql As String = "select idempresa,idfinca,idsector,fecha,grupo,observaciones from cdc_muestreos where idfila =" & miIdMuestreo
        Dim dt As New DataTable
        DB.RellenaDataTable_GNaturesa(dt, sql, False)

        If dt.Rows.Count > 0 Then
            miEmpresa = dt.Rows(0)("idempresa")
            miFinca = dt.Rows(0)("idfinca")
            miSector = dt.Rows(0)("idsector")
            miFecha = dt.Rows(0)("fecha")
            miGrupo = dt.Rows(0)("grupo")
            miObservaciones = dt.Rows(0)("observaciones")
        End If

        dt.Clear()

    End Sub

    Public Sub GuardaMuestreoArbol(idarbol As Long, idCombo As Long, valorCombo As Long)
        Dim conexion As New SqlClient.SqlConnection(txtconexion)

        Dim sql As String = "cdc_muestreo_arbol_alta"

        Dim cmd As New SqlClient.SqlCommand()

        Try
            conexion.Open()
            cmd.Connection = conexion
            cmd.CommandType = CommandType.StoredProcedure
            cmd.CommandText = sql
            cmd.Parameters.AddWithValue("@idplagaOrganoOrientacionValor", valorCombo)
            cmd.Parameters.AddWithValue("@idplagaOrganoOrientacion", idCombo)
            cmd.Parameters.AddWithValue("@idArbol", idarbol)
            cmd.Parameters.AddWithValue("@idMuestreo", miIdMuestreo)
            cmd.Parameters.AddWithValue("@Observaciones", "")

            cmd.ExecuteNonQuery()

        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub

#End Region

#Region "Propiedades Públicas"

    Public ReadOnly Property Id As Long
        Get
            Id = miIdMuestreo
        End Get
    End Property


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

    Public Property Grupo As String
        Get
            Grupo = miGrupo
        End Get
        Set(value As String)
            miGrupo = value
        End Set
    End Property

#End Region


End Class
