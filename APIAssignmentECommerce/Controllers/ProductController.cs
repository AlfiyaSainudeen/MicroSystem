using APIAssignmentECommerce.Models;
using APIAssignmentECommerce.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace APIAssignmentECommerce.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        ProductRepository productRepository;
        public ProductController(ProductRepository productRepository)
        {
            this.productRepository = productRepository;
        }

        [HttpPost("AddProduct")]
        public IActionResult AddProduct(Product product)
        {
            try
            {
                productRepository.AddProduct(product);
                return StatusCode(200, "Success!!");
            }
            catch (Exception ex)
            {

                return BadRequest();
            }

        }

        [HttpGet("Get Product by Category/{category}")]
        public IActionResult GetProductByCategory(string category)
        {
            try
            {
                List<Product> products = productRepository.GetProductByCategory(category);

                if (products.Count > 0)
                {
                    return StatusCode(200, products);
                }
                else
                {
                    return StatusCode(200, "No Products found...");
                }

            }
            catch (Exception ex)
            {

                return BadRequest();
            }
        }

        [HttpGet("Get Product by Name or ID")]
        public IActionResult GetProductByNameorID(string ?name, int ?id)
        {
            try
            {
                Product product = productRepository.GetProductByIdorName(id, name);
                if (product == null)
                {
                    return BadRequest("No item found..");
                }
                return StatusCode(200, product);
            }
            catch (Exception ex)
            {

                return BadRequest();
            }
        }

        [HttpPut("Modify Product")]
        public IActionResult ModifyProduct(Product product)
        {
            try
            {

                return StatusCode(200, productRepository.ModifyProduct(product));
            }
            catch (Exception ex)
            {

                return BadRequest();
            }
        }

        [HttpDelete("Delete Product")]
        public IActionResult DeleteProduct(int id)
        {

            try
            {
                return StatusCode(200, productRepository.DeleteProduct(id));
            }
            catch (Exception ex)
            {

                return BadRequest();
            }
        }
    }
}
