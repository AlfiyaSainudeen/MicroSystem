using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace HandsOnEFCodeFirst_Demo2.Entities
{
    [Table("tbl_marks")]
    public class Marks
    {
        [Key]
        public Guid MarksId { get; set; }
        [Required]
        [StringLength(50)]
        [Column(TypeName ="varchar")]
        public string Exam { get; set; }
        public int? TotalMarks { get; set; }//set column as null
        public int StudentId { get; set; }

        //navigation property
        [ForeignKey("StudentId")]

        public Student Student { get; set; }
    }
}
