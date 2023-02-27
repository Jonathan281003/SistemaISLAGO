using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class CEntUsuario
    {
        public int IDUsuario { get; set; }
        public string UserName { get; set; }
        public string Contraseña { get; set; }
        public string Rol { get; set; }
        public string Imagen { get; set; }
        public string NombreEmpleado { get; set; }
    }
}
