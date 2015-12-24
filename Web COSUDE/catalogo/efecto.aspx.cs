using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_COSUDE.Modelo;

namespace Web_COSUDE.catalogo
{
    public partial class efecto : System.Web.UI.Page
    {
        private Modelo.Modelo m = Modelo.Modelo.Instancia;
        private List<SPObtenerEfecto_Result> ListaEfectos = new List<SPObtenerEfecto_Result>();
        int Posicion = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
            MostrarDatos();
        }

        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {
            if (this.txbIdentificadorEfecto.Text == "" || this.txbNombreEfecto.Text == "")
            {
                AlertMensaje("Debe completar los campos requeridos");
            }
            else
            {
                try
                {
                    m.AgregarEfecto(this.txbIdentificadorEfecto.Text, this.txbNombreEfecto.Text, this.txbDescripcionEfecto.Text);
                    //AlertMensaje("Registro ingresado con éxito");
                }
                catch (Exception ex)
                {
                    AlertMensaje("Ocurrió un error mientras se realizaba la operación solicitada. " + ex);
                }
            }
        }

        private void AlertMensaje(String Mensaje)
        {
            string script = @"<script type='text/javascript'>" +
                            "alert('" + Mensaje + "'); " +
                        "</script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }

        private void MostrarDatos()
        {
            this.txbIdentificadorEfecto.Text = ListaEfectos[Posicion].efectoID;
            this.txbNombreEfecto.Text = ListaEfectos[Posicion].Nombre;
            this.txbDescripcionEfecto.Text = ListaEfectos[Posicion].Descripción;
        }

        private void CargarDatos()
        {
            ListaEfectos.Clear();
            ListaEfectos = m.GetEfectos().ToList();
        }




    }
}