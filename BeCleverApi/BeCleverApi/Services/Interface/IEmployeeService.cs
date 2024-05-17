using BeCleverApi.Models;

namespace BeCleverApi.Services.Interface
{
    public interface IEmployeeService
    {
        List<Employee> GetAllEmployees();
    }
}
