<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="documento.aspx.cs" Inherits="Web_COSUDE.catalogo.documento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">

    <link rel="stylesheet" href="../datepicker/css/bootstrap-datepicker3.min.css">
    <link href="../css/select2.min.css" rel="stylesheet" />

    <link href="../fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphCatalogoMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphControlAsistenciaMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphGestionUsuarioMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Documento
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="frmEfecto" runat="server">
        <table class="tbfrm">
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador: *</label>
                        <asp:TextBox ID="txbIdentificador" runat="server" CssClass="form-control" placeholder="Identificador del Documento" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbIdentificador">Título del Documento: *</label>
                        <asp:TextBox ID="txbTituloDoc" runat="server" CssClass="form-control" placeholder="Título del Documento" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="cbResultado">Actividad:</label>
                        <asp:DropDownList CssClass="form-control combobox" ID="cbResultado" runat="server">
                            <asp:ListItem />
                            <asp:ListItem Text="Actividad 1" Value="01" />
                            <asp:ListItem Text="Actividad 2" Value="02" />
                            <asp:ListItem Text="Actividad 3" Value="03" />
                            <asp:ListItem Text="Actividad 4" Value="04" />
                            <asp:ListItem Text="Actividad 5" Value="05" />
                            <asp:ListItem Text="Actividad 6" Value="06" />
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <label for="lbFechaEntrega">Fecha de Entrega: </label>
                </td>
            </tr>
            <tr>
                <td class="tam-mitad">
                    <div class='input-group date'>
                        <span class="input-group-addon">Entregado el: </span>
                        <asp:TextBox ID="txbFechaEstablecidaInicio" runat="server" CssClass="form-control" placeholder="Fecha de Entrega" ReadOnly />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </td>

            </tr>


            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbDescripcionEfecto">Descripción del Documento:</label>
                        <asp:TextBox ID="txbDescripcionEfecto" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción del Documento" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="exampleInputFile">Subir archivo</label>

                        <input id="input-id" type="file" class="file" data-preview-file-type="text" multiple>
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
    </form>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="cphJS1" runat="server">

    <script src="../js/jquery-1.11.3.min.js"></script>
    <!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
     This must be loaded before fileinput.min.js -->
    <script src="../fileinput/js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
    <script src="../fileinput/js/fileinput.min.js" type="text/javascript"></script>


</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">

    <!-- optionally if you need translation for your language then include 
    locale file as mentioned below -->
    <script src="../fileinput/js/fileinput_locale_es.js"></script>
    <script>
        // initialize with defaults
        $("#input-id").fileinput();

        // with plugin options
        $("#input-id").fileinput({ 'showUpload': false, 'previewFileType': 'any' });
    </script>

    <script src="../datepicker/js/bootstrap-datepicker.min.js"></script>
    <script src="../datepicker/locales/bootstrap-datepicker.es.min.js"></script>
    <script>
        $('.input-group.date').datepicker({
            format: "dd-mm-yy",
            language: "es",
            autoclose: true,
            todayHighlight: true
        });
    </script>

    <script src="../js/select2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".combobox").select2({
                placeholder: "Seleccionar un Resultado",
                allowClear: true,
                language: "es"
            });
        });
    </script>

</asp:Content>
