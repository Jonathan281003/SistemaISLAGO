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
        BDLago_01Entities1 context = new BDLago_01Entities1();

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
        public List<CEntEmpleado> MuestraEmpleado()
        {
            var consulta = (from Emp in context.tblEmpleado
                            where Emp.Estado == true
                            orderby Emp.IDEmpleado descending
                            select new CEntEmpleado
                            {
                                IDEmpleado = Emp.IDEmpleado,
                                PrimerNombre = Emp.PrimerNombre,
                                SegundoNombre = Emp.SegundoNombre,
                                PrimerApellido = Emp.PrimerApellido,
                                SegundoApellido = Emp.SegundoApellido,
                                FechaDeNacimiento = Emp.FechaNacimiento,
                                Direccion = Emp.Direccion,
                                Telefono = Emp.Telefono,
                                Correo = Emp.Correo,
                                Genero = Emp.Genero,
                                Imagen = Emp.Imagen,
                                Estado = Emp.Estado
                            }).ToList();

            return consulta;
        }
        #endregion

        #region U >> Update >> Actualizar
        public bool ActualizarEmpleado(CEntEmpleado nuevo)
        {
            tblEmpleado Emp = context.tblEmpleado.FirstOrDefault(x => x.IDEmpleado == nuevo.IDEmpleado);

            Emp.IDEmpleado = nuevo.IDEmpleado;
            Emp.PrimerNombre = nuevo.PrimerNombre;
            Emp.SegundoNombre = nuevo.SegundoNombre;
            Emp.PrimerApellido = nuevo.PrimerApellido;
            Emp.SegundoApellido = nuevo.SegundoApellido;
            Emp.FechaNacimiento = nuevo.FechaDeNacimiento;
            Emp.Direccion = Emp.Direccion;
            Emp.Telefono = Emp.Telefono;
            Emp.Correo = Emp.Correo;
            Emp.Genero = Emp.Genero;
            Emp.Imagen = Emp.Imagen;
            Emp.Estado = Emp.Estado;

            context.SaveChanges();
            
            return true;
        }
        #endregion

        #region D >> Delete >> Eliminar
        #endregion
    }
}
