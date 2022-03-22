Imports System.Data.SqlClient
Imports System.Web.Services
Public Class muestreo
    Inherits System.Web.UI.Page

    Private mlngResp As Long
    Private mlngRespOf As Long
    Private mstrMsgError As String = String.Empty
    Dim dtLineas As New DataTable
    Dim Obj As New GNaturesaDB
    Dim txtconexion As String = "server=172.16.1.17;database=GNaturesa;uid=UsuarioGenerico;pwd=InterimGr0$;" 'ConfigurationManager.ConnectionStrings("GNaturesa").ConnectionString
    Private cnBD As New SqlConnection



#Region "Métodos Privados"

    Private Function ConexionAbrirBD(ByVal pStrCon As String) As SqlConnection

        If cnBD.State = ConnectionState.Closed Then

            cnBD.ConnectionString = pStrCon
            cnBD.Open()

        End If

        Return cnBD

    End Function


    Private Sub ConexionCerrarBD()

        If cnBD.State = ConnectionState.Open Then

            cnBD.Close()

        End If

    End Sub

#End Region

#Region "Constructores"

    Public Sub New()

        mlngResp = 0
        mstrMsgError = String.Empty

    End Sub

#End Region

#Region "PropiedadesPúblicas"

    Public ReadOnly Property RespuestaOf As Long

        Get

            RespuestaOf = mlngRespOf

        End Get

    End Property

    Public ReadOnly Property Respuesta As Long

        Get

            Respuesta = mlngResp

        End Get

    End Property



    Public ReadOnly Property MsgError As String

        Get

            MsgError = mstrMsgError

        End Get

    End Property

#End Region


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Número de la habitación
        Dim habitacion As String = "habitacion102"

        Dim div As New System.Web.UI.HtmlControls.HtmlGenericControl("div")
        div.ID = "div" & habitacion
        'Inicio Ejemplos propiedades
        div.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Yellow")
        div.Style.Add(HtmlTextWriterStyle.Color, "Red")
        div.Style.Add(HtmlTextWriterStyle.Height, "100px")
        div.Style.Add(HtmlTextWriterStyle.Width, "400px")
        div.Style.Add("Padding", "10px")
        'Ejemplo con class
        div.Attributes.Add("class", "col-md-3")

        Dim img As New System.Web.UI.HtmlControls.HtmlGenericControl("img")
        img.ID = "img" & habitacion
        img.Attributes.Add("src", "https://y.cdrst.com/foto/hotel-sf/8a4d/galeriaresp/hotel-indigo-rome-st-george-habitacion-3c63c99.jpg")

        Dim label As New System.Web.UI.HtmlControls.HtmlGenericControl("label")
        label.ID = "label" & habitacion
        label.InnerText = habitacion

        Dim button As New System.Web.UI.HtmlControls.HtmlGenericControl("button")
        button.ID = "btn" & habitacion
        button.Attributes.Add("type", "button")
        button.Attributes.Add("value", "Reservar")
        button.InnerText = "Reservar"

        div.Controls.Add(img)
        div.Controls.Add(label)
        div.Controls.Add(button)

        htmlcontenedor.Controls.Add(div)

        If Not IsPostBack Then  'Si no es PostBack (Recarga al darle a un boton)

            'If Session.Item("logingOk") Is Nothing Then

            '    Response.Redirect("login.aspx", True)
            '    Exit Sub

            'Else


            '    If Session.Item("loginOK") = False Or Session.Item("ROL") = 1 Then

            '        Response.Redirect("login.aspx", True)
            '        Exit Sub

            '    Else

            Dim BD As New GNaturesaDB
            Dim Empresa As New EmpresaNaturesa
            Dim Plagas As New Plaga
            Dim dtEmpresa = Empresa.Lista()
            Dim dtPlagas = Plagas.Lista(False)

            TextBox_fecha.Text = Now.ToShortDateString


            'Cargar DropDownList de Empresas
            If dtEmpresa.Rows.Count > 0 Then

                Dim i As Integer
                For i = 0 To (dtEmpresa.Rows.Count - 1)
                    DropDown_empresa.Items.Add(New ListItem(dtEmpresa.Rows(i)("NombreEmpresa"), dtEmpresa.Rows(i)("idEmpresa")))
                Next

            End If

            'Cargar DropDownList Plagas 1
            If dtPlagas.Rows.Count > 0 Then
                Dim i As Integer
                For i = 0 To (dtPlagas.Rows.Count - 1)
                    DropDown_Plaga.Items.Add(New ListItem(dtPlagas.Rows(i)("Nombre"), dtPlagas.Rows(i)("idPlaga")))
                Next
            End If

            'Precargar DropDownList Plaga 2

            If dtPlagas.Rows.Count > 0 Then
                Dim i As Integer
                For i = 0 To (dtPlagas.Rows.Count - 1)
                    DropDown_Plaga2.Items.Add(New ListItem(dtPlagas.Rows(i)("Nombre"), dtPlagas.Rows(i)("idPlaga")))
                Next
            End If

        End If


        '    End If
        'End If

    End Sub

    Private Sub DropDown_empresa_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDown_empresa.SelectedIndexChanged

        Dim Finc As New Finca


        Dim dtFincas = Finc.Lista(DropDown_empresa.SelectedValue)


        If dtFincas.Rows.Count > 0 Then

            Dim i As Integer
            For i = 0 To (dtFincas.Rows.Count - 1)
                DropDown_Finca.Items.Add(New ListItem(dtFincas.Rows(i)("Finca"), dtFincas.Rows(i)("idFinca")))
            Next

        End If

    End Sub


    Private Sub DropDown_Finca_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDown_Finca.SelectedIndexChanged

        Dim Sec As New Sector
        Dim dtSector = Sec.Lista(DropDown_Finca.SelectedValue)

        If dtSector.Rows.Count > 0 Then
            Dim i As Integer
            For i = 0 To (dtSector.Rows.Count - 1)
                DropDown_Sector.Items.Add(New ListItem(dtSector.Rows(i)("Parcela"), dtSector.Rows(i)("IdParcela")))
            Next
        End If

    End Sub

    Private Sub btnAddPlaga_Click(sender As Object, e As EventArgs) Handles btnAddPlaga.Click
        DropDown_Plaga2.Visible = True
        btnAddPlaga.Visible = False
        btnDelPlaga.Visible = True

    End Sub

    Private Sub btnDelPlaga_Click(sender As Object, e As EventArgs) Handles btnDelPlaga.Click

        DropDown_Plaga2.Visible = False
        DropDown_Plaga2.SelectedValue = 0
        btnAddPlaga.Visible = True
        btnDelPlaga.Visible = False


    End Sub
End Class