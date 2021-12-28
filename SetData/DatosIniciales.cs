using CallCenterApp.Models;
using System.Collections.Generic;

namespace CallCenterApp.SetData
{
    public class DatosIniciales
    {
        public List<Usuario> listaSupervisor { get; set; }
        public List<Usuario> listaAgente { get; set; }

        public DatosIniciales()
        {
            listaSupervisor = new List<Usuario>();
            listaAgente = new List<Usuario>();
            int i = 0;
            for(i = 0; i < 2; i++)
            {
                Usuario usuario = new Usuario();
                usuario.Email = "supervisor"+i+"@prueba.com";
                usuario.UserName = "supervisor" + i + "@prueba.com";
                listaSupervisor.Add(usuario);
            }

            i = 0;
            for (i = 0; i < 10; i++)
            {
                Usuario usuario = new Usuario();
                usuario.Email = "agente" + i + "@prueba.com";
                usuario.UserName = "agente" + i + "@prueba.com";
                listaAgente.Add(usuario);
            }
        }
    }
}
