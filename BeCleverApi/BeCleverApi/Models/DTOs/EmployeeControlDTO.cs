using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BeCleverApi.Models.Enums;
using System;
using Microsoft.AspNetCore.Mvc.Formatters;

using Microsoft.AspNetCore.Mvc;

namespace BeCleverApi.Models.DTOs
{
    public class EmployeeControlDTO
    {
        [Required]
        public int employeeId { get; set; }

        [Required]
        public DateTime date { get; set; }

        [Required]
        
        public RegisterType registerType { get; set; }

        [Required]
        public int businessLocationId { get; set; }


      


    }
}
