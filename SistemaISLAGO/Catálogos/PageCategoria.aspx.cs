using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ClaseNegocio;

namespace SistemaISLAGO.Catálogos
{
    public partial class PageCategoria : System.Web.UI.Page
    {
        public void MuestraUltimasCategoiras()
        {
            var cat = new CNegCategoria();
            ListarCategorias.DataSource = cat.MuestraXCantidad(4);
            ListarCategorias.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MuestraUltimasCategoiras();
                MVCategorias.ActiveViewIndex = 0;  
            }
        }


        //Función boton agregar
        protected void btnnuevo_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 1;
        }

        //Función boton Inactivo
        protected void btnListCat_Click(object sender, EventArgs e)
        {
           MVCategorias.ActiveViewIndex = 2;
        }

        //Función boton regresar
        protected void btnReturn_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 0;
        }
    }
}