using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BeCleverApi.Models
{
    public class BusinessLocation
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }

        [Required]
        [MaxLength(100)]
        public string name  { get; set; } = string.Empty;

        [Required]
        [MaxLength(100)]
        public string country { get; set; } = string.Empty;
    }
}
