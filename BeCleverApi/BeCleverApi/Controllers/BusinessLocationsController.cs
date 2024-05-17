using BeCleverApi.Services.Interface;
using Microsoft.AspNetCore.Mvc;

namespace BeCleverApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
   
    public class BusinessLocationsController : Controller
    {
        private readonly IBusinessLocationsService _businessLocationsService;

        public BusinessLocationsController(IBusinessLocationsService businessLocationsService) {
            _businessLocationsService = businessLocationsService;
        }

        [HttpGet]
        public IActionResult getAllBussinesLocations()
        {
            return Ok(_businessLocationsService.getAllBusinessLocations());
        }
    }
}
