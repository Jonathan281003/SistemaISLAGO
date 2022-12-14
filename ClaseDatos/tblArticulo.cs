//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClaseDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblArticulo
    {
        public tblArticulo()
        {
            this.tblDetFactura = new HashSet<tblDetFactura>();
            this.tblDetFacturaTMP = new HashSet<tblDetFacturaTMP>();
        }
    
        public int IDArticulos { get; set; }
        public string NombreArticulos { get; set; }
        public string Descripcion { get; set; }
        public System.DateTime FechaIngreso { get; set; }
        public System.DateTime FechaVencimiento { get; set; }
        public string UnidadMedidas { get; set; }
        public float PrecioCompra { get; set; }
        public float PrecioVenta { get; set; }
        public float Impuestos { get; set; }
        public Nullable<int> Existencia { get; set; }
        public string Imagen { get; set; }
        public int IDProveedor { get; set; }
        public int IDCategoria { get; set; }
        public Nullable<bool> Estado { get; set; }
    
        public virtual ICollection<tblDetFactura> tblDetFactura { get; set; }
        public virtual ICollection<tblDetFacturaTMP> tblDetFacturaTMP { get; set; }
    }
}
