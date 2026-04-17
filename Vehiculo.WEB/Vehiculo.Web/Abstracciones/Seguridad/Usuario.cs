using System.ComponentModel.DataAnnotations;

namespace Abstracciones.Seguridad
{
    public class UsuarioBase
    {
        [Required]
        public string NombreUsuario { get; set; } = string.Empty;
        public string? PasswordHash { get; set; }

        [Required]
        [EmailAddress]
        public string CorreoElectronico { get; set; } = string.Empty;
    }

    public class Usuario : UsuarioBase
    {
        [Required]
        public string Password { get; set; } = string.Empty;
        public string ConfirmarPassword { get; set; } = string.Empty;
    }
}
