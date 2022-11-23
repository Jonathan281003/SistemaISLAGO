using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Net.Security;
using System.Text;
using System.Threading.Tasks;

using CapaEntidad;

namespace ClaseDatos
{
    public class CDatProveedor
    {
        BDLago_01Entities2 context = new BDLago_01Entities2();

        #region C >> Create >> Insertar
        public bool GuardaNuevaProveedor(CEntProveedor nuevo)
        {
            tblProveedor prov = new tblProveedor();

            prov.IDProveedor = nuevo.IDProveedor;
            prov.NombNegocio = nuevo.NombNegocio;
            prov.Direccion = nuevo.Direccion;
            prov.Telefono = nuevo.Telefono;
            prov.Correo = nuevo.Correo;
            prov.Fax = nuevo.Fax;
            prov.Municipio = nuevo.Municipio;
            prov.Departamento = nuevo.Departamento;
            prov.Imagen = nuevo.Imagen;
            prov.Estado = nuevo.Estado;

            context.tblProveedor.Add(prov);
            context.SaveChanges();

            return true;

        }
        #endregion

        #region R >> Read >> Seleccionar
        public List<CEntProveedor> MuestraProveedor()
        {
            var Consulta = (from pro in context.tblProveedor
                            where pro.Estado == true
                            orderby pro.IDProveedor descending
                            select new CEntProveedor
                            {
                                IDProveedor=pro.IDProveedor,
                                NombNegocio=pro.NombNegocio,
                                Direccion=pro.Direccion,
                                Telefono=pro.Telefono,
                                Correo=pro.Correo,
                                Fax=pro.Fax,
                                Municipio=pro.Municipio,
                                Departamento=pro.Departamento,
                                Imagen=pro.Imagen,
                                Estado=pro.Estado
                            }).ToList();
            return Consulta;
        }
        #endregion

        #region U >> Update >> Actualizar
        public bool ActualizaProveedor(CEntProveedor nuevo)
        {
            tblProveedor prov = context.tblProveedor.FirstOrDefault(x => x.IDProveedor == nuevo.IDProveedor);

            prov.IDProveedor = nuevo.IDProveedor;
            prov.NombNegocio = nuevo.NombNegocio;
            prov.Direccion = nuevo.Direccion;
            prov.Telefono = nuevo.Telefono;
            prov.Correo = nuevo.Correo;
            prov.Fax = nuevo.Fax;
            prov.Municipio = nuevo.Municipio;
            prov.Departamento = nuevo.Departamento;
            prov.Imagen = nuevo.Imagen;
            prov.Estado = nuevo.Estado;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region D >> Delete >> Eliminar
        public bool EliminaProveedor(int id)
        {
            tblProveedor prov = context.tblProveedor.FirstOrDefault(x => x.IDProveedor == id);
            context.tblProveedor.Remove(prov);

            context.SaveChanges();
            return true;
        }
        #endregion

        #region Muestra X Cantidad de proveedores
        public List<CEntProveedor> MuestraXCantidad(int Cant)
        {
            var consulta = (from pro in context.tblProveedor
                            where pro.Estado == true
                            orderby pro.IDProveedor descending
                            select new CEntProveedor
                            {
                                IDProveedor = pro.IDProveedor,
                                NombNegocio = pro.NombNegocio,
                                Direccion = pro.Direccion,
                                Telefono = pro.Telefono,
                                Correo = pro.Correo,
                                Fax = pro.Fax,
                                Municipio = pro.Municipio,
                                Departamento = pro.Departamento,
                                Imagen = pro.Imagen,
                                Estado = pro.Estado
                            }).Take(Cant).ToList();
            return consulta;

        }
        #endregion

        #region Muestra proveedores por ID 
        public CEntProveedor MuestraProveedoresxID(int id)
        {
            tblProveedor provider = context.tblProveedor.FirstOrDefault(x => x.IDProveedor == id);

            CEntProveedor pro = new CEntProveedor();

            if (provider != null)
            {
                pro.IDProveedor = provider.IDProveedor;
                pro.NombNegocio = provider.NombNegocio;
                pro.Direccion = provider.Direccion;
                pro.Telefono = provider.Telefono;
                pro.Correo = provider.Correo;
                pro.Fax = provider.Fax;
                pro.Municipio = provider.Municipio;
                pro.Departamento = provider.Departamento;
                pro.Imagen = provider.Imagen;
                pro.Estado = provider.Estado;
            }

            return pro;
        }
        #endregion

        #region Dar de baja proveedor 
        public bool bajaProveedor(int id)
        {
            tblProveedor pro = context.tblProveedor.FirstOrDefault(x => x.IDProveedor == id);

            pro.Estado = false;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region Dar de alta proveedor
        public bool altaProveedor(int id)
        {
            tblProveedor pro = context.tblProveedor.FirstOrDefault(x => x.IDProveedor == id);

            pro.Estado = true;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region Muestra proveedores inactivos
        public List<CEntProveedor> MuestraProveedoresInactivos()
        {
            var Consulta = (from pro in context.tblProveedor
                            where pro.Estado == false
                            orderby pro.Estado descending
                            select new CEntProveedor
                            {
                                IDProveedor = pro.IDProveedor,
                                NombNegocio = pro.NombNegocio,
                                Direccion = pro.Direccion,
                                Telefono = pro.Telefono,
                                Correo = pro.Correo,
                                Fax = pro.Fax,
                                Municipio = pro.Municipio,
                                Departamento = pro.Departamento,
                                Imagen = pro.Imagen,
                                Estado = pro.Estado
                            }).ToList();

            return Consulta;
        }
        #endregion

        #region Muestra Categorias Activas Por Nombre
        public List<CEntProveedor> MuestraProveedoresxNombre(string nombre)
        {
            var Consulta = (from pro in context.tblProveedor
                            where pro.NombNegocio.Contains(nombre)
                            select new CEntProveedor
                            {
                                IDProveedor = pro.IDProveedor,
                                NombNegocio = pro.NombNegocio,
                                Direccion = pro.NombNegocio,
                                Telefono = pro.Telefono,
                                Correo = pro.Correo,
                                Fax = pro.Fax,
                                Municipio = pro.Municipio,
                                Departamento = pro.Departamento,
                                Imagen = pro.Imagen,
                                Estado = pro.Estado
                            }).ToList();
            return Consulta;
        }
        #endregion
    }
}
