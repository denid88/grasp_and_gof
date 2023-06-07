/// Інформаційний Експерт (Information expert)
/// Задача: в системі повинна акумулюватися, розраховуватися, оброблюватися
/// необхідна інформація

/// Вирішення: надати тому обʼєкту в якому знаходиться інформація тільки йому
/// право на обробку цієї інформації. Або інформація повинна оброблюватися там
/// де знаходиться

/// Bad solution
class OrderBad {
  final List<OrderItemBad> _orderItems;

  const OrderBad(this._orderItems);

  List<OrderItemBad> getOrderItems() => _orderItems;
}

class OrderItemBad {
  final GoodBad _good;
  final int _amount;

  const OrderItemBad(this._good, this._amount);

  GoodBad getGood() => _good;

  int getAmount() => _amount;
}

class GoodBad {
  final int _price;

  const GoodBad(this._price);

  int getPrice() => _price;
}

class BadClient {
  int getOrderPrice(OrderBad order) {
    List<OrderItemBad> orderItems = order.getOrderItems();

    int result = 0;

    for (OrderItemBad orderItem in orderItems) {
      int amount = orderItem.getAmount();

      GoodBad good = orderItem.getGood();
      int price = good.getPrice();

      result += price * amount;
    }

    return result;
  }
}

/// Good solution
class OrderGood {
  final List<OrderGoodItem> _orderItems;

  const OrderGood(this._orderItems);

  int getPrice () {
    var result = 0;

    for (OrderGoodItem orderGoodItem in _orderItems) {
      result += orderGoodItem.getPrice();
    }

    return result;
  }
}

class OrderGoodItem {
  final GoodGood _good;
  final int _amount;

  const OrderGoodItem(this._good, this._amount);

  int getPrice() {
    return _amount * _good.getPrice();
  }
}

class GoodGood {
  final int _price;

  const GoodGood(this._price);

  int getPrice() => _price;
}