using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarCapModel.DAL
{
    public class BebidasDALObjetos : IBebidasDAL
    {
        public List<Bebida> ObtenerBebidas()
        {
            return new List<Bebida>()
            {
                new Bebida()
                {
                    Nombre = "PowerMonitor 1000",
                    Codigo = "FP-01"
                },
                new Bebida()
                {
                    Nombre = "PowerMonitor 3000",
                    Codigo = "CAF-01"
                },
                new Bebida()
                {
                    Nombre = "Monofasico",
                    Codigo = "TE-01"
                },
                new Bebida()
                {
                    Nombre = "Trifasico",
                    Codigo = "TE-02"
                }
            };
        }
    }
}
