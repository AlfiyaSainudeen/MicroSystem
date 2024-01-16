using Microsoft.EntityFrameworkCore;

namespace HandsOnEFCodeFirst_Demo2.Entities
{
    public class MyContext:DbContext
    {
        //define entity
        public DbSet<Student> Students { get; set; }
        public DbSet<Marks> Marks { get; set; }

        public DbSet<Staff> Staffs { get; set; }
        //confine connect

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=INTERNS112\SQL2022;Initial Catalog=TrainingDB;User ID=sa;Password=Password123.;Trust Server Certificate=True");

            //base.OnConfiguring(optionsBuilder);
        }

    }
}
