using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP6_GRUPO3.Clases
{
    public class Provincia
    {
        private int Id_Provincia;
        private String DescripcionProvincia;

        public Provincia()
        {

        }
        public Provincia (int Id_Provincia, String DescripcionProvincia)
        {
            this.DescripcionProvincia = DescripcionProvincia;
            this.Id_Provincia = Id_Provincia;
        }
        public int Id
        {
            get { return Id_Provincia; }
            set { Id_Provincia = value; }
        }
        public String descripcion
        {
            get { return DescripcionProvincia; }
            set { DescripcionProvincia = value; }
        }
        
    }
}