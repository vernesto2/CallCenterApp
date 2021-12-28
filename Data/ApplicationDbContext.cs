using CallCenterApp.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace CallCenterApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public virtual DbSet<Usuario> Usuarios { get; set; }
        public virtual DbSet<TipoActividad> TipoActividades { get; set; }
        public virtual DbSet<Actividad> Actividades { get; set; }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
    }
}
