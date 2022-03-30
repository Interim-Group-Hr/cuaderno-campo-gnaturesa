<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="medicion_muestreo.aspx.vb" Inherits="cuaderno_campo_gnaturesa.medicion_muestreo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container-fluid">
        <div>
            <nav class="navbar navbar-expand-md navbar-light bg-secondary fixed-top">
                <div>
                    <label id="FincaSector" runat="server"></label>
                </div>
                <div>
                    <label id="fechaArbol" runat="server"></label>
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
                                        <asp:ListItem Value="37">No muestreado P</asp:ListItem>
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

            <div class="col-sm-6" id="PulgonSensible" runat="server" visible="false">
                <div class="card border-secondary mb-3" id="seccionPulgonSensible" runat="server">
                    <div class="card-header">Pulgon - Brotes Sensibles</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePulgonS_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPulgonS_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePulgonS_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePulgonS_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-sm-6" id="pulgonOcupado" runat="server" visible="false">
                <div class="card border-secondary mb-3"  id="seccionPulgonOcupado" runat="server">
                    <div class="card-header">Pulgon - Brotes Ocupados</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropEstePulgono_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPulgonO_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePulgonO_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePulgonO_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteAzarEtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarEtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarEtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAzarEtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar1EtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar2EtetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropesteEtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurEtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteEtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteEtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="Dropinterior1EtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2EtetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteAzarMoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarMoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarMoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAzarMoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar1MoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInteriorAzar2MoscaB_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteTripOrquedea_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTripOrquedea_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTripOrquedea_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteTripOrquedea_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEstePlanococus_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPlanococus_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePlanococus_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePlanococus_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEstePolilla_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPolilla_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePolilla_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNortePolilla_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteMinador_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurMinador_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteMinador_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteMinador_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteSTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropEsteAzarTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurSTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAzarTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteSTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAzarTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteSTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Sintomatico</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropnorteAzarTetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Azar</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSintomatica1TetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAzar1TetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Azar 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSintomatica2TetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 2</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAzar2TetranychusH_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropesteTetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurTetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteTetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteTetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior1TetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2TetranychusF_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEsteAonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurAonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOesteAonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropNorteAonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior1Aonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropInterior2Aonidella_" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                        <textarea class="form-control" id="comentarioArbol" rows="3"></textarea>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" runat="server">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                       <%-- <div class="modal-body">
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList61" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value="">0</asp:ListItem>
                                    <asp:ListItem Value="">2</asp:ListItem>
                                    <asp:ListItem Value="">3</asp:ListItem>
                                    <asp:ListItem Value="">4</asp:ListItem>
                                    <asp:ListItem Value="">5</asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Selecciona Arbol</strong></label>
                            </div>
                        </div>--%>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
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
                    <asp:Button ID="BtnGuardar" class="btn btn-primary btn-fichar" Text="Guardar" runat="server" data-toggle="modal" data-target="exampleModalCenter" />
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
