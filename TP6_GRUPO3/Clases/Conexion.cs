using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Net;

namespace TP6_GRUPO3.Clases
{
    public class Conexion
    {

        
        string ruta = "Data Source=" + Dns.GetHostName() + "\\sqlexpress; Initial Catalog=BDSucursales; Integrated Security=True";

        //string ruta = "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales; Integrated Security=True"; CON ESTA RUTA SE ENTREGA EL TP

    }
}