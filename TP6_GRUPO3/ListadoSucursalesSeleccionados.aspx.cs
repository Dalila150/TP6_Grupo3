﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_GRUPO3
{
    public partial class ListadoSucursalesSeleccionados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                gvSeleccionados.DataSource = (DataTable)Session["DatosEnviados"];
                gvSeleccionados.DataBind();
            }
        }
    }
}