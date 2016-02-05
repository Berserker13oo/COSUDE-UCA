using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_COSUDE.catalogo.personas
{
    public partial class cargo : System.Web.UI.Page
    {

        private Modelo.Modelo m = Modelo.Modelo.Instancia;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarCampos()
        {
            this.txbCargoID.Text = "";
            this.txbNombreCargo.Text = "";
            this.txbDescripcionCargo.Text = "";
        }

        private void AlertMensaje(String Mensaje)
        {
            string script = @"<script type='text/javascript'>" +
                            "alert('" + Mensaje + "'); " +
                        "</script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }


        protected void btnNuevoEfecto_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {

            if (this.txbNombreCargo.Text == "")
            {
                AlertMensaje("Debe completar los campos requeridos");
            }
            else
            {

                try
                {
                    m.AgregarCargos(this.txbNombreCargo.Text, this.txbDescripcionCargo.Text);
                }
                catch (Exception ex)
                {
                    AlertMensaje("Ocurrió un problema con la operación solicitada.");
                }
            }
        }
        

        protected void btnEliminarEfecto_Click(object sender, EventArgs e)
        {
            try
            {
                m.EliminarCargos(Convert.ToInt32(this.txbCargoID.Text));
            }
            catch (Exception ex)
            {
                AlertMensaje("Ocurrió un problema con la operación solicitada.");
            }
        }

        protected void btnModificarEfecto_Click(object sender, EventArgs e)
        {
            try
            {
                m.ModificarCargos(Convert.ToInt32(this.txbCargoID.Text), this.txbNombreCargo.Text, this.txbDescripcionCargo.Text);
            }
            catch (Exception ex)
            {
                AlertMensaje("Ocurrió un problema con la operación solicitada.");
            }
        }

        
    }
}