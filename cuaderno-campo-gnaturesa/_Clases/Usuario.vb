Public Class Usuario

    Dim miIdUsuario As Long
    Dim miNombre As String
    Dim miActivo As Integer
    Dim miPassword As String

    Dim Cadena As String = ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString


    Public Property Nombre As String
        Get
            Nombre = miNombre
        End Get
        Set(value As String)
            miNombre = value
        End Set
    End Property

    Public ReadOnly Property id As Long
        Get
            id = miIdUsuario
        End Get
    End Property

    Public Property Activo As Integer
        Get
            Activo = miActivo
        End Get
        Set(value As Integer)
            miActivo = value
        End Set
    End Property

    Public Property Password As String
        Get
            Password = desencriptar(miPassword)
        End Get
        Set(value As String)
            miPassword = value
        End Set
    End Property


    Private Function encriptar(ByVal valor As String) As String

        Dim strEncriptar As String = String.Empty
        Dim encripted As Byte() = Encoding.Unicode.GetBytes(valor)
        strEncriptar = Convert.ToBase64String(encripted)
        Return strEncriptar

    End Function

    Private Function desencriptar(ByVal Valor As String) As String
        Dim result As String = String.Empty
        Dim decryted As Byte() = Convert.FromBase64String(Valor)
        System.Text.Encoding.Unicode.GetString(decryted, 0, decryted.ToArray().Length)
        result = System.Text.Encoding.Unicode.GetString(decryted)
        Return result
    End Function


    Public Sub New(idusuario As Long)

        miIdUsuario = idusuario
        miNombre = RecuperaValor(Cadena, miIdUsuario, "Usuario")
        miActivo = RecuperaValor(Cadena, miIdUsuario, "Activo")
        miPassword = RecuperaValor(Cadena, miIdUsuario, "Password")

    End Sub

    Private Function RecuperaValor(cadena As String, idUsuario As Long, valor As String) As String

        Dim conexion As New SqlClient.SqlConnection

        Try

            Dim dt As New DataTable

            conexion.ConnectionString = cadena

            conexion.Open()

            Dim cmd As New SqlClient.SqlCommand("select " & valor & " from usuario where Usuario = " & idUsuario & "")

            cmd.Connection = conexion

            Dim da As New SqlClient.SqlDataAdapter(cmd)

            da.Fill(dt)

            RecuperaValor = ""

            If dt.Rows.Count > 0 Then
                RecuperaValor = dt.Rows(0)(0)

            End If

        Catch ex As Exception

            RecuperaValor = "#ERROR"

        Finally

            If conexion.State = ConnectionState.Open Then conexion.Close()

        End Try

    End Function


End Class
