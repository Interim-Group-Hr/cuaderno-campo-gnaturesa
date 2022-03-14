<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="crear_muestreo.aspx.vb" Inherits="cuaderno_campo_gnaturesa.muestreo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <!-- Modal: Kilómetros sargentos -->
     
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
                            <asp:DropDownList ID="DropDown_lista" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Finca</strong></label>
                        </div>
                        <br />
                         <div class="form-floating">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
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
                        <br />
                        <div class="form-floating">
                            <asp:TextBox ID="TextBox_fecha" type="date" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
                            <label for="floatingInput"><strong>Fecha</strong></label>
                        </div>
                        <br />
                         <div class="form-floating">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                 <asp:ListItem Value=""></asp:ListItem>
                                 <asp:ListItem Value="1">Pares</asp:ListItem>
                                 <asp:ListItem Value="2">Inpares</asp:ListItem>
                                 <asp:ListItem Value="3">Todos</asp:ListItem>
                                 <asp:ListItem Value="4">Aleatorio</asp:ListItem>
                            </asp:DropDownList>
                            <label for="floatingInput"><strong>Grupo</strong></label>
                             </div>
                        <br />

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-11">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-select" aria-label="Default select example" AutoPostBack="true">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="1">Pulgon</asp:ListItem>
                                            <asp:ListItem Value="2">mosca</asp:ListItem>

                                        </asp:DropDownList>
                                        <label for="floatingInput"><strong>Plaga</strong></label>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <a href="#" class="btn btn-primary"><i aria-hidden="true"></i>+</a>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="d-grid gap-2 col-6 mx-auto">
                              <a href="MedicionMuestreo.aspx" class="btn btn-primary"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Generar Muestreo</a>
                        </div>        
                     </div>
                    </div>
                   </div>
                    </div>
        </div>
     
</asp:Content>