using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TP6_GRUPO3.Clases
{
    public class GestionProvincias 
    {
        public GestionProvincias()
        {

        }

        private DataTable ObtenerTabla(String Nombre, String Sql)
        {
            DataSet ds = new DataSet();
            Conexion datos = new Conexion();
            SqlDataAdapter adp = datos.ObtenerAdaptador(Sql);
            adp.Fill(ds, Nombre);
            return ds.Tables[Nombre];
        }
        public DataTable obtenerTodasLasProvincias()
        {
            return ObtenerTabla("Provincia", "Select * from Provincia");
        }
    }
}