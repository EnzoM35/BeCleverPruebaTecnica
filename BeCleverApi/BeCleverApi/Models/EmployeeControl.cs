using BeCleverApi.Models.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BeCleverApi.Models
{
    public class EmployeeControl
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public int employeeId { get; set; }

        [ForeignKey("employeeId")]
        public Employee employee { get; set; }

        [Required]
        public DateTime date { get; set; }

        [Required]
        public string registerType { get; set; }

        [Required]
        public int businessLocationId { get; set; }
        [ForeignKey("businessLocationId")]
        public BusinessLocation businessLocation { get; set; }



    }
}
