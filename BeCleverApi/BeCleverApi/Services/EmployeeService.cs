using BeCleverApi.Data.DBContext;
using BeCleverApi.Models;
using BeCleverApi.Services.Interface;

namespace BeCleverApi.Services
{
    public class EmployeeService : IEmployeeService
    {
        private readonly dbContextBeClever _dbContextBeClever;

        public EmployeeService(dbContextBeClever dbContextBeClever)
        {
            _dbContextBeClever = dbContextBeClever;
        }

        public List<Employee> GetAllEmployees() { 
            return _dbContextBeClever.Employee.ToList();
        }
    }
}
