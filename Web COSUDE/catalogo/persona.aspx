<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="persona.aspx.cs" Inherits="Web_COSUDE.catalogo.persona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">
    <link href="../bootstrapformhelpers/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
    <link href="../css/select2.min.css" rel="stylesheet" />   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphCatalogoMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphControlAsistenciaMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphGestionUsuarioMenuActivo" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Persona
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">
    <form id="Form1" runat="server">
        <table class="tbfrm">
            <tr>
                <td colspan="3">
                    <div class="form-group">
                        <label for="lbIdentificador">Cedula o Carnet de la Persona:</label>                        
                        <asp:TextBox ID="txbCedulaPersona" runat="server" CssClass="form-control" placeholder="Cedula o Carnet de la Persona" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="form-group">
                        <label for="lbNombrePersona">Nombre:</label>                        
                        <asp:TextBox ID="txbNombrePersona" runat="server" CssClass="form-control" placeholder="Nombre de la Persona" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="tam-tercera-parte">
                    <div class="form-group">
                        <label for="lbNombrePersona">Sexo:</label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="rbHombre" value="true" checked>Hombre
                            </label>

                            <label>
                                <input type="radio" name="optionsRadios" id="rbMujer" value="false">Mujer
                            </label>
                        </div>
                    </div>
                </td>
                <td class="tam-tercera-parte">
                    <div class="form-group">
                        <label for="lbEdadPersona">Edad:</label>                                             
                        <asp:TextBox ID="txbEdad" runat="server" CssClass="form-control bfh-number" data-min="14" data-max="99" />
                    </div>
                </td>
                <td class="tam-tercera-parte">
                    <div class="form-group">
                        <label for="lbTelefonoPersona">Telefono:</label>                                               
                        <asp:TextBox ID="txbTelefono" runat="server" CssClass="form-control bfh-phone" data-format="505 dddd dddd" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="form-group">
                        <label for="lbemailPersona">Correo Electrónico:</label>                        
                        <asp:TextBox ID="txbemailPersona" runat="server" CssClass="form-control" placeholder="Correo Electrónico de la Persona" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="form-group">
                        <label for="lbComunidadPersona">Comunidad:</label>                        
                        <asp:TextBox ID="txbComunidadPersona" runat="server" CssClass="form-control" placeholder="Comunidad de la Persona" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="form-group cargo">
                        <label for="cbResultado">Cargo:</label>
                        <asp:DropDownList CssClass="form-control combobox" ID="cbListaCargo" runat="server">
                            <asp:ListItem />
                            <asp:ListItem Text="Cargo 1" Value="01" />
                            <asp:ListItem Text="Cargo 2" Value="02" />
                            <asp:ListItem Text="Cargo 3" Value="03" />
                            <asp:ListItem Text="Cargo 4" Value="04" />
                            <asp:ListItem Text="Cargo 5" Value="05" />
                            <asp:ListItem Text="Cargo 6" Value="06" />
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="form-group institucion">
                        <label for="cbResultado">Institución:</label>
                        <asp:DropDownList CssClass="form-control combobox" ID="cbListaInstitucion" runat="server">
                            <asp:ListItem />
                            <asp:ListItem Text="Institución 1" Value="01" />
                            <asp:ListItem Text="Institución 2" Value="02" />
                            <asp:ListItem Text="Institución 3" Value="03" />
                            <asp:ListItem Text="Institución 4" Value="04" />
                            <asp:ListItem Text="Institución 5" Value="05" />
                            <asp:ListItem Text="Institución 6" Value="06" />
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="botones-catalogo">
                    <div class="btn-catalogo-navegacion">
                        <asp:LinkButton ID="btnPrimero" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnAnterior" runat="server" Text="<span class='glyphicon glyphicon-backward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnSiguiente" runat="server" Text="<span class='glyphicon glyphicon-forward'></span>" CssClass="btn btn-primary" />
                        <asp:LinkButton ID="btnUltimo" runat="server" Text="<span class='glyphicon glyphicon-fast-forward'></span>" CssClass="btn btn-primary" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="botones-catalogo">
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

    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../bootstrapformhelpers/js/bootstrap-formhelpers.min.js"></script>

    <script src="../js/select2.min.js"></script>
    <script>
        $(document).ready(function () {
            $("div.cargo .combobox").select2({
                placeholder: "Seleccionar un Cargo",
                allowClear: true,
                language: "es"
            });
            $("div.institucion .combobox").select2({
                placeholder: "Seleccionar una Institución",
                allowClear: true,
                language: "es"
            });
        });
    </script>
    

</asp:Content>
