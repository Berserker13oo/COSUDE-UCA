<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="subactividad.aspx.cs" Inherits="Web_COSUDE.catalogo.subactividad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">
</asp:Content>



<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    SubActividad
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="frmEfecto" runat="server">
        <table class="tbfrm">
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador: *</label>
                        <asp:TextBox ID="txbIdentificadorActividad" runat="server" CssClass="form-control" placeholder="Identificador de la Actividad" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="cbResultado">Resultado:</label>
                        <asp:DropDownList CssClass="form-control combobox" ID="cbResultado" runat="server">
                            <asp:ListItem />
                            <asp:ListItem Text="Punto 1" Value="01" />
                            <asp:ListItem Text="Punto 2" Value="02" />
                            <asp:ListItem Text="Punto 3" Value="03" />
                            <asp:ListItem Text="Punto 4" Value="04" />
                            <asp:ListItem Text="Punto 5" Value="05" />
                            <asp:ListItem Text="Punto 6" Value="06" />
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbNombre">Nombre de la Actividad: *</label>
                        <asp:TextBox ID="txbNombreActividad" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" placeholder="Nombre del Actividad" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="lbFechaEjecucion">Fecha Establecida de la Actividad: </label>
                </td>
            </tr>
            <tr>
                <td class="tam-mitad">
                    <div class='input-group date'>
                        <span class="input-group-addon">Inicio: </span>
                        <asp:TextBox ID="txbFechaEstablecidaInicio" runat="server" CssClass="form-control" placeholder="Fecha de Inicio" ReadOnly />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </td>
                <td class="tam-mitad">
                    <div class='input-group date' id='divFechaEstablecidaFin'>
                        <span class="input-group-addon">Fin: </span>
                        <asp:TextBox ID="txbFechaEstablecidaFin" runat="server" CssClass="form-control" placeholder="Fecha de Finalización" ReadOnly />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <br />
                    <label for="lbFechaEjecucion">Fecha de Ejecución de la Actividad: </label>
                </td>
            </tr>
            <tr>
                <td class="tam-mitad">
                    <div class='input-group date'>
                        <span class="input-group-addon">Inicio: </span>
                        <asp:TextBox ID="txbFechaEjecucionInicio" runat="server" CssClass="form-control" placeholder="Fecha de Inicio" ReadOnly />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </td>
                <td class="tam-mitad">
                    <div class='input-group date' id='div2'>
                        <span class="input-group-addon">Fin: </span>
                        <asp:TextBox ID="txbFechaEjecucionFin" runat="server" CssClass="form-control" placeholder="Fecha de Inicio" ReadOnly />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbDescripcionEfecto">Descripción del efecto:</label>
                        <asp:TextBox ID="txbDescripcionEfecto" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción de la Actividad" />
                    </div>
                </td>
            </tr>


            <tr>
                <td class="botones-catalogo" colspan="2">
                    <div class="btn-catalogo-navegacion">
                        <asp:LinkButton ID="btnPrimero" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnAnterior" runat="server" Text="<span class='glyphicon glyphicon-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnSiguiente" runat="server" Text="<span class='glyphicon glyphicon-forward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnUltimo" runat="server" Text="<span class='glyphicon glyphicon-fast-forward'></span>" CssClass="btn btn-primary" />
                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                            Ver Participantes
                        </button>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="botones-catalogo" colspan="2">
                    
                    <div class="btn-catalogo-crud">
                        <asp:Button CssClass="btn btn-primary" Text="Nuevo" ID="btnNuevoEfecto" runat="server" />
                        <asp:Button CssClass="btn btn-primary" Text="Modificar" ID="btnModificarEfecto" runat="server" />
                        <asp:Button CssClass="btn btn-primary" Text="Eliminar" ID="btnEliminarEfecto" runat="server" />
                        <asp:Button CssClass="btn btn-primary" Text="Guardar" ID="btnGuardarEfecto" runat="server" />
                    </div>
                </td>
            </tr>


        </table>


            <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Asistentes a la Actividad</h4>
      </div>
      <div class="modal-body">

          <asp:GridView ID="ListaParticipantes" runat="server"></asp:GridView>

        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>       
      </div>
    </div>
  </div>
</div>



    </form>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="cphJS1" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">


</asp:Content>
