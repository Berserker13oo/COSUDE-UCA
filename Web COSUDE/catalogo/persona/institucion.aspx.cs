using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_COSUDE.catalogo.personas
{
    public partial class institucion : System.Web.UI.Page
    {

        private Modelo.Modelo m = Modelo.Modelo.Instancia;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void AlertMensaje(String Mensaje)
        {
            string script = @"<script type='text/javascript'>" +
                            "alert('" + Mensaje + "'); " +
                        "</script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }


        private void LimpiarCampos()
        {
            this.txbInstitucionID.Text = "";
            this.txbNombreInstitucion.Text = "";
            this.txbDescripcionInstitucion.Text = "";
        }

        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {
            if (this.txbNombreInstitucion.Text == "")
            {
                AlertMensaje("Debe completar los campos requeridos.");
            }
            else
            {
                try
                {
                    m.AgregarInstituciones(this.txbNombreInstitucion.Text, this.txbDescripcionInstitucion.Text);
                }
                catch (Exception ex)
                {
                    AlertMensaje("Ocurrió un problema mientras se realizaba la operación.");
                }
            }
        }

        protected void btnNuevoEfecto_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        protected void btnModificarEfecto_Click(object sender, EventArgs e)
        {
            try
            {
                m.ModificarInstituciones(this.txbNombreInstitucion.Text, Convert.ToInt32(this.txbInstitucionID.Text));
            }
            catch (Exception ex)
            {
                AlertMensaje("Ocurrió un problema mientras se realizaba la operación.");
            }
        }

        protected void btnEliminarEfecto_Click(object sender, EventArgs e)
        {
            try
            {
                m.EliminarInstituciones(Convert.ToInt32(this.txbInstitucionID.Text));
            }
            catch (Exception ex)
            {
                AlertMensaje("Ocurrió un problema mientras se realizaba la operación.");
            }
        }
    }
}