﻿<%@ Page Language="vb" MaintainScrollPositionOnPostback="true" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="GuardadoFinal.aspx.vb" Inherits="cuaderno_campo_gnaturesa.GuardadoFinal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

     <div class="row col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6" style="margin: auto;"> 

         <div class="col-12">
             <br />
        <h2 class="h2 text-center display-4">COMENTARIO DEL MUESTREO</h2>
        <br />
         </div>

         

          <div class="card border-secondary mb-3">
                    <div class="card-header">Comentarios</div>
                    <div class="card-body text-secondary">
                        <textarea runat="server" class="form-control col-10" id="comentarioMuestreoFinal" rows="3"></textarea>
                    </div>
                </div>

         </div>


    <nav class="navbar fixed-bottom navbar-expand-sm navbar-light bg-light text-light">
            <div class="container-fluid text-center">
                <div class="text-center" style="width: 100%">
                    <asp:Button ID="BtnGuardar" class="btn btn-primary btn-fichar" Text="Guardar" runat="server" data-toggle="modal" data-target="exampleModalCenter" />
                </div>
            </div>
        </nav>
</asp:Content>
