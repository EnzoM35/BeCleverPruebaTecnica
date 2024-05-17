using BeCleverApi.Models;
using BeCleverApi.Models.DTOs;
using BeCleverApi.Models.Enums;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;

namespace BeCleverApi.Services.Interface
{
    public interface IEmployeeControlService
    {
        List<EmployeeControl> getAllEmployeeControls();

        bool register(EmployeeControlDTO employeeControl);

        List<EmployeeControl> search(SearchDTO searchDto);

        List<AverageDTO> average(DateTime? dateFrom, DateTime? dateTo);
    }
}
