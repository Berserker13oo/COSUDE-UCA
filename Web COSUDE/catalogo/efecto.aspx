<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="efecto.aspx.cs" Inherits="Web_COSUDE.catalogo.efecto" %>
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
    Efecto
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="frmEfecto" runat="server">
                                        <table class="tbfrm">


                                            <tr>
                                                <td>

                                                    <div class="form-group">
                                                        <label for="lbIdentificador">Identificador: *</label>
                                                        <asp:TextBox ID="txbIdentificadorEfecto" runat="server" CssClass="form-control" placeholder="Identificador" Required />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <label for="lbNombreEfecto">Nombre del efecto: *</label>
                                                        <asp:TextBox ID="txbNombreEfecto" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" placeholder="Nombre del Efecto" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <label for="lbDescripcionEfecto">Descripción del efecto:</label>
                                                        <asp:TextBox ID="txbDescripcionEfecto" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" placeholder="Descripción del Efecto" />
                                                    </div>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td class="botones-catalogo">
                                                    <div class="btn-catalogo-navegacion">                                                        
                                                        <asp:LinkButton ID="a" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" />
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
