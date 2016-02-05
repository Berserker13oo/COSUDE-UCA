using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_COSUDE.catalogo
{
    public partial class resultado : System.Web.UI.Page
    {
        Modelo.Modelo m = Modelo.Modelo.Instancia;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.cargarDropDownListEfecto();
        }

        private void cargarDropDownListEfecto()
        {
            this.cbListaEfecto.DataSource = m.GetEfectos().ToList();
            this.cbListaEfecto.DataTextField = "Nombre";
            this.cbListaEfecto.DataValueField = "efectoID";
            this.cbListaEfecto.DataBind();
        }
       
        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {
            this.m.AgregarResultado(this.txbIdentificadorActividad.Text, this.txbNombreResultado.Text, this.cbListaEfecto.SelectedValue);
        }

        protected void cbListaEfecto_SelectedIndexChanged(object sender, EventArgs e)
        {
            String value = this.cbListaEfecto.SelectedValue;
            this.txbIdentificadorActividad.Text = value;
        }



    }
}