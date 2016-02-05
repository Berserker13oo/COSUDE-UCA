<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="actividad.aspx.cs" Inherits="Web_COSUDE.catalogo.actividad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
    <script src="../js/jquery-1.11.3.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">

    <link rel="stylesheet" href="../datepicker/css/bootstrap-datepicker3.min.css">    
     <link href="../css/select2.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Actividad
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
                        <label for="lbDescripcionActividad">Descripción de la Actividad:</label>
                        <asp:TextBox ID="txbDescripcionActividad" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción de la Actividad" />
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
                        <asp:Button CssClass="btn btn-primary" Text="Guardar" ID="btnGuardarEfecto" runat="server" OnClick="btnGuardarEfecto_Click" />
                    </div>
                </td>
            </tr>


        </table>
    </form>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="cphJS1" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">


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
