/// Creator (творець)
/// Проблема: Хто повинен створювати обʼєкти в системі?
/// Вирішення: Кожен клас повинен створюватися тим класом, який його використовує
/// Чи порушшує використання Dependency Injection шаблон Creator - Ні?
/// Solution
class Order {
  final List<OrderItem> _orderItems;

  Order({List<OrderItem>? orderItems})
      : _orderItems = orderItems ?? [];

  int getPrice () {
    var result = 0;

    for (OrderItem orderGoodItem in _orderItems) {
      result += orderGoodItem.getPrice();
    }

    return result;
  }

  void addOrderItem(int amount, String name, int price) {
    _orderItems.add(OrderItem.fromData(amount, name, price));
  }
}

class OrderItem {
  final Good _good;
  final int _amount;

  const OrderItem(this._amount, this._good);

  factory OrderItem.fromData(int amount, String name, int price) {
    final Good good = Good(name, price);
    return OrderItem(amount, good);
  }

  int getPrice() {
    return _amount * _good.price;
  }
}

class Good {
  final String _name;
  final int _price;

  const Good(this._name, this._price);

  int get price => _price;
  String get name => _name;
}