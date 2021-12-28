using CallCenterApp.Data;
using CallCenterApp.Models;
using CallCenterApp.SetData;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace CallCenterApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly IPasswordHasher<IdentityUser> _passwordHasher;
        private readonly RoleManager<IdentityRole> _roleManager;

        public HomeController(ILogger<HomeController> logger,
                            ApplicationDbContext context,
                            UserManager<IdentityUser> userManager,
                            RoleManager<IdentityRole> roleManager,
                            IPasswordHasher<IdentityUser> passwordHasher)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
            _passwordHasher = passwordHasher;

        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public async Task<IActionResult> IniciarCarga()
        {
            int cantidadUsuarios = _context.Usuarios.Count();
            if (cantidadUsuarios == 0)
            {
                DatosIniciales iniciar = new DatosIniciales();

                try
                {
                    await _roleManager.CreateAsync(new IdentityRole{Name = "SUPERVISOR"});
                    await _roleManager.CreateAsync(new IdentityRole{Name = "AGENTE"});
                    await _context.SaveChangesAsync();
                    //iniciamos la carga de los usuarios
                    int i = 0;
                    foreach (var supervisor in iniciar.listaSupervisor)
                    {
                        //ejemplo de clave ==> PruebaSu_0**, PruebaSu_1**
                        supervisor.Activo = true;
                        string pass = "PruebaSu_" + i+"**";
                        await _userManager.CreateAsync(supervisor, pass);
                        IdentityResult result = await _userManager.AddToRoleAsync(supervisor, "SUPERVISOR");
                        i++;
                        if (!result.Succeeded)
                        {
                            throw new Exception("Ocurrio un problema");
                        }
                    }

                    i = 0;
                    foreach (var agente in iniciar.listaAgente)
                    {
                        //ejemplo de clave ==> PruebaAg_0**, PruebaAg_1**
                        agente.Activo = true;
                        string pass = "PruebaAg_" + i + "**";
                        await _userManager.CreateAsync(agente, pass);
                        IdentityResult result = await _userManager.AddToRoleAsync(agente, "AGENTE");
                        i++;
                        if (!result.Succeeded)
                        {
                            throw new Exception("Ocurrio un problema");
                        }
                    }
                    await _context.SaveChangesAsync();

                    return RedirectToAction(nameof(Index));
                }
                catch (Exception es)
                {

                    return RedirectToAction(nameof(Index));
                }
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
