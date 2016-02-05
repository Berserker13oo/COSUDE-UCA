using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_COSUDE.Modelo;

namespace Web_COSUDE.catalogo
{
    public partial class efectos : System.Web.UI.Page
    {

        private Modelo.Modelo m = Modelo.Modelo.Instancia;
        private List<SPObtenerEfecto_Result> ListaEfectos = new List<SPObtenerEfecto_Result>();
        //int Posicion = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
            // MostrarDatos();
        }





        private void MostrarDatos()
        {
            //this.txbIdentificadorEfecto.Text = ListaEfectos[Posicion].efectoID;
            //this.txbNombreEfecto.Text = ListaEfectos[Posicion].Nombre;
            //this.txbDescripcionEfecto.Text = ListaEfectos[Posicion].Descripción;
        }

        private void CargarDatos()
        {
            ListaEfectos.Clear();
            ListaEfectos = m.GetEfectos().ToList();
        }

        public String CargarTabla()
        {
            String Tabla = "";
               
               for(int i = 0; i <= (ListaEfectos.Count() - 1); i++)
               {
                   Tabla += "<tr>"+
                    "<td class=\"centrar column-reducir\"> <div class=\"checkbox\">"+
                   "<label><input class=\"checkbox1\" type=\"checkbox\" name=\"check[]\" value=\"" + ListaEfectos[i].efectoID.ToString() + "\"></label></div>" +
                   "</td>" +
                   "<td class=\"centrar\" data-class-name=\"priority\">" + (i + 1) + "</td>" +                      
                   "<td class=\"justificar\">" +
                   ListaEfectos[i].Nombre.ToString() +
                   "</td>"+
                   "<td class=\"justificar\">" +
                   ListaEfectos[i].Descripción.ToString() +
                   "</td>"+
                   "<td class=\"botones-catalogo\">" +
                   "<button type=\"button\" class=\"btn btn-success btn-xs\" data-toggle=\"modal\" data-target=\"#modalEditar\" title=\"Editar Efecto\"" +                   
                   "data-idefecto=\"" + ListaEfectos[i].efectoID.ToString() + "\"" +
                   "data-nombreefecto=\"" + ListaEfectos[i].Nombre.ToString() + "\""+
                   "data-descripcionefecto=\"" + ListaEfectos[i].Descripción.ToString() + "\"><i class=\"glyphicon glyphicon-pencil\"></i></button>" +
                   "<button type=\"button\" class=\"btn btn-danger btn-xs glyphicon glyphicon-remove\" data-toggle=\"modal\" data-target=\"#modalEliminar\" title=\"Eliminar Efecto\" onclick=\"cargarDatos('<%=t.getIdTaller()%>', '<%=t.getIdCuatrimestre()%>','<%=t.getNombre()%>','<%=t.getDescripcion()%>','<%=t.getFechaInicio()%>','<%=t.getFechaFinal()%>');\"></button>" +
                   "</td></tr>";
               }

               

           return Tabla;
        }





    }
}