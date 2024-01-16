using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HandsOnEFCodeFirst_Demo2.Entities
{
    [Table("tbl_staff")]
    public class Staff
    {
        [Key]
        public string Id { get; set;}

        [Required]
        [StringLength(50)]
        [Column(TypeName = "varchar")]
        public string Name { get; set; }

    }
}
