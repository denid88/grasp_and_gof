import 'dart:io';
import 'playground/updates.dart';

//import 'grasp/information_expert.dart';
//import 'grasp/creator.dart';
//import 'grasp/low_coupling.dart';

void main() {
  print('Version Dart: ${Platform.version}');
  /// GRASP: Information Expert
  // OrderGood order = OrderGood([
  //   OrderGoodItem(GoodGood(20), 2),
  //   OrderGoodItem(GoodGood(40), 2),
  //   OrderGoodItem(GoodGood(20), 2),
  // ]);
  // print('Get price: ${order.getPrice()}');
  /// GRASP: Creator
  // final Order order = Order();
  // order.addOrderItem(2, "Sofa", 2000);
  // print('Get price: ${order.getPrice()}');


}

/// Examples
/// Base
///Can be constructed
// SeaTransport myVehicle = SeaTransport();
///Can be extended
// base class Boat extends SeaTransport {
//   int passengers = 4;
// }
///ERROR: Cannot be implemented
// base class MockSeaTransport implements SeaTransport {
//   @override
//   void moveForward() {}
// }
// final class SeaBot extends SeaTransport {}

///Interface
/// Can be constructed
CityTransport cityBus = CityTransport();
/// Cannot be inherited
//class CityBus extends CityTransport {}
/// Can be implemented
// class CityCar implements CityTransport {
//   @override
//   void moveForward(int meters) {}
// }

/// Abstract Interface
/// Cannot be constructed
//Vehicle vehicle = Vehicle();
/// Cannot be inherited
// class MockVehicle extends Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
// }
/// Can be implemented
// class MockVehicleInterface implements Vehicle {
//   @override
//   void moveForward(int meters) {
//
//   }
// }

/// Final
/// Can be constructed
//final spaceTransport = SpaceTransport();
/// Cannot be inherited
//class SpaceSheepTransport extends SpaceTransport {}
/// Cannot be implemented
//class SpaceSheepTransport extends SpaceTransport {}

/// Sealed
/// Cannot be instantiated
//final deepSeaTransport = DeepSeaTransport();
/// Subclasses can be instantiated
//final childDeepSeaTransport = ChildDeepSeaTransport();