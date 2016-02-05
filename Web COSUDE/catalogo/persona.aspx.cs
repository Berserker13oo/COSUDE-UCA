using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_COSUDE.catalogo
{
    public partial class persona : System.Web.UI.Page
    {

        private Modelo.Modelo m = Modelo.Modelo.Instancia;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.cargarDropDownListCargo();
            this.cargarDropDownListInstitucion();
        }

        private void cargarDropDownListCargo()
        {
            try
            {
                this.cbListaCargo.DataSource = m.GetCargos();
                this.cbListaCargo.DataTextField = "NombreCargo";
                this.cbListaCargo.DataValueField = "cargoID";
                this.cbListaCargo.DataBind();
            }
            catch (Exception ex)
            { 
                
            }
        }

        private void cargarDropDownListInstitucion()
        {
            try
            {
                this.cbListaInstitucion.DataSource = m.GetInstituciones();
                this.cbListaInstitucion.DataTextField = "Nombre";
                this.cbListaInstitucion.DataValueField = "InstitucionId";
                this.cbListaInstitucion.DataBind();
            }
            catch (Exception ex)
            { 
                
            }
        }

        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {
            bool sexo;
            if (this.rbH.Selected == true)
            {
                sexo = true;
            }
            else
            {
                sexo = false;
            }
            
            try{
                this.m.AgregarPersonas(this.txbCedulaPersona.Text, this.txbNombrePersona.Text, sexo, this.txbTelefono.Text,
                    Convert.ToInt32(this.txbEdad.Text), this.txbComunidadPersona.Text, this.txbemailPersona.Text,
                    Convert.ToInt32(this.cbListaCargo.SelectedValue), Convert.ToInt32(this.cbListaInstitucion.SelectedValue));
            }
            catch (Exception ex)
            { 
                
            }
        }
    }
}