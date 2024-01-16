using Microsoft.EntityFrameworkCore;
namespace HandsOnAPIWithEFCodeFirst.Entities
{
    public class MyContext:DbContext
    {
        public DbSet<Student> Students { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=INTERNS112\SQL2022;Initial Catalog=TrainingDB;User ID=sa;Password=Password123.;Trust Server Certificate=True");
            
            //base.OnConfiguring(optionsBuilder);
        }

    }
}
