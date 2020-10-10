using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Web.WebSockets;
using System.Data;

namespace TP6_GRUPO3.Clases
{
    public class Conexion
    {

        string ruta = "Data Source=localhost\\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True";

        //string ruta = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=BDSucursales;Persist Security Info=True;User ID=sa;Password=123456";

        //string ruta = "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales; Integrated Security=True"; CON ESTA RUTA SE ENTREGA EL TP

        public Conexion()
        {

        }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection conexion = new SqlConnection(ruta);
            try
            {
                conexion.Open();
                return conexion;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        
        public SqlDataAdapter ObtenerAdaptador(String consultaSQL)
        {   //creo valiable
            SqlDataAdapter adaptador;
            try
            {  //instancio
                adaptador = new SqlDataAdapter(consultaSQL, ObtenerConexion());
                return adaptador;
            }
            catch(Exception ex)
            {
                return null;
            }
        }

        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand comando= new SqlCommand();
            comando = Comando;
            comando.Connection = Conexion;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = NombreSP;
            FilasCambiadas = comando.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;

        }


        

    }
}