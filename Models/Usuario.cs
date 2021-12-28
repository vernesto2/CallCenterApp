using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace CallCenterApp.Models
{
    [Table("Usuario", Schema = "dbo")]
    public class Usuario : IdentityUser
    {
        public Usuario()
        {
            Actividad = new HashSet<Actividad>();
        }

        public bool? Activo { get; set; }
        public virtual ICollection<Actividad> Actividad { get; set; }
    }
}
