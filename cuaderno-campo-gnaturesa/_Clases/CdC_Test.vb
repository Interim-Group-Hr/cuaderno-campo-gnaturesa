Public Class CdC_Test

    'Public Class frm_cdc_test

    '    Dim miPlaga As New Plaga
    '    Dim cargando As Boolean = True
    '    Dim CargandoOrganos As Boolean = True

    '    Private Sub frm_cdc_test_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    '        CargaCombo(cmbPlaga, miPlaga.Lista(True), "")
    '        cargando = False
    '    End Sub

    '    Private Sub Combo_SelectedValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    '        If Not CargandoOrganos Then
    '            Dim miCombo As ComboBox = DirectCast(sender, ComboBox)

    '            MessageBox.Show(miCombo.SelectedValue.ToString & " - Tag: " & miCombo.Tag.ToString)
    '        End If
    '    End Sub

    '    Private Sub cmbPlaga_SelectedValueChanged(sender As Object, e As EventArgs) Handles cmbPlaga.SelectedValueChanged
    '        If Not cargando Then

    '            CargandoOrganos = True

    '            'elimino los controles de alguna seleccion anterior

    '            Panel1.Controls.Clear()

    '            'pinto los organos
    '            Dim organos As New Organo()
    '            Dim orientaciones As New Orientacion

    '            Dim dtOrganos As New DataTable
    '            Dim dtOrientaciones As New DataTable

    '            dtOrganos = organos.Lista(cmbPlaga.SelectedValue)

    '            Dim pasadaOrgano As Integer = 0

    '            For Each organo As DataRow In dtOrganos.Rows

    '                Dim miGroupBox As New GroupBox

    '                miGroupBox.Name = organo("nombre") & pasadaOrgano.ToString
    '                miGroupBox.Tag = organo("idplagaorgano")
    '                miGroupBox.Text = organo("nombre")

    '                miGroupBox.Left = pasadaOrgano * 500
    '                miGroupBox.Top = 100

    '                miGroupBox.Height = 450

    '                Me.Panel1.Controls.Add(miGroupBox)

    '                dtOrientaciones = orientaciones.Lista(organo("idplagaorgano"))

    '                Dim pasadaOrientacion As Integer = 0

    '                For Each Orientacion As DataRow In dtOrientaciones.Rows

    '                    Dim miCombo As New ComboBox
    '                    miGroupBox.Controls.Add(miCombo)

    '                    miCombo.Name = Orientacion("nombre") & pasadaOrientacion.ToString
    '                    miCombo.Tag = Orientacion("idplagaorganoorientacion")
    '                    miCombo.Text = Orientacion("nombre")

    '                    miCombo.Top = (pasadaOrientacion + 1) * 25
    '                    miCombo.Left = 5

    '                    AddHandler miCombo.SelectedValueChanged, AddressOf Combo_SelectedValueChanged

    '                    Dim valores As New Valores

    '                    CargaCombo(miCombo, valores.Lista(Orientacion("idplagaorganoorientacion")), Orientacion("nombre"))

    '                    pasadaOrientacion = pasadaOrientacion + 1

    '                Next

    '                pasadaOrgano = pasadaOrgano + 1

    '            Next

    '            dtOrganos.Clear()
    '            dtOrientaciones.Clear()

    '            CargandoOrganos = False
    '        End If

    '    End Sub


    'End Class



End Class
