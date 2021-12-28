using CallCenterApp.Data;
using CallCenterApp.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace CallCenterApp.Controllers
{
    [Authorize(Roles = "SUPERVISOR,AGENTE")]
    public class ActividadController : Controller
    {
        private readonly ILogger<ActividadController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public ActividadController(ILogger<ActividadController> logger,
                                    ApplicationDbContext context,
                                    UserManager<IdentityUser> userManager)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            //await _context.Actividad
            var actividad = await _context.Actividades.ToListAsync();
            return View(actividad);
        }

        #region Crear
        public IActionResult Create()
        {
            setTipoActividad();
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Actividad actividad)
        {
            try
            {

                if (!ModelState.IsValid)
                {
                    setTipoActividad();
                    return View(actividad);
                }
                var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                actividad.usuarioId = userId;
                _context.Add(actividad);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            catch (System.Exception ex)
            {
                setTipoActividad();
                return View(actividad);
            }

        }
        #endregion

        #region Details
        public async Task<IActionResult> Details(long? Id)
        {
            var actividad = await _context.Actividades.FirstOrDefaultAsync(x => x.IdActividad == Id);
            if (actividad == null)
            {
                return NotFound();
            }
            return View(actividad);
        }
        #endregion

        #region Editar
        public IActionResult Edit(long Id)
        {
            var actividad = _context.Actividades.FirstOrDefault(x => x.IdActividad == Id);
            if (actividad == null)
            {
                return NotFound();
            }
            setTipoActividad();
            return View(actividad);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Actividad actividad)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    setTipoActividad();
                    return View(actividad);
                }
                
                _context.Update(actividad);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            catch (System.Exception ex)
            {
                setTipoActividad();
                return View(actividad);
            }

        }
        #endregion

        #region Eliminar
        public IActionResult Delete(long Id)
        {
            var actividad = _context.Actividades.FirstOrDefault(x => x.IdActividad == Id);
            if (actividad == null)
            {
                return NotFound();
            }
            setTipoActividad();
            return View(actividad);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(Actividad actividad)
        {
            try
            {
                actividad = _context.Actividades.FirstOrDefault(x => x.IdActividad == actividad.IdActividad);
                _context.Update(actividad);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            catch (System.Exception ex)
            {
                setTipoActividad();
                return View(actividad);
            }

        }
        #endregion
         

        public void setTipoActividad()
        {
            ViewBag.IdTipoActividad = _context.TipoActividades.ToList().Select(x => new SelectListItem
            {
                Text = x.Descripcion,
                Value = x.IdTipoActividad.ToString()
            });
        }

        
    }

}
