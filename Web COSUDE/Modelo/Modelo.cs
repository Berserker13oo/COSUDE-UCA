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

            public void ModificarEfecto(String EfectoID, String NombreEfecto, String DescipcionEfecto)
            {
                ce.SPEfectoModificar(EfectoID, NombreEfecto, DescipcionEfecto);
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

        #region CRUD Resultado

            public System.Data.Objects.ObjectResult<SPResultadoObtener_Result> GetResultados()
            {
                return ce.SPResultadoObtener();
            }
            public void AgregarResultado(String ResultadoID, String NombreResultado, String Efecto)
            {
                ce.SPResultadoAgregar(ResultadoID, NombreResultado, Efecto);
            }
            public void EliminarResultado(String ResultadoID)
            {
                ce.SPResultadoEliminar(ResultadoID);
            }
            public void ModificarResultado(String ResultadoIDOriginal, String ResultadoID, String NombreResultado, String Efecto)
            {
                ce.SPResultadoModificar(ResultadoIDOriginal, NombreResultado, ResultadoID,
                    Efecto);
            }


        #endregion

        #region CRUD Institución

            public System.Data.Objects.ObjectResult<SPInstitucionObtener_Result> GetInstituciones()
            {
                return ce.SPInstitucionObtener();
            }

            public void AgregarInstituciones(String NombreInstitucion, String DescripcionInstitucion)
            {
                ce.SPInstitucionAgregar(NombreInstitucion, DescripcionInstitucion);
            }

            public void EliminarInstituciones(int InstitucionID)
            {
                ce.SPInstitucionEliminar(InstitucionID);
            }

            public void ModificarInstituciones(String NombreInstitucion, int InstitucionID)
            {
                ce.SPInstitucionModificar(NombreInstitucion, InstitucionID);
            }

        #endregion

        #region CRUD Cargo

            public System.Data.Objects.ObjectResult<SPCargoObtener_Result> GetCargos()
            {
                return ce.SPCargoObtener();
            }

            public void AgregarCargos(String NombreCargo, String CargoDescripcion)
            {
                ce.SPCargoAgregar(0, NombreCargo, CargoDescripcion);
            }

            public void EliminarCargos(int CargoID)
            {
                ce.SPCargoEliminar(CargoID);
            }

            public void ModificarCargos(int CargoID, String NombreCargo, String CargoDescripcion)
            {
                ce.SPCargoModificar(CargoID, NombreCargo, CargoDescripcion);
            }

        #endregion

        #region CRUD Persona

            public System.Data.Objects.ObjectResult<SPPersonaObtener_Result> GetPersonas()
            {
                return ce.SPPersonaObtener(0);
            }

            public void AgregarPersonas(String Cedula_Carnet, String Nombres, bool Sexo,
            String Telefono, int Edad, String Comunidad, String CorreoElectronico,
            int CargoID, int InstitucionID)
            {
                ce.SPPersonaAgregar(Cedula_Carnet, Nombres, Sexo, Telefono, Edad, Comunidad,
            CorreoElectronico, CargoID, InstitucionID);
            }

            public void EliminarPersona(int PersonaID)
            {
                ce.SPPersonaEliminar(PersonaID);
            }

            public void ModificarPersona(int PersonaID, String Cedula_Carnet, String Nombres, bool Sexo,
            String Telefono, int Edad, String Comunidad, String CorreoElectronico,
            int CargoID, int InstitucionID)
            {
                ce.SPPersonaModificar(PersonaID, Cedula_Carnet, Nombres, Sexo, Telefono, Edad, Comunidad,
            CorreoElectronico, CargoID, InstitucionID);
            }

        #endregion

        #region CRUD Actividad

            public System.Data.Objects.ObjectResult<SPActividadObtener_Result> GetActividadesPorId(String idActividad)
            {
                return ce.SPActividadObtener(idActividad);
            }

            public System.Data.Objects.ObjectResult<SPListaActividades_Result> GetListaActividades()
            {
                return ce.SPListaActividades();
            }

            /*public void AgregarActividad(String NombreCargo, String CargoDescripcion)
            {
                ce.SPCargoAgregar(0, NombreCargo, CargoDescripcion);
            }

            public void EliminarCargos(int CargoID)
            {
                ce.SPCargoEliminar(CargoID);
            }

            public void ModificarCargos(int CargoID, String NombreCargo, String CargoDescripcion)
            {
                ce.SPCargoModificar(CargoID, NombreCargo, CargoDescripcion);
            } */


        #endregion

    }
}