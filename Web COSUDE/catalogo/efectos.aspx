<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="efectos.aspx.cs" Inherits="Web_COSUDE.catalogo.efectos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">

    <link rel="stylesheet" type="text/css" href="../js/tablejs/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="../js/tablejs/dataTables.bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Efectos
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="frmEfecto" runat="server">
        <div class="table-responsive">
            <table id="tbdatos" class="display" cellspacing="0" width="100%" data-order='[[ 1, "asc" ]]'>

                <thead>
                    <tr class="text-center tablebotones">
                        <td colspan="3">
                            <!-- Modal agregar -->
                            <button type="button" class="btn btn-danger glyphicon glyphicon-trash" data-toggle="modal" title="Eliminar Seleccionados"
                                data-target=".bs-example-modal-lg">
                            </button>
                            <!-- Modal Eliminar Seleccionados -->
                            <button type="button" class="btn btn-primary glyphicon glyphicon-plus" data-toggle="modal"
                                data-target=".bs-example-modal-lg" title="Agregar Nuevo Efecto">
                            </button>
                        </td>
                        
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="text-center">
                        <th>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="selectall"></label>
                            </div>
                        </th>
                        <th>Nº</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th><span class="nobr">Acción</span></th>
                    </tr>

                </thead>
                <tbody>
                    <%
                        Response.Write(this.CargarTabla());
                    %>
                </tbody>
            </table>
        </div>



        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="H1">Agregar Efecto</h4>
                    </div>
                    <div class="modal-body">
                        <table class="tbfrm">
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbIdentificador">Identificador: *</label>
                                        <asp:TextBox ID="idEfecto" runat="server" CssClass="form-control" placeholder="Identificador" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbNombreEfecto">Nombre del efecto: *</label>
                                        <asp:TextBox ID="nombreEfecto" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" placeholder="Nombre del Efecto" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbDescripcionEfecto">Descripción del efecto:</label>
                                        <asp:TextBox ID="descripcionEfecto" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción del Efecto" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar Cambios</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Fin del modal de agregar -->

        <!-- Modal Editar -->
        <div class="modal fade" id="modalEditar" tabindex="-1" role="dialog" aria-labelledby="ModalEditarEfecto">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Editar Efecto</h4>
                    </div>
                    <div class="modal-body">
                        <table class="tbfrm">
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbIdentificador">Identificador: *</label>
                                        <asp:TextBox ID="txbIdentificadorEfecto" runat="server" CssClass="form-control" placeholder="Identificador" ReadOnly />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbNombreEfecto">Nombre del efecto: *</label>
                                        <asp:TextBox ID="txbNombreEfecto" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" placeholder="Nombre del Efecto" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <div class="form-group">
                                        <label for="lbDescripcionEfecto">Descripción del efecto:</label>
                                        <asp:TextBox ID="txbDescripcionEfecto" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción del Efecto" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar Cambios</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Final del modal de editar -->


        <!-- Inicio del modal para eliminar registro -->

        <div class="modal fade" id="modalEliminar" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">x</span>
                        </button>
                        <h5 class="modal-title"><b>Eliminar Efecto</b></h5>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal form-label-left" name="form" method="post" action="">
                            <div class="item form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <input type="hidden" name="idTallerEliminar" id="idTallerEliminar">
                                    <!-- <input type="text" name="nombre_TallerEliminado" id="nombre_TallerEliminado" disabled="disabled"> -->
                                    <p>¿Seguro que desea eliminar este efecto?</p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Eliminar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Fin del modal de eliminar  -->

    </form>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="cphJS1" runat="server">



    <script src="../js/jquery-2.1.1.min.js"></script>


    <script type="text/javascript" src="https://cdn.datatables.net/s/dt/dt-1.10.10,r-2.0.0/datatables.min.js"></script>
    <script type="text/javascript" src="../js/tablejs/dataTables.bootstrap.min.js"></script>
    <script>

        $('#tbdatos').DataTable({
            "columnDefs": [
    { "orderable": false, "targets": 0 },
            { "orderable": false, "targets": 4 },
            { "width": "2%", "targets": 0 },
            { "width": "2%", "targets": 1 },
            { "width": "7%", "targets": 4 }
        ],
        responsive: true,
            language: {
                "sProcessing": "Procesando...",
                "sLengthMenu": "Mostrar _MENU_ registros",
                "sZeroRecords": "No se encontraron resultados",
                "sEmptyTable": "Ningún dato disponible en esta tabla",
                "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                "sInfoPostFix": "",
                "sSearch": "Buscar:",
                "sUrl": "",
                "sInfoThousands": ",",
                "sLoadingRecords": "Cargando...",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast": "Último",
                    "sNext": "Siguiente",
                    "sPrevious": "Anterior"
                },
                "oAria": {
                    "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                }
            }
        });

    </script>

    <script>
        $('#modalEditar').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var IdEfecto = button.data('idefecto')
            var NombreEfecto = button.data('nombreefecto')
            var DescripcionEfecto = button.data('descripcionefecto')

            var modal = $(this)
            modal.find('.modal-title').text('Editar Efecto')
            modal.find('.modal-body #cphFormulario_txbIdentificadorEfecto').val(IdEfecto)
            modal.find('.modal-body #cphFormulario_txbNombreEfecto').val(NombreEfecto)
            modal.find('.modal-body #cphFormulario_txbDescripcionEfecto').val(DescripcionEfecto)
        })

        $(document).ready(function () {
            $("#selectall").change(function () {
                $(".checkbox1").prop('checked', $(this).prop("checked"));
            });
        });


        



    </script>

</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">
</asp:Content>
