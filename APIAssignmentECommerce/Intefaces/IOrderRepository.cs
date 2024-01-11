using APIAssignmentECommerce.Models;

namespace APIAssignmentECommerce.Intefaces
{
    public interface IOrderRepository
    {
        string OrderProduct(Order order);
        List<Order> GetOrders();
        void DeleteOrder(int id);

    }
}
