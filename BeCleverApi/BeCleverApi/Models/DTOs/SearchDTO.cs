using System.ComponentModel.DataAnnotations;

namespace BeCleverApi.Models.DTOs
{
    public class SearchDTO
    {

        [Required]
        public DateTime dateFrom { get; set; }
        [Required]
        public DateTime dateTo { get; set; }
       
        public string? descriptionFilter { get; set; }
     
        public int? businessLocationId { get; set; }


    }
}
