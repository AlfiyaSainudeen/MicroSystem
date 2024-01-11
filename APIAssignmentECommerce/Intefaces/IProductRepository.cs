using APIAssignmentECommerce.Models;

namespace APIAssignmentECommerce.Intefaces
{
    public interface IProductRepository
    {
        void AddProduct(Product product);
        string ModifyProduct(Product product);
        string DeleteProduct(int id);

        Product GetProductByIdorName(int ?productId, string ?productName);

        List<Product> GetProductByCategory(string Category);

    }
}
