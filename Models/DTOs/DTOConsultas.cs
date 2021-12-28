using CallCenterApp.Models.DTOs;
using System.Collections.Generic;

namespace CallCenterApp.Models.DTOs
{
    public class DTOConsultas
    {
        public List<ConsultaGeneral> listaConsultaGeneral { get; set; }
        public List<ConsultaAgentes> listaAgentesMayor { get; set; }
        public List<ConsultaAgentes> listaAgentesMenor { get; set; }
    }
}
