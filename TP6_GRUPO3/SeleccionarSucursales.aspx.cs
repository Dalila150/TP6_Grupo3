using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP6_GRUPO3.Clases;
using System.Data;

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

        protected void btnSelecc_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoSeleccionar")
            {
                if (Session["DatosEnviados"] == null)
                {
                    Session["DatosEnviados"] = CrearTabla();
                }

                Conexion conexion = new Conexion();

                string Nombre = "select NombreSucursal where Id_Sucursal =" + e.CommandArgument.ToString(), Descripcion = "select DescripcionSucursal where Id_Sucursal =" + e.CommandArgument.ToString();

                AgregarFila((DataTable)Session["DatosEnviados"], e.CommandArgument.ToString(), conexion.DevolverDatos(Nombre), conexion.DevolverDatos(Descripcion)); 

            }
        }


        public DataTable CrearTabla()
        {
            DataTable dt = new DataTable();
            DataColumn Columna = new DataColumn("IdSucursal", System.Type.GetType("System.string")); 
            dt.Columns.Add(Columna);
            Columna = new DataColumn("NOMBRE", System.Type.GetType("System.string"));
            dt.Columns.Add(Columna);
            Columna = new DataColumn("Descripcion", System.Type.GetType("System.string"));
            dt.Columns.Add(Columna);
            return dt;
        }

        public void AgregarFila(DataTable Tabla, string ID_SUCURSAL, string NOMBRE_SUCURSAL, string DESCRIPCION)
        {
            DataRow dr = Tabla.NewRow();
            dr["ID_SUCURSAL"] = ID_SUCURSAL;
            dr["NOMBRE_SUCURSAL"] = NOMBRE_SUCURSAL;
            dr["DESCRIPCION"] = DESCRIPCION;
            Tabla.Rows.Add(dr);
        }

    }
}