<%@ Page Language="vb" MaintainScrollPositionOnPostback="true" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="medicion_muestreo.aspx.vb" Inherits="cuaderno_campo_gnaturesa.medicion_muestreo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <asp:TextBox ID="txtGeoLatitud" runat="server" Style="display: none;" />
   <asp:TextBox ID="txtGeoLongitud" runat="server" Style="display: none;" />

    <div class="container-fluid">
        <div>
            <nav class="navbar navbar-expand-md navbar-light bg-secondary fixed-top">
                <div class="container-fluid">
                    <div class="me-auto">
                            <label style="color: white;" id="FincaSector" runat="server"></label>
                    </div>
                    <div class="">
                            <label style="color: white;" id="fechaArbol" runat="server"></label>
                    </div>
                </div>
            </nav>
        </div>
        <br />
        <br />
        <div class="row col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6" style="margin: auto;">

            <!-- Fenología -->
            <div class="col-12">
                <div class="card border-secondary mb-3" id="SeccionFenologia" runat="server">
                    <div class="card-header">Fenología</div>
                    <div class="card-body text-secondary">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropNorteFenologia_74" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Norte</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropSurFenologia_72" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Sur</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropOesteFenologia_73" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Oeste</strong></label>
                                </div>

                            </div>
                            <div class="col-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropEsteFenologia_71" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Este</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropInt1Fenologia_75" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Interior 1</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropInt2Fenologia_76" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Interior 2</strong></label>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pulgon -->
           
            <div class="col-sm-5" id="PulgonSensible" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="seccionPulgonSensible" runat="server">
                    <div class="card-header">Pulgon - Brotes Sensibles</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePulgonS_1" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true" >
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPulgonS_2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true" >
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePulgonS_3" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true" >
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePulgonS_4" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-5" id="pulgonOcupado" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="seccionPulgonOcupado" runat="server">
                    <div class="card-header">Pulgon - Brotes Ocupados</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePulgonO_5" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPulgonO_6" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePulgonO_7" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePulgonO_8" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>


            <%-- PLAGA EUTETRANYCUS--%>

            <div class="col-sm-6" id="EutetranychusHoja" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="seccionEtetranychusH" runat="server">
                    <div class="card-header">EUTETRANYCHUS - HOJA</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteAzarEtetranychusH_9" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarEtetranychusH_10" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarEtetranychusH_11" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAzarEtetranychusH_12" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar1EtetranychusH_13" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar2EtetranychusH_14" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 2</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-sm-6" id="EutetranychusFruto" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="SeccionEtetranychusF" runat="server">
                    <div class="card-header">EUTETRANYCHUS - FRUTO</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropesteEtetranychusF_15" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurEtetranychusF_16" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteEtetranychusF_17" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteEtetranychusF_18" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="Dropinterior1EtetranychusF_19" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2EtetranychusF_20" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 2</strong></label>
                        </div>
                    </div>
                </div>
            </div>


            <!-- MOSCA BLANCA -->

            <div class="col-sm-6" id="Mosca" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="SeccionMoscaB" runat="server">
                    <div class="card-header">Mosca Blanca - Hoja</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteAzarMoscaB_21" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarMoscaB_22" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarMoscaB_23" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAzarMoscaB_24" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar1MoscaB_25" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar2MoscaB_26" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 2</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <!-- Trip Orquedea -->

            <div class="col-sm-6" id="Orquidea" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="SeccionTripOrquedea" runat="server">
                    <div class="card-header">Trip Orquidea - Fruto </div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteTripOrquedea_27" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTripOrquedea_28" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTripOrquedea_29" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteTripOrquedea_30" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Planococcus -->

            <div class="col-sm-6" id="Planococus" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="SeccionPlanococus" runat="server">
                    <div class="card-header">Planococcus - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePlanococus_31" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPlanococus_32" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePlanococus_33" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePlanococus_34" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Polilla -->

            <div class="col-sm-6" runat="server" id="polilla" visible="false">
                <div class="card border-secondary mb-3" id="SeccionPolilla" runat="server">
                    <div class="card-header">Polilla - Flores</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePolilla_35" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPolilla_36" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePolilla_37" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePolilla_38" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- El Minador -->

            <div class="col-sm-6" runat="server" id="minador" visible="false">
                <div class="card border-secondary mb-3" id="SeccionMinador" runat="server">
                    <div class="card-header">Minador - Brotacion</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteMinador_39" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurMinador_40" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteMinador_41" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteMinador_42" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tetranychus -->

            <div class="col-sm-6" runat="server" id="TetranychusHoja" visible="false">
                <div class="card border-secondary mb-3" id="SeccionTetranychusH" runat="server">
                    <div class="card-header">Tetranychus - Hoja</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteTetranychusH_43" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteSTetranychusH_44" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteAzarTetranychusH_45" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTetranychusH_46" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurSTetranychusH_47" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarTetranychusH_48" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTetranychusH_49" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteSTetranychusH_50" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarTetranychusH_51" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteTetranychusH_52" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteSTetranychusH_53" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Sintomatico</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropnorteAzarTetranychusH_54" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Azar</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSintomatica1TetranychusH_55" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAzar1TetranychusH_56" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Azar 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSintomatica2TetranychusH_57" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 2</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAzar2TetranychusH_58" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Azar 2</strong></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6" runat="server" id="TetranychusFruto" visible="false">
                <div class="card border-secondary mb-3" id="SeccionTetranychusF" runat="server">
                    <div class="card-header">Tetranychus - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropesteTetranychusF_59" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTetranychusF_60" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTetranychusF_61" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteTetranychusF_62" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior1TetranychusF_63" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2TetranychusF_64" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 2</strong></label>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Aonidella -->

            <div class="col-sm-6" runat="server" id="Aonidella" visible="false">
                <div class="card border-secondary mb-3" id="SeccionAonidella" runat="server">
                    <div class="card-header">Aonidella - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteAonidella_65" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAonidella_66" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAonidella_67" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAonidella_68" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior1Aonidella_69" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2Aonidella_70" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 2</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Cuadro de texto -->

            <div class="col-sm-12" runat="server" id="comentarioArbolid">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Comentarios</div>
                    <div class="card-body text-secondary">
                        <textarea class="form-control" id="comentarioArbol" runat="server" rows="3"></textarea>
                    </div>
                </div>
            </div>

            <!-- MODAL -->

            <div class="modal fade" id="ModalSelect" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Elección</h5>
                            <div class="modal-header">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                        </div>
                        <div class="modal-body">

                            <asp:DropDownList ID="DropDown_NArbol" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Arbol</asp:ListItem>

                            </asp:DropDownList>
                          

                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal Confirmacion -->

            <div class="modal fade" id="ModalConfirmar" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">¿Seguro que quieres terminar?</h5>
                            <div class="modal-header">
                            </div>
                        </div>

                        <div class="modal-body">

                            <asp:Label Text="Si terminas el Muestreo no podrás volver a editarlo" runat="server" />

                        </div>

                        <div class="modal-footer">
                           <%-- <asp:LinkButton Text="Cerrar" class="btn btn-secondary" runat="server" />--%>
                            <asp:LinkButton ID="btnAceptar" Text="Aceptar" runat="server" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>


            <!-- Fin componentes -->



        </div>

        <br />
        <br />
        <br />
        <nav class="navbar fixed-bottom navbar-expand-sm navbar-light bg-light text-light">
            <div class="container-fluid text-center">
                <div class="text-center" style="width: 100%">
                    <asp:LinkButton ID="guardarArbol" class="btn btn-primary" runat="server"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Añadir Arbol</asp:LinkButton>
                    <asp:LinkButton ID="BtnGuardar" data-bs-toggle="modal" data-bs-target="#ModalConfirmar" class="btn btn-primary" runat="server"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Terminar Muestreo</asp:LinkButton>

                </div>
            </div>
        </nav>

    </div>


    <!-- Cuadro de dialogo/elección de arbol -->





    <%--<div id="ww_148b1b886c44a" v='1.20' loc='id' a='{"t":"horizontal","lang":"es","ids":["wl6590"],"cl_bkg":"image","cl_font":"#FFFFFF","cl_cloud":"#FFFFFF","cl_persp":"#81D4FA","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722","sl_sot":"celsius","sl_ics":"one_a","font":"Arial"}'><a href="https://weatherwidget.org/es/" id="ww_148b1b886c44a_u" target="_blank">Widget de tiempo para el sitio web de Weatherwidget.org</a></div><script async src="https://srv2.weatherwidget.org/js/?id=ww_148b1b886c44a"></script>


    <a class="weatherwidget-io" href="https://forecast7.com/es/39d43n0d47/torrent/" data-label_1="TORRENTE" data-label_2="WEATHER" data-theme="original" >TORRENTE WEATHER</a>
<script>
    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = 'https://weatherwidget.io/js/widget.min.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'weatherwidget-io-js');
</script>

    <iframe src="https://www.slideshare.net/DavidMInterimGroup/slideshelf" width="615" height="470" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:none;" allowfullscreen="" webkitallowfullscreen="" mozallowfullscreen=""></iframe>--%>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">

    <script>
      <%    If Request.Form("ctl00$content$DropDown_NArbol") = "" Then %>
            $(window).on('load', function () {
                $('#ModalSelect').modal('show');
            });
        <% End If %>

        //Función que obtiene la geolocalización
        function ObtenerGeolocalizacion() {

            //Se pide la activación de ubicación para capturar la geolocalización
            if (navigator.geolocation) navigator.geolocation.getCurrentPosition(function (pos) {

                //Si es aceptada guardamos lo latitud y longitud
                $("[id*=txtGeoLatitud]").val(pos.coords.latitude);
                $("[id*=txtGeoLongitud]").val(pos.coords.longitude);

            }, function (error) {

                //Si es rechazada
                switch (error.code) {

                    case error.PERMISSION_DENIED:
                        alert('MEDICION NO GEOLOCALIZADA. PERMISO DENEGADO')
                        break;

                    case error.POSITION_UNAVAILABLE:
                        alert('MEDICION GEOLOCALIZADA. UBICACIÓN NO DISPONIBLE')
                        break;

                    case error.TIMEOUT:
                        alert('MEDICION NO GEOLOCALIZADA. TIMEOUT')
                        break;

                    case error.UNKNOWN_ERROR:
                        alert('MEDICION NO GEOLOCALIZADA. ERROR DESCONOCIDO')
                        break;

                }

                $("[id*=txtGeoLatitud]").val('0');
                $("[id*=txtGeoLongitud]").val('0');

            }, { timeout: 60000 });

        }

        $(function () {

            //Se inicializan las variables que guardan la geolocalización
            $("[id*=txtGeoLatitud]").val('0');
            $("[id*=txtGeoLongitud]").val('0');

            //Se lanza la llamada a la geolocalización
            ObtenerGeolocalizacion();
        });
    </script>

    


</asp:Content>

