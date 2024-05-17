
using BeCleverApi.Models;
using BeCleverApi.Models.DTOs;
using BeCleverApi.Models.Enums;
using BeCleverApi.Services.Interface;
using Microsoft.AspNetCore.Mvc;

namespace BeCleverApi.Controllers
{
    [Route("[controller]")]
    [ApiController]

    public class EmployeeControlController : Controller
    {
        private readonly IEmployeeControlService _employeeControlService;

        public EmployeeControlController(IEmployeeControlService employeeControlService) {
            _employeeControlService = employeeControlService;
        }

        [HttpGet]
        public IActionResult getAllEmployeeControls()
        {
            return Ok(_employeeControlService.getAllEmployeeControls());
        }

        
        [HttpPost]
        public IActionResult register([FromBody] EmployeeControlDTO employeeControl)
        {


            if (!ModelState.IsValid)
            {
                return BadRequest("Datos erroneos!");
            }

            bool isCompletedSuccessfully = _employeeControlService.register(employeeControl);

            if (isCompletedSuccessfully)
            {
                return Ok("Control de ingreso ingresado correctamente!");
            }

            return BadRequest("No se pudo ingresar el control");
        }


        [HttpGet("search")]
        public IActionResult search([FromQuery] SearchDTO searchDto)
        {
            if (!ModelState.IsValid)
            {

                return BadRequest(ModelState);
            }


            List<EmployeeControl> listOfControls = _employeeControlService.search(searchDto);

            if (listOfControls.Any())
            {
                return Ok(listOfControls);
            }

            return BadRequest("No se encontraron registros para su busqueda.");


        }

        [HttpGet("average")]

        public IActionResult average([FromQuery] DateTime? dateFrom, DateTime? dateTo) {

            if (!dateFrom.HasValue || !dateTo.HasValue) { return BadRequest("Fechas vacias!!"); }

            List<AverageDTO> result = _employeeControlService.average(dateFrom, dateTo);


            return Ok(result);

        }

    }
}
