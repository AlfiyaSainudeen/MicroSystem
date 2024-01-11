using APIAssignmentECommerce.Intefaces;
using APIAssignmentECommerce.Models;

namespace APIAssignmentECommerce.Repository
{
    public class ProductRepository : IProductRepository
    {


        public static List<Product> products= new List<Product>();

        int id = 101;

        public void AddProduct(Product product)
        {
            product.ProductID = id;
            products.Add(product);
            id++;
        }

        public string DeleteProduct(int id)
        {
            int flag = 0;
            foreach (Product product in products)
            {
                if(product.ProductID == id)
                {
                    flag = 1;
                    products.Remove(product);
                    break;
                }
                    
            }

            if (flag == 1)
            {
                return "Product deleted...";

            }

            else 
            { 
                return "Invalid Product ID..."; 
            }
        }


        public List<Product> GetProductByCategory(string Category)
        {
            List<Product > selectedProducts = new List<Product>();
            foreach (Product product in products)
            {
                if(product.Category == Category)
                    selectedProducts.Add(product);
            }

            return selectedProducts;
        }

        public Product GetProductByIdorName(int? productId, string? productName)
        {

            foreach(Product product in products)
            {
                if (productId != null)
                {
                    if (productId == product.ProductID)
                        return product;
                }
                else
                {
                    if (productName != null)
                    { 
                        if(productName == product.ProductName)
                            return product;
                    } 
                }
                
            }
            return null;
        }

        public string ModifyProduct(Product product)
        {
            int flag = 0;
            foreach (Product product1 in products)
            {
                if (product1.ProductID == product.ProductID)
                {
                    flag = 1;
                    product1.ProductName = product.ProductName;
                    product1.Price = product.Price;
                    product1.Category = product.Category;
                    product1.Stock = product.Stock;
                }
            }
            if (flag != 0)
            {
                return "Product Modified...";
            }
            else  
                return "Invalid Product ID"; 
        }
    }
}
