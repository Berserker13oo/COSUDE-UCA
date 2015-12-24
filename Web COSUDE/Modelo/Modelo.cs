using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_COSUDE.Modelo
{
    public class Modelo
    {

        private COSUDE_UCAEntities ce = new COSUDE_UCAEntities();
        private static Modelo instance;

        #region Singleton Clase Modelo

        public static Modelo Instancia
        {
            get
            {
                if (instance == null)
                {
                    instance = new Modelo();
                }
                return instance;
            }
        }

        #endregion

        #region CRUD Efecto

        public System.Data.Objects.ObjectResult<SPObtenerEfecto_Result> GetEfectos()
        {
            return ce.SPObtenerEfecto();
        }

        public void ModificarEfecto(String EfectoIDOriginal, String EfectoID, String NombreEfecto, String DescipcionEfecto)
        {
            ce.SPEfectoModificar(EfectoIDOriginal, EfectoID, NombreEfecto, DescipcionEfecto);
        }

        public void EliminarEfecto(String EfectoID)
        {
            ce.SPEfectoEliminar(EfectoID);
        }

        public void AgregarEfecto(String EfectoID, String NombreEfecto, String DescipcionEfecto)
        {
            ce.SPEfectoAgregar(EfectoID, NombreEfecto, DescipcionEfecto);
        }

        #endregion

        



    }
}