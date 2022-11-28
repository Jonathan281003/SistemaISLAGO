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

        /*
         *  Metodos
         */
        public void LlenarGridListadoPrincipal()
        {
            var grilla = new CNegCategoria();
            GridViewCategoria.DataSource = grilla.MuestraCategoria();
            GridViewCategoria.DataBind();
        }

        protected void DropCate_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow gvr = GridViewCategoria.BottomPagerRow;
                DropDownList pageList = (DropDownList)gvr.Cells[0].FindControl("DropCate");
                GridViewCategoria.PageIndex = pageList.SelectedIndex;
                LlenarGridListadoPrincipal();
            }
            catch(Exception)
            {
                throw;
            }
        }

        protected void GridViewCategoria_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //defino la variable row para conocer el control tipo boton en la fila
            GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);

            //Se obtiene e indice de la fila en donde dimos click
            int indice = row.RowIndex;
            //Obtenemos el valor del campo de la tabla (ID) de donde dimos click
            int codigo = Convert.ToInt32(GridViewCategoria.DataKeys[indice].Value);

            CEntCategoria entCategory = new CEntCategoria();
            CNegCategoria necCategory = new CNegCategoria();

            if(e.CommandName == "cmdEditar")
            {
                entCategory = necCategory.MuestraCategoriaxID(codigo);

                
            }
        }

        protected void GridViewCategoria_DataBound(object sender, EventArgs e)
        {
            try
            {
                GridViewRow pagerow = GridViewCategoria.BottomPagerRow;

                DropDownList pageList = (DropDownList)pagerow.Cells[0].FindControl("DropCate");

                Label pagelabel = (Label)pagerow.Cells[0].FindControl("lblCatePageOf");

                if (pageList != null)
                {
                    for (int i = 0; i <= GridViewCategoria.PageCount - 1; i++)
                    {
                        int pagenum = i + 1;

                        ListItem item = new ListItem(pagenum.ToString());

                        if (i == GridViewCategoria.PageIndex)
                        {
                            item.Selected = true;
                        }
                        pageList.Items.Add(item);
                    }
                }
                if(pagelabel != null)
                {
                    int currentpage = GridViewCategoria.PageIndex;

                    pagelabel.Text = "Página" + currentpage.ToString() + "de" + GridViewCategoria.PageCount.ToString(); 
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        //Función boton agregar
        protected void btnnuevo_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 1;
        }

        //Función boton ListaCat
        protected void btnListCat_Click(object sender, EventArgs e)
        {
           MVCategorias.ActiveViewIndex = 2;
        }

        //Función boton regresar
        protected void btnReturn_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 0;
        }

        //Función boton Inactivos
        protected void btnInactivos_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 3;
        }

        protected void btnBuscarActivos_Click(object sender, EventArgs e)
        {

        }

        protected void btnIrlista_Click(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCanActu_Click(object sender, EventArgs e)
        {

        }

        protected void btnActivos_Click(object sender, EventArgs e)
        {
            MVCategorias.ActiveViewIndex = 2;
        }
    }
}