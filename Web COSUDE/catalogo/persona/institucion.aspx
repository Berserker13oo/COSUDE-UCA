<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site3erNivel.Master" AutoEventWireup="true" CodeBehind="institucion.aspx.cs" Inherits="Web_COSUDE.catalogo.personas.institucion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Institución
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">
    <form id="Form1" runat="server">
        <table class="tbfrm">
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador de la Institución:</label>
                        <asp:TextBox ID="txbInstitucionID" runat="server" CssClass="form-control" placeholder="Identificador de la Institución" ReadOnly />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbNombreInstitucion">Nombre de la Institución:</label>
                        <asp:TextBox ID="txbNombreInstitucion" TextMode="multiline" Rows="1" runat="server" CssClass="form-control" placeholder="Nombre de la Institución" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label for="lbDescripcionInstitucion">Descripción de la Institucion:</label>
                        <asp:TextBox ID="txbDescripcionInstitucion" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción de la Institución" />
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
                        <asp:Button CssClass="btn btn-primary" Text="Nuevo" ID="btnNuevoEfecto" runat="server" OnClick="btnNuevoEfecto_Click" />
                        <asp:Button CssClass="btn btn-primary" Text="Modificar" ID="btnModificarEfecto" runat="server" OnClick="btnModificarEfecto_Click" />
                        <asp:Button CssClass="btn btn-primary" Text="Eliminar" ID="btnEliminarEfecto" runat="server" OnClick="btnEliminarEfecto_Click" />
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
</asp:Content>
