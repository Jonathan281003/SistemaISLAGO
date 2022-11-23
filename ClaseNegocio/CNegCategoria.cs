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
    public class CNegCategoria
    {
        #region C >> Create >> Insertar
        public bool GuardaNuevaCategoria(CEntCategoria nuevo)
        {
            CDatCategoria cat = new CDatCategoria();
            return cat.GuardaNuevaCategoria(nuevo);
        }
        #endregion

        #region R >> Read >> Seleccionar
        public List<CEntCategoria> MuestraCategoria()
        {
            CDatCategoria cat = new CDatCategoria();
            return cat.MuestraCategoria();
        }
        #endregion

        #region U >> Update >> Actualizar
        public bool ActualizaCateegoria(CEntCategoria nuevo)
        {
            CDatCategoria cat = new CDatCategoria();
            return cat.ActualizaCateegoria(nuevo);
        }
        #endregion

        #region D >> Delete >> Eliminar
        public bool EliminaCategoria(int id)
        {
            CDatCategoria cat = new CDatCategoria();
            return cat.EliminaCategoria(id);
        }
        #endregion
        #region Muestra X Cantidad
        public List<CEntCategoria> MuestraXCantidad(int Cant)
        {
            CDatCategoria cat = new CDatCategoria();
            return cat.MuestraXCantidad(Cant);
        }
        #endregion
    }
}
