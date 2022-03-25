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
            <div class="col-12">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Fenología</div>
                    <div class="card-body text-secondary">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownNorte" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Norte</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownSur" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Sur</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownOeste" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Oeste</strong></label>
                                </div>

                            </div>
                            <div class="col-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownEste" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Este</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownInterior1" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Interior 1</strong></label>
                                </div>
                                <br />
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownInterior2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                <div class="card border-secondary mb-3">
                    <div class="card-header">Pulgon - Brotes Sensibles</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownAEste" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownAsur" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownAoeste" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownNor" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-sm-6" id="pulgonOcupado" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Pulgon - Brotes Ocupados</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Anillo Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>


                    </div>
                </div>
            </div>


            <%-- PLAGA EUTETRANYCUS--%>

            <div class="col-sm-6" id="EutetranychusHoja" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">EUTETRANYCHUS - HOJA</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownEazar" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownSurAzar" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownOesteAzar" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownNorteAzar" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownInteriorAzar1" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownInteriorAzar2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 2</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-sm-6" id="EutetranychusFruto" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">EUTETRANYCHUS - FRUTO</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 2</strong></label>
                        </div>
                    </div>
                </div>
            </div>


            <!-- MOSCA BLANCA -->

            <div class="col-sm-6" id="Mosca" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Mosca Blanca - Hoja</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList13" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList14" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList15" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList16" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior Azar 2</strong></label>
                        </div>


                    </div>
                </div>
            </div>

            <!-- Trip Orquedea -->

            <div class="col-sm-6" id="Orquidea" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Trip Orquidea - Fruto </div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList17" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList18" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList19" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList20" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Planococcus -->

            <div class="col-sm-6" id="Planococus" runat="server" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Planococcus - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList21" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList22" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList23" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList24" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Polilla -->

            <div class="col-sm-6" runat="server" id="polilla" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Polilla - Flores</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList25" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList26" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList27" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList28" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- El Minador -->

            <div class="col-sm-6" runat="server" id="minador" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Minador - Brotacion</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList29" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList30" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList31" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList32" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tetranychus -->

            <div class="col-sm-6" runat="server" id="TetranychusHoja" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Tetranychus - Hoja</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList39" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList40" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList41" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList42" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList43" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList44" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur Azar</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList51" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList52" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Sintomatico</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList53" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste Azar</strong></label>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList54" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList55" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Sintomatico</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList56" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Norte Azar</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList57" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList58" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Azar 1</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList59" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Sintomatica 2</strong></label>
                            </div>
                            <br />
                            <div class="form-floating">
                                <asp:DropDownList ID="DropDownList60" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                    <asp:ListItem Value=""></asp:ListItem>
                                </asp:DropDownList>
                                <label for="floatingInput"><strong>Azar 2</strong></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6" runat="server" id="TetranychusFruto" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Tetranychus - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList45" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList46" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList47" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList48" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList49" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList50" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 2</strong></label>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Aonidella -->

            <div class="col-sm-6" runat="server" id="Aonidella" visible="false">
                <div class="card border-secondary mb-3">
                    <div class="card-header">Aonidella - Fruto</div>
                    <div class="card-body text-secondary">

                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList33" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Este</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList34" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sur</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList35" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Oeste</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList36" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Norte</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList37" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value=""></asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Interior 1</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDownList38" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
