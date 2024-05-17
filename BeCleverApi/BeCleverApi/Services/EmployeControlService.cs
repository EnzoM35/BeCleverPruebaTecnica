using BeCleverApi.Data.DBContext;
using BeCleverApi.Models;
using BeCleverApi.Models.DTOs;
using BeCleverApi.Models.Enums;
using BeCleverApi.Services.Interface;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql.Storage.Internal;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace BeCleverApi.Services
{
    public class EmployeControlService : IEmployeeControlService
    {
        private readonly dbContextBeClever _dbContextBeClever;
     

        public EmployeControlService(dbContextBeClever dbContextBeClever) { 
            _dbContextBeClever = dbContextBeClever;
           
        }

        public List<EmployeeControl> getAllEmployeeControls()
        {
            return _dbContextBeClever.employeecontrol.Include(ec => ec.businessLocation).Include(ec => ec.employee).ToList();
        }


        public bool register(EmployeeControlDTO employeeControl)
        {
            

            var employeeControlRecord = new EmployeeControl
            {
                employeeId = employeeControl.employeeId,
                date = employeeControl.date,
                registerType = employeeControl.registerType.ToString(),
                businessLocationId = employeeControl.businessLocationId
            };

            try
            {
                _dbContextBeClever.employeecontrol.Add(employeeControlRecord);
                _dbContextBeClever.SaveChanges();

                return true;
            }
            catch (DbUpdateException ex)
            {
               
                Console.WriteLine($"Error al registrar el control: {ex.Message}");
                return false;
            }
            catch (Exception ex)
            {
               
                Console.WriteLine($"Error inesperado al registrar el control: {ex.Message}");
                return false;
            }
        }

        public List<EmployeeControl> search(SearchDTO searchDto ) {

            IQueryable<EmployeeControl> query = _dbContextBeClever.employeecontrol.Include(ec => ec.businessLocation).Include(ec => ec.employee).Where(ec => ec.date >= searchDto.dateFrom && ec.date <= searchDto.dateTo);

            if (!string.IsNullOrEmpty(searchDto.descriptionFilter))
            {
                query = query.Where(ec => ec.employee.firstName.Contains(searchDto.descriptionFilter) || ec.employee.lastName.Contains(searchDto.descriptionFilter));
            }

            if (!string.IsNullOrEmpty(searchDto.businessLocationId.ToString()))
            {
                query = query.Where(ec => ec.businessLocationId == searchDto.businessLocationId);
            }

            return query.ToList();

        }

        public List<AverageDTO> average(DateTime? dateFrom, DateTime? dateTo)
        {
            

            List<EmployeeControl> employeeControls = _dbContextBeClever.employeecontrol.Include(ec => ec.businessLocation).Include(ec => ec.employee).Where(ec => ec.date >= dateFrom && ec.date <= dateTo).ToList();
            //Console.WriteLine(employeeControls);

            var result = employeeControls
                .GroupBy(ec => new { ec.date.Year, ec.date.Month, ec.businessLocation})
                .Select(g => new AverageDTO
                {
                    //businessLocationId = g.Key.businessLocationId,
                    yearMonth = $"{g.Key.Year}-{g.Key.Month:D2}", // Formatear como "yyyy-MM"
                    businessLocation = g.First().businessLocation,
                    averageMaleEntrance = g.Where(ec => ec.registerType == RegisterType.Ingreso.ToString() && ec.employee.gender == Gender.Masculino.ToString()).Count() / (double)DateTime.DaysInMonth(g.Key.Year, g.Key.Month),
                    averageFemaleEntrance = g.Where(ec => ec.registerType == RegisterType.Ingreso.ToString() && ec.employee.gender == Gender.Femenino.ToString()).Count() / (double)DateTime.DaysInMonth(g.Key.Year, g.Key.Month),
                    averageMaleEgress = g.Where(ec => ec.registerType == RegisterType.Egreso.ToString() && ec.employee.gender == Gender.Masculino.ToString()).Count() / (double)DateTime.DaysInMonth(g.Key.Year, g.Key.Month),
                    averageFemaleEgress = g.Where(ec => ec.registerType == RegisterType.Egreso.ToString() && ec.employee.gender == Gender.Femenino.ToString()).Count() / (double)DateTime.DaysInMonth(g.Key.Year, g.Key.Month),

                }).OrderBy(ec => ec.businessLocation.id).ThenBy(ec => ec.yearMonth).ToList();

            return result;
        }

    }
}
