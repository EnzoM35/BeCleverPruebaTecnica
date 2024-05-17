namespace BeCleverApi.Models.DTOs
{
    public class AverageDTO
    {
        //ICollection<BussinesAverageDTO> bussinesLocations { get; set; }

        //public int businessLocationId { get; set; }
        public string yearMonth { get; set; }
        public double averageMaleEntrance{ get; set; }
        public double averageFemaleEntrance { get; set; }
        public double averageMaleEgress { get; set; }
        public double averageFemaleEgress { get; set; }

        public BusinessLocation businessLocation { get; set; }


    }
}
