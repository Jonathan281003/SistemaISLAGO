using System;
using System.Collections.Generic;
using System.Linq;
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

        #region Muestra X Cantidad 
        public List<CEntProveedor> MuestraXCantidadd(int Cant)
        {
            CDatProveedor prov = new CDatProveedor();
            return prov.MuestraXCantidad(Cant);
        }
        #endregion
    }
}
