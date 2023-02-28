using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;

namespace ClaseDatos
{
    public class CDatEmpleado
    {
        //Instancia BD
        BDLago_01Entities context = new BDLago_01Entities();

        #region C >> Create >> Insertar
        public bool GuardarNuevoEmpleado(CEntEmpleado nuevo)
        {
            //Instancia tbl
            tblEmpleado Em = new tblEmpleado();

            Em.IDEmpleado = nuevo.IDEmpleado;
            Em.PrimerNombre = nuevo.PrimerNombre;
            Em.SegundoNombre = nuevo.SegundoNombre;
            Em.PrimerApellido = nuevo.PrimerApellido;
            Em.SegundoApellido = nuevo.SegundoApellido;
            Em.FechaNacimiento = nuevo.FechaDeNacimiento;
            Em.Direccion = nuevo.Direccion;
            Em.Telefono = nuevo.Telefono;
            Em.Correo = nuevo.Correo;
            Em.Genero = nuevo.Genero;
            Em.Imagen = nuevo.Imagen;
            Em.Estado = nuevo.Estado;

            context.tblEmpleado.Add(Em);
            context.SaveChanges();

            return true;
        }
        #endregion

        #region R >> Read >> Selecionar

        #endregion

        #region U >> Update >> Actualizar
        #endregion

        #region D >> Delete >> Eliminar
        #endregion
    }
}
