using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP6_GRUPO3.Clases;

namespace TP6_GRUPO3
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                CargarDataList();
            }
        }

        public void CargarDataList()
        {
            GestionProvincias gProvincias = new GestionProvincias();
            dlProvincias.DataSource = gProvincias.obtenerTodasLasProvincias();
            dlProvincias.DataBind();
        }

        
    }
}