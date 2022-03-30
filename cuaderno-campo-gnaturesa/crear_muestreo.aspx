<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="crear_muestreo.aspx.vb" Inherits="cuaderno_campo_gnaturesa.muestreo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <!-- Modal: Kilómetros sargentos -->
    <div runat="server" id="htmlcontenedor" class="col-md-9 scroll"></div>

    <div class="container-fluid">
        <br />
        <h2 class="h2 text-center display-4">MEDICIONES</h2>
        <br />

        <div class="col-sm-12 col-md-10 col-lg-8 col-xl-6 col-xxl-4" style="margin: auto;" id="accordion_hoja">
            <div class="card">


                <div id="collapse_generales" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordion_hoja">
                    <div class="accordion-body">
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDown_empresa" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Empresa</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Empresa</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDown_Finca" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Finca</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Finca</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDown_Sector" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Sector</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Sector</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:TextBox ID="TextBox_fecha" type="date" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
                            <label for="floatingInput"><strong>Fecha</strong></label>
                        </div>
                        <br />
                        <div class="form-floating">
                            <asp:DropDownList ID="DropDown_Grupos" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                <asp:ListItem Value="0">Selecciona Grupo</asp:ListItem>
                                <asp:ListItem Value="1">Pares</asp:ListItem>
                                <asp:ListItem Value="2">Impares</asp:ListItem>
                                <asp:ListItem Value="3">Todos</asp:ListItem>
                                <asp:ListItem Value="4">Aleatorios</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Grupo</strong></label>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-10">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDown_Plaga" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value="0">Selecciona Plaga</asp:ListItem>


                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Plaga</strong></label>
                                </div>
                            </div>
                            <div class="col-2">
                                <asp:LinkButton ID="btnAddPlaga" class="btn btn-primary" runat="server"><i class="fas fa-plus"></i></asp:LinkButton>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-10" runat="server" id="DropPlaga2" visible="false">

                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDown_Plaga2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value="0">Selecciona Plaga</asp:ListItem>

                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Plaga</strong></label>
                                </div>
                            </div>

                            <div class="col-2">
                                <asp:LinkButton ID="btnDelPlaga" class="btn btn-primary" runat="server" Visible="false"><i class="fas fa-minus"></i></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <br />


                    <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:LinkButton class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" runat="server"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Generar Muestreo</asp:LinkButton>
                    </div>


                    <%--Modal--%>
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <asp:DropDownList ID="DropDown_NArbol" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                        <asp:ListItem Value="0">Selecciona Arbol</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                    <label for="floatingInput"><strong>Grupo</strong></label>
                                </div>

                                <div class="modal-footer">
                                    <asp:LinkButton runat="server" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</asp:LinkButton>
                                    <asp:LinkButton ID="botonAceptar" runat="server" type="button" class="btn btn-primary">Generar Muestreo</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
               <!-- Fin Modal -->
                
                </div>
            </div>
        </div>
    </div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server"> 

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/webcam.js" type="text/javascript"></script>

    <script type="text/javascript">

        //DOM Generar codigo HTML.

        const div = document.createElement("div");
        div.id = "IdCreado";
        div.className = "test"
        div.style = "color: red";

        const DropTest = document.createElement("DropDownList");







    </script>



</asp:Content>


















