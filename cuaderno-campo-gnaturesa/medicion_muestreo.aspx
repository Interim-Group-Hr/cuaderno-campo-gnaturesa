<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="medicion_muestreo.aspx.vb" Inherits="cuaderno_campo_gnaturesa.medicion_muestreo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container-fluid">
            <div class="col">
                <div class="card border-secondary mb-3" style="max-width: 18rem;">
                    <div class="card-header">Mosca</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                                <asp:ListItem Value="0">S1</asp:ListItem>
                                <asp:ListItem Value="1">S2</asp:ListItem>
                                <asp:ListItem Value="2">S3</asp:ListItem>
                                <asp:ListItem Value="3">S4</asp:ListItem>
                                <asp:ListItem Value="4">S5</asp:ListItem>
                                <asp:ListItem Value="5">S6</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sector</strong></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   
    <div id="ww_148b1b886c44a" v='1.20' loc='id' a='{"t":"horizontal","lang":"es","ids":["wl6590"],"cl_bkg":"image","cl_font":"#FFFFFF","cl_cloud":"#FFFFFF","cl_persp":"#81D4FA","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722","sl_sot":"celsius","sl_ics":"one_a","font":"Arial"}'><a href="https://weatherwidget.org/es/" id="ww_148b1b886c44a_u" target="_blank">Widget de tiempo para el sitio web de Weatherwidget.org</a></div><script async src="https://srv2.weatherwidget.org/js/?id=ww_148b1b886c44a"></script>


    <a class="weatherwidget-io" href="https://forecast7.com/es/39d43n0d47/torrent/" data-label_1="TORRENTE" data-label_2="WEATHER" data-theme="original" >TORRENTE WEATHER</a>
<script>
    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = 'https://weatherwidget.io/js/widget.min.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'weatherwidget-io-js');
</script>


</asp:Content>
