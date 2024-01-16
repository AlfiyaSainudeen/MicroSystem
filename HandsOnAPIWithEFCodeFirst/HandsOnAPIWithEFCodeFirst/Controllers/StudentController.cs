using HandsOnAPIWithEFCodeFirst.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HandsOnAPIWithEFCodeFirst.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly MyContext context;
         
        public StudentController()
        {
            context = new MyContext();
        }
        //endpoints
        [HttpPost,Route("AddStudent")]
        public IActionResult Add([FromBody]Student student)
        {
            try
            {
                context.Students.Add(student);//add students details to the student tabel
                context.SaveChanges();
                return Ok(student);
            }
            catch (Exception)
            {

                throw;
            }
        }
        [HttpGet,Route("GetAll")]
        public IActionResult GetAll()
        {
            try
            {
                List<Student> students = context.Students.ToList();//return all students from table
                return StatusCode(200, students);
            }
            catch (Exception)
            {

                throw;
            }
        }
        [HttpGet, Route("Get/{id}")]
        public IActionResult Get(int id)
        {
            try
            {
               // Student student = context.Students.Find(id);
                Student student = context.Students.SingleOrDefault(s => s.Id == id);//for all non primary key column
                return StatusCode(200, student);
            }
            catch (Exception)
            {

                throw;
            }
        }
        [HttpPut, Route("EditStudent")]
        public IActionResult Edit([FromBody] Student student)
        {
            try
            {
                context.Students.Update(student);//update students details to the student tabel
                context.SaveChanges();
                return Ok(student);
            }
            catch (Exception)
            {

                throw;
            }
        }
        [HttpDelete, Route("deleteStudent")]
        public IActionResult delete(int id)
        {
            try
            {
                Student student = context.Students.Find(id);
                context.Students.Remove(student);//add students details to the student tabel
                context.SaveChanges();
                return Ok(new JsonResult("Student Deleted",student));
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
