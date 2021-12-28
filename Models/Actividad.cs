using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace CallCenterApp.Models
{
    [Table("Actividad", Schema = "dbo")]
    public partial class Actividad
    {
        [Key]
        public long IdActividad { get; set; }
        [Display(Name = "Tipo de Actividad")]
        public long IdTipoActividad { get; set; }
        [Display(Name = "Inicio de Llamada")]
        public DateTime InicioLlamada { get; set; }
        [Display(Name = "Fin de Llamada")]
        public DateTime FinLlamada { get; set; }
        public string Motivo { get; set; }
        public bool Resuelto { get; set; }
        public string usuarioId { get; set; }
        public Usuario usuario { get; set; }
    }
}
