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

        <%--Cartel de advertencia--%>
        <asp:Panel runat="server" ID="PanelError" Visible="false">
            <div class="alert alert-danger" role="alert">FALTAN DATOS POR RELLENAR</div>
        </asp:Panel>

        <%--CheckBox Fruto--%>
        <div class="container-fluid">
            <asp:Panel runat="server" ID="checkNoMuestreo" Visible="false">
                <asp:CheckBox Text="Hoja" runat="server" ID="CheckHoja" AutoPostBack="true" />
                <asp:CheckBox Text="Fruto" runat="server" ID="CheckFruto" AutoPostBack="true" />
            </asp:Panel>
            <asp:CheckBox Text="Fenología" runat="server" ID="CheckfireFeno" AutoPostBack="true" />
        </div>


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
                                    <asp:DropDownList ID="DropNorteFenologia_74" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Norte</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropSurFenologia_72" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Sur</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropOesteFenologia_73" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Oeste</strong></label>
                                </div>

                            </div>
                            <div class="col-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropEsteFenologia_71" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Este</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropInt1Fenologia_75" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Interior 1</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropInt2Fenologia_76" Class="ClsFenologia" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                            <asp:DropDownList ID="DropEstePulgonS_1" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropSurPulgonS_2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropOestePulgonS_3" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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

            <div class="col-sm-6" id="pulgonOcupado" runat="server" visible="false">
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

            <!-- Mosca blanca 2 -->


            <div class="row" runat="server" id="MoscaBlanca2" visible="false">
                <div class="col-sm-6" runat="server" id="Div4">
                    <div class="card border-secondary mb-3" id="SeccionMoscaBlanca2" runat="server">
                        <div class="card-header">Mosca Blanca 2 - Azar Adulto</div>
                        <div class="card-body text-secondary">

                            <div class="form-floating">
                                <asp:DropDownList ID="DropEsteAdulto_91" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Este </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSurAdultos_92" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sur </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropOesteAdultos_93" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Oeste </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteAdultos_94" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAdultosInteriorAzar1_95" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 1 </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropAdultosInteriorAzar2_96" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 2 </strong></label>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="col-sm-6" runat="server" id="Div5">
                    <div class="card border-secondary mb-3" id="SeccionMoscaBlanca2_1" runat="server">
                        <div class="card-header">Mosca Blanca 2 - Azar Larvas L1-L2</div>
                        <div class="card-body text-secondary">

                            <div class="form-floating">
                                <asp:DropDownList ID="DropEsteLarvas_97" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Este </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSurLarvas_98" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sur </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropOesteLarvas_99" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Oeste </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteLarvas_100" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropL1L2InteriorAzar1_101" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 1 </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropL1L2InteriorAzar2_102" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 2 </strong></label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6" runat="server" id="Div6">
                    <div class="card border-secondary mb-3" id="SeccionMoscaBlanca2_2" runat="server">
                        <div class="card-header">Mosca Blanca 2 - Azar Larvas L3-L4</div>
                        <div class="card-body text-secondary">

                            <div class="form-floating">
                                <asp:DropDownList ID="DropEsteLarvas2_103" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Este </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSurLarvas2_104" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sur </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropOesteLarvas2_105" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Oeste </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteLarvas2_106" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropL3L4InteriorAzar1_107" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 1 </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropL3L4InteriorAzar2_108" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 2 </strong></label>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-sm-6" runat="server" id="Div7">
                    <div class="card border-secondary mb-3" id="SeccionMoscaBlanca2_3" runat="server">
                        <div class="card-header"><div style="float:left">Mosca Blanca 2 - Huevos</div></div>
                        <div class="card-body text-secondary">

                            <div class="form-floating">
                                <asp:DropDownList ID="DropEsteHuevos_109" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Este </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropSurHuevos_110" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sur </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropOesteHuevos_111" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Oeste </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropNorteHuevo_112" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte </strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropHuevosInteriorAzar1_113" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 1 </strong></label>
                            </div>

                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropHuevosInteriorAzar2_114" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Interior Azar 2 </strong></label>
                            </div>

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

            <div class="modal fade" id="ModalSelect" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-bs-target="#staticBackdrop" data-bs-backdrop="static">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Añadir árbol</h5>
                            <div class="modal-header">
                              <!--  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>  -->
                            </div>
                        </div>
                        <div class="modal-body">

                            <asp:DropDownList ID="DropDown_NArbol" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Arbol</asp:ListItem>

                            </asp:DropDownList>


                        </div>
                        <div class="modal-footer">
                            <%-- <asp:LinkButton Text="Cerrar" class="btn btn-secondary" runat="server" />--%>
                            <asp:LinkButton ID="btnTerminar" data-bs-toggle="modal" data-bs-target="#ModalConfirmar" Text="Terminar Muestreo" runat="server" class="btn btn-primary" />
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
                    <asp:LinkButton ID="guardarArbol" class="btn btn-primary" runat="server"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Guardar árbol</asp:LinkButton>
                    <asp:LinkButton ID="BtnGuardar" data-bs-toggle="modal" data-bs-target="#ModalConfirmar" class="btn btn-primary" runat="server"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Terminar Muestreo</asp:LinkButton>

                </div>
            </div>
        </nav>

    </div>


    <!-- Cuadro de dialogo/elección de arbol -->

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/webcam.js" type="text/javascript"></script>

    <script type="text/javascript">

        //Comprobar que todos los datos estén rellenos. guardarArbol Class="ClsFenologia"

        $(function () {
            $("[id*=guardarArbol]").click(function () {
                var ddlFenologia = document.getElementsByClassName("ClsFenologia");
                if (ddlFenologia.val() == "") {
                    //If the "Please Select" option is selected display error.
                    alert("Rellene todos los datos");
                    return false;
                }
                return true;
            });
        });




      <%    If Request.Form("ctl00$content$DropDown_NArbol") = "" Then %>
        $(window).on('load', function () {
            $('#ModalSelect').modal('show');
        });
        <% End If %>


    </script>

</asp:Content>

