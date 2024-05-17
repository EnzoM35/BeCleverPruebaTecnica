using BeCleverApi.Models;
using Microsoft.EntityFrameworkCore;


namespace BeCleverApi.Data.DBContext
{
    public class dbContextBeClever : DbContext
    {

        public dbContextBeClever(DbContextOptions<dbContextBeClever> options)
                : base(options)
        {

        }

        public DbSet<Employee> Employee { get; set; }
        public DbSet<BusinessLocation> businessLocations { get; set; }
        public DbSet<EmployeeControl> employeecontrol { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            //modelBuilder.Entity<EmployeeControl>().HasOne(ec => ec.employee).WithMany().HasForeignKey(ec => ec.employeeId);

            //modelBuilder.Entity<EmployeeControl>().HasOne(ec => ec.businessLocation).WithMany().HasForeignKey(ec => ec.businessLocationId);

            base.OnModelCreating(modelBuilder);

            //modelBuilder.Entity<EmployeeControl>(entity =>
            //{
            //    entity.HasKey(e => e.Id);
            //    entity.Property(e => e.employeeId).IsRequired();
            //    entity.HasOne(e => e.employee)
            //          .WithMany()
            //          .HasForeignKey(e => e.employeeId);

            //    entity.Property(e => e.businessLocationId).IsRequired();
            //    entity.HasOne(e => e.businessLocation)
            //          .WithMany()
            //          .HasForeignKey(e => e.businessLocationId);

            //    entity.Property(e => e.date).IsRequired();
            //    entity.Property(e => e.registerType).IsRequired();
            //});
        }
    }

    
}
