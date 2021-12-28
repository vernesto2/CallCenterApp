using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace CallCenterApp.Models
{
    [Table("TipoActividad", Schema = "dbo")]
    public partial class TipoActividad
    {
        public TipoActividad()
        {
            Actividad = new HashSet<Actividad>();
        }
        [Key]
        public long IdTipoActividad { get; set; }
        public string Descripcion { get; set; }
        public bool? Activo { get; set; }

        public virtual ICollection<Actividad> Actividad { get; set; }
    }
}
