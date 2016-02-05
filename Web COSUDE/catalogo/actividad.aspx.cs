using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_COSUDE.catalogo
{
    public partial class actividad : System.Web.UI.Page
    {
        private Modelo.Modelo m = Modelo.Modelo.Instancia;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.cargarDropDownListActividad();
        }

        private void cargarDropDownListActividad()
        {
            this.cbResultado.DataSource = m.GetListaActividades().ToList();
            this.cbResultado.DataTextField = "NombreActividad";
            this.cbResultado.DataValueField = "actividadID";
            this.cbResultado.DataBind();
        }

        protected void btnGuardarEfecto_Click(object sender, EventArgs e)
        {

        }
    }
}