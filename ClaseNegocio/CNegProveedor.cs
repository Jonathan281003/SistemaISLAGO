using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

using CapaEntidad;
using ClaseDatos;

namespace ClaseNegocio
{
    public class CNegProveedor
    {

        #region C >> Create >> Insertar
        public bool GuardaNuevaProveedor(CEntProveedor nuevo)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.GuardaNuevaProveedor(nuevo);
        }
        #endregion

        #region R >> Read >> Seleccionar
        public List<CEntProveedor> MuestraProveedor()
        {
            CDatProveedor p = new CDatProveedor();
            return p.MuestraProveedor();
        }
        #endregion

        #region U >> Update >> Actualizar
        public bool ActualizaProveedor(CEntProveedor nuevo)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.ActualizaProveedor(nuevo);
        }
        #endregion

        #region D >> Delete >> Eliminar
        public bool EliminaProveedor(int id)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.EliminaProveedor(id);
        }
        #endregion

        #region Muestra X Cantidad proveedores
        public List<CEntProveedor> MuestraXCantidadd(int Cant)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.MuestraXCantidad(Cant);
        }
        #endregion

        #region Muestra Proveedores Por ID
        public CEntProveedor MuestraProveedoresxID(int id)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.MuestraProveedoresxID(id);
        }
        #endregion

        #region Dar de Baja Proveedor 
        public bool bajaProveedor(int id)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.bajaProveedor(id);
        }
        #endregion

        #region Dar de Alta Proveedor
        public bool altaProveedor(int id)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.altaProveedor(id);
        }
        #endregion

        #region Muestra Proveedores Inactivos
        public List<CEntProveedor> MuestraProveedoresInactivos()
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.MuestraProveedoresInactivos();
        }
        #endregion

        #region Muestra Proveedores Activos Por Nombre
        public List<CEntProveedor> MuestraProveedoresxNombre(string nombre)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.MuestraProveedoresxNombre(nombre);
        }
        #endregion
    }
}
