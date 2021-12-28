using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using CallCenterApp.Models;
using CallCenterApp.Models.DTOs;
using Microsoft.Data.SqlClient;
using CallCenterApp.Data;
using Microsoft.Extensions.Configuration;

namespace CallCenterApp.Controllers
{
    [Authorize(Roles = "SUPERVISOR")]
    public class DashboardController : Controller
    {
        private readonly ILogger<DashboardController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly IConfiguration _configuration;
        public DashboardController(ILogger<DashboardController> logger,
                                    ApplicationDbContext context,
                                    UserManager<IdentityUser> userManager,
                                    IConfiguration configuration) 
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
            _configuration = configuration;
        }

        public async Task<IActionResult> Index()
        {

            try
            {
                // aqui llamaremos las consultas para el supervisor
                List<ConsultaGeneral> listaConsultaGeneral = new List<ConsultaGeneral>();
                List<ConsultaAgentes> listaAgentesMayor = new List<ConsultaAgentes>();
                List<ConsultaAgentes> listaAgentesMenor = new List<ConsultaAgentes>();
                var DTOConsultas = new DTOConsultas();

                // Obtenemos la informacion por semana
                using (SqlConnection con = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    await con.OpenAsync();
                    SqlCommand cmd = new SqlCommand("spConsultaGeneral", con)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };

                    var dr = await cmd.ExecuteReaderAsync();
                    //aqui va declarado un DTO a mapear
                    while (await dr.ReadAsync())
                    {
                        var consultaGeneral = new ConsultaGeneral();
                        consultaGeneral.semana = (int)dr["semana"];
                        consultaGeneral.totalLlamadas = (int)dr["totalLlamadas"];
                        consultaGeneral.resueltas = (int)dr["resueltas"];
                        consultaGeneral.noResueltas = (int)dr["noResueltas"];
                        listaConsultaGeneral.Add(consultaGeneral);
                    }
                    con.Close();

                }

                // Obtenemos la informacion de agentes que mas llamadas recibio
                using (SqlConnection con = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    await con.OpenAsync();
                    SqlCommand cmd = new SqlCommand("spAgenteMasLlamadas", con)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };

                    var dr = await cmd.ExecuteReaderAsync();
                    //aqui va declarado un DTO a mapear
                    while (await dr.ReadAsync())
                    {
                        var consultaAgente = new ConsultaAgentes();
                        consultaAgente.NombreUsuario = dr["NombreUsuario"].ToString();
                        consultaAgente.Email = dr["Email"].ToString();
                        consultaAgente.Llamadas = (int)dr["Llamadas"];
                        listaAgentesMayor.Add(consultaAgente);
                    }
                    con.Close();

                }

                // Obtenemos la informacion de agentes que mas llamadas recibio
                using (SqlConnection con = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    await con.OpenAsync();
                    SqlCommand cmd = new SqlCommand("spAgenteMenosLlamadas", con)
                    {
                        CommandType = System.Data.CommandType.StoredProcedure
                    };

                    var dr = await cmd.ExecuteReaderAsync();
                    //aqui va declarado un DTO a mapear
                    while (await dr.ReadAsync())
                    {
                        var consultaAgente = new ConsultaAgentes();
                        consultaAgente.NombreUsuario = dr["NombreUsuario"].ToString();
                        consultaAgente.Email = dr["Email"].ToString();
                        consultaAgente.Llamadas = (int)dr["Llamadas"];
                        listaAgentesMenor.Add(consultaAgente);
                    }
                    con.Close();

                }

                DTOConsultas.listaConsultaGeneral = listaConsultaGeneral;
                DTOConsultas.listaAgentesMayor = listaAgentesMayor;
                DTOConsultas.listaAgentesMenor = listaAgentesMenor;


                return View(DTOConsultas);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public IActionResult Privacy()
        {
            return View();
        }

        

        
    }
}
