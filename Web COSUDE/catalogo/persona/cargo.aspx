<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site3erNivel.Master" AutoEventWireup="true" CodeBehind="cargo.aspx.cs" Inherits="Web_COSUDE.catalogo.personas.cargo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphCatalogoMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphControlAsistenciaMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphGestionUsuarioMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Cargo
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="Form1" runat="server">
        <table class="tbfrm">
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador del Cargo:</label>
                        <asp:TextBox ID="txbCargoID" runat="server" CssClass="form-control" placeholder="Identificador del Cargo" readonly/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbNombreCargo">Nombre del Cargo:</label>
                        <asp:TextBox ID="txbNombreCargo" TextMode="multiline" Rows="1" runat="server" CssClass="form-control" placeholder="Nombre del Cargo" />
                    </div>

                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbDescripcionCargo">Descripción del Cargo:</label>
                        <asp:TextBox ID="txbDescripcionCargo" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción del Cargo" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="botones-catalogo">
                    <div class="btn-catalogo-navegacion">
                        <asp:LinkButton ID="btnPrimero" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnAnterior" runat="server" Text="<span class='glyphicon glyphicon-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnSiguiente" runat="server" Text="<span class='glyphicon glyphicon-forward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnUltimo" runat="server" Text="<span class='glyphicon glyphicon-fast-forward'></span>" CssClass="btn btn-primary" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="botones-catalogo">
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
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="cphJS2" runat="server">
</asp:Content>
