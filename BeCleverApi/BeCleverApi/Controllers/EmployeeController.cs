using BeCleverApi.Services.Interface;
using Microsoft.AspNetCore.Mvc;




namespace BeCleverApi.Controllers
{
    [Route("[controller]")]
    [ApiController]

    public class EmployeeController : Controller
    {

        private readonly IEmployeeService _employeeService;

        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }

        [HttpGet]
        public IActionResult getAllEmployees()
        {
            return Ok(_employeeService.GetAllEmployees());
        }
    }
}
