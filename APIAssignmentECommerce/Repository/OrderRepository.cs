using APIAssignmentECommerce.Intefaces;
using APIAssignmentECommerce.Models;

namespace APIAssignmentECommerce.Repository
{
    public class OrderRepository:IOrderRepository
    {
        List<Product> productList = ProductRepository.products;
        List<Order> orders = new List<Order>();
        public void DeleteOrder(int id)
        {
            foreach (Order order in orders)
            {
                if(order.OrderId == id)
                {
                    orders.Remove(order);
                    return;
                }
            }
        }

        public List<Order> GetOrders()
        {
            return orders;
        }

        public string OrderProduct(Order order)
        {
           Product ?o= (from pr in productList
                    where order.ProductId==pr.ProductID
                    select pr).SingleOrDefault();

            if(o == null)
            {
                return "No products available";
            }
            else
            {
                order.TotalPrice = o.Price * order.Quantity;
                orders.Add(order);
                return ("Order placed...");
            }
                    
        }

        
    }
}
