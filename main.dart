import 'dart:io';

import 'grasp/information_expert.dart';

void main() {
  print('Version Dart: ${Platform.version}');
  /// GRASP: Information Expert
  OrderGood order = OrderGood([
    OrderGoodItem(GoodGood(20), 2),
    OrderGoodItem(GoodGood(40), 2),
    OrderGoodItem(GoodGood(20), 2),
  ]);
  print('Get price: ${order.getPrice()}');
}