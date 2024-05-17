using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BeCleverApi.Models.Enums;

namespace BeCleverApi.Models
{
    public class Employee
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }

        [Required]
        [MaxLength(50)]
        public string firstName { get; set; } = string.Empty;

        [Required]
        [MaxLength(50)]
        public string lastName { get; set; } = string.Empty;

        //[Required]
        //public Gender gender { get; set; }

        [Required]
        private Gender Gender;
        public string gender
        {
            get => Gender.ToString();

        }





    }
}
