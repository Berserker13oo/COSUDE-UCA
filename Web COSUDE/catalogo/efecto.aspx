<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site2doNivel.Master" AutoEventWireup="true" CodeBehind="efecto.aspx.cs" Inherits="Web_COSUDE.catalogo.efecto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS1" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCSS2" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 977px;
    }
</style>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="cphTituloForm" runat="server">
    Efecto
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphFormulario" runat="server">

    <form id="frmEfecto" runat="server">
        <table class="tbfrm">
            <asp:ScriptManager EnablePageMethods="true" ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <tr>
                <td class="auto-style1">
                    <div class="form-group">
                        <label for="lbIdentificador">Identificador: *</label>
                        <asp:TextBox ID="txbIdentificadorEfecto" runat="server" CssClass="form-control" placeholder="Identificador" />
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


            <tr>
                <td class="botones-catalogo" style="width: 977px">
                    <div class="btn-catalogo-navegacion">
                        <asp:LinkButton ID="btnPrimero" runat="server" Text="<span class='glyphicon glyphicon-fast-backward'></span>" CssClass="btn btn-primary" OnClientClick="return false;"  />
                        <asp:LinkButton ID="btnAnterior" runat="server" Text="<span class='glyphicon glyphicon-backward'></span>" CssClass="btn btn-primary" OnClientClick="return false;" />
                        <asp:LinkButton ID="btnSiguiente" runat="server" Text="<span class='glyphicon glyphicon-forward'></span>" CssClass="btn btn-primary" OnClientClick="return false;" OnClick="btnSiguiente_Click" />
                        <asp:LinkButton ID="btnUltimo" runat="server" Text="<span class='glyphicon glyphicon-fast-forward'></span>" CssClass="btn btn-primary" OnClientClick="return false;" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="botones-catalogo" style="width: 977px">

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

    <script type="text/javascript">
        //Mostrar Datos
        function MostrarDato(Identificador, Nombre, Descripcion) {
            document.getElementById("txbIdentificadorEfecto").value = Identificador;
            document.getElementById("txbNombreEfecto").value = Nombre;
            document.getElementById("txbDescripcionEfecto").value = Descripcion;
        }
    </script>

</asp:Content>
