using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class CEntDetalleFactura
    {
        public int IDDetFactura { get; set; }
        public int Cantidad { get; set; }
        public float SubTotal { get; set; }
        public float Total { get; set; }
        public float PrecioVenta { get; set; }
        public float Descuento { get; set; }
        public string Garantia { get; set; }
        public string UserName { get; set; }
        public string NombCompCliente { get; set; }
        public string NombreArticulos { get; set; }
    }
}
