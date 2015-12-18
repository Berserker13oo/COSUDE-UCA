<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="resultado.aspx.cs" Inherits="Web_COSUDE.catalogo.resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">

    <link href="../css/select2.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphCatalogoMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphControlAsistenciaMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphGestionUsuarioMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Resultado
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="Form1" runat="server">
        <table class="tbfrm">
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador:</label>
                        <asp:TextBox ID="txbIdentificadorActividad" runat="server" CssClass="form-control" placeholder="Identificador de Actividad" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="cbResultado">Efecto:</label>
                        <asp:DropDownList CssClass="form-control combobox" ID="cbListaEfecto" runat="server">
                            <asp:ListItem />
                            <asp:ListItem Text="Efecto 1" Value="01" />
                            <asp:ListItem Text="Efecto 2" Value="02" />
                            <asp:ListItem Text="Efecto 3" Value="03" />
                            <asp:ListItem Text="Efecto 4" Value="04" />
                            <asp:ListItem Text="Efecto 5" Value="05" />
                            <asp:ListItem Text="Efecto 6" Value="06" />
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <label for="lbDescripcionResultado">Nombre del Resultado:</label>
                        <asp:TextBox ID="txbNombreResultado" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" placeholder="Nombre del Resultado" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="botones-catalogo">
                    <div class="btn-catalogo-navegacion">
                        <asp:LinkButton ID="btnPrimero" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnAnterior" runat="server" Text="<span class='glyphicon glyphicon-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnSiguiente" runat="server" Text="<span class='glyphicon glyphicon-forward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnUltimo" runat="server" Text="<span class='glyphicon glyphicon-fast-forward'></span>" CssClass="btn btn-primary" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="botones-catalogo">
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
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">

    <script src="../js/select2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".combobox").select2({
                placeholder: "Seleccionar un Efecto",
                allowClear: true,
                language: "es"
            });
        });
    </script>

</asp:Content>
