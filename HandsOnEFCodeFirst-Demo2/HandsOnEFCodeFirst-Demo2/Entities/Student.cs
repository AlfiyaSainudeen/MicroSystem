using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace HandsOnEFCodeFirst_Demo2.Entities
{
    [Table("tbl_students")]
    public class Student
    {
        [Key]//set id as primary key
        [DatabaseGenerated(DatabaseGeneratedOption.None)]//distale the identity
        public int Id { get; set; }
        [Required]//set not null constraint
        [Column("Name",TypeName ="varchar")]
        [StringLength(30)]
        public string Name { get; set; }

        [Required]//set not null constraint
        [Column("Class", TypeName = "varchar")]
        [StringLength(30)]
        public string Std { get; set; }

    
        [Column(TypeName = "char")]
        [StringLength(2)]
        public string Section { get; set; }
    }
}
