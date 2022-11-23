using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaEntidad;

namespace ClaseDatos
{
    public class CDatCategoria
    {
        //Instancia para llamar la base de datos
        BDLago_01Entities2 context = new BDLago_01Entities2();

        #region C >> Create >> Insertar
        public bool GuardaNuevaCategoria(CEntCategoria nuevo)
        {
            tblCategoria cat = new tblCategoria();

            cat.IDCategoria = nuevo.IDCategoria;
            cat.NombCategoria = nuevo.NombCategoria;
            cat.Descripcion = nuevo.Descripcion;
            cat.Imagen = nuevo.Imagen;
            cat.Estado = nuevo.Estado;

            context.tblCategoria.Add(cat);
            context.SaveChanges();

            return true;
        }
        #endregion

        #region R >> Read >> Seleccionar
        public List<CEntCategoria> MuestraCategoria()
        {
            var Consulta = (from cat in context.tblCategoria
                            where cat.Estado == true
                            orderby cat.IDCategoria descending
                            select new CEntCategoria
                            {
                                IDCategoria = cat.IDCategoria,
                                NombCategoria = cat.NombCategoria,
                                Descripcion = cat.Descripcion,
                                Imagen = cat.Imagen,
                                Estado = cat.Estado
                            }).ToList();
            return Consulta;
        }
        #endregion

        #region U >> Update >> Actualizar
        public bool ActualizaCateegoria(CEntCategoria nuevo)
        {
            tblCategoria cat = context.tblCategoria.FirstOrDefault(x => x.IDCategoria == nuevo.IDCategoria);

            cat.IDCategoria = nuevo.IDCategoria;
            cat.NombCategoria = nuevo.NombCategoria;
            cat.Descripcion = nuevo.Descripcion;
            cat.Imagen = nuevo.Imagen;
            cat.Estado = nuevo.Estado;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region D >> Delete >> Eliminar
        public bool EliminaCategoria(int id)
        {
            tblCategoria cat = context.tblCategoria.FirstOrDefault(x => x.IDCategoria == id);

            context.tblCategoria.Remove(cat);
            context.SaveChanges();

            return true;
        }
        #endregion

        #region Muestra X Cantidad De Categorias
        public List<CEntCategoria> MuestraXCantidad(int cant)
        {
            var Consulta = (from cat in context.tblCategoria
                            where cat.Estado == true
                            orderby cat.IDCategoria descending
                            select new CEntCategoria
                            {
                                IDCategoria = cat.IDCategoria,
                                NombCategoria = cat.NombCategoria,
                                Descripcion = cat.Descripcion,
                                Imagen = cat.Imagen,
                                Estado = cat.Estado
                            }).Take(cant).ToList();
        return Consulta;
        }
        #endregion

        #region Muestra Categorias por ID
        public CEntCategoria MuestraCategoriaxID(int id)
        {
            tblCategoria category = context.tblCategoria.FirstOrDefault(x => x.IDCategoria == id);

            CEntCategoria cat = new CEntCategoria();

            if (category != null)
            {
                cat.IDCategoria = category.IDCategoria;
                cat.NombCategoria = category.NombCategoria;
                cat.Descripcion = category.Descripcion;
                cat.Imagen = category.Imagen;
                cat.Estado = category.Estado;
            }

            return cat; 
        }
        #endregion

        #region Dar de baja Categoria 
        public bool bajaCategoria(int id)
        {
            tblCategoria cat = context.tblCategoria.FirstOrDefault(x => x.IDCategoria == id);

            cat.Estado = false;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region Dar de alta Categoria 
        public bool altaCategoria(int id)
        {

            tblCategoria cat = context.tblCategoria.FirstOrDefault(x => x.IDCategoria==id);

            cat.Estado = true;

            context.SaveChanges();

            return true;
        }
        #endregion

        #region Muestra Categorias inactivas
        public List<CEntCategoria> MuestraCategoriaInactivas()
        {
            var consulta = (from cat in context.tblCategoria
                            where cat.Estado == false
                            orderby cat.IDCategoria descending
                            select new CEntCategoria
                            {
                                IDCategoria = cat.IDCategoria,
                                NombCategoria = cat.NombCategoria,
                                Descripcion = cat.Descripcion,
                                Imagen = cat.Imagen,
                                Estado = cat.Estado
                            }).ToList();
            return consulta;
        }
        #endregion

        #region Muestra Categorias activas por nombre 
        public List<CEntCategoria> MuestraCategoriaActivasxNombre(string nombre)
        {
            var Consulta = (from cat in context.tblCategoria
                            where cat.NombCategoria.Contains(nombre)
                            select new CEntCategoria
                            {
                                IDCategoria = cat.IDCategoria,
                                NombCategoria = cat.NombCategoria,
                                Descripcion = cat.Descripcion,
                                Imagen = cat.Imagen,
                                Estado = cat.Estado
                            }).ToList();

            return Consulta;
        }
        #endregion
    }
}
