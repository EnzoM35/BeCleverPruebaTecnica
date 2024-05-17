using BeCleverApi.Data.DBContext;
using BeCleverApi.Models;
using BeCleverApi.Services.Interface;

namespace BeCleverApi.Services
{
    public class BusinessLocationsService : IBusinessLocationsService
    {
        private readonly dbContextBeClever _dbContextBeClever;

        public BusinessLocationsService(dbContextBeClever dbContextBeClever)
        {
            _dbContextBeClever = dbContextBeClever;
        }

        public List<BusinessLocation> getAllBusinessLocations()
        {
            return _dbContextBeClever.businessLocations.ToList();
        }
    }
}
