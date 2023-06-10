library updates;
/// Abstract
/// Cannot be constructed
/// Can be extended
/// Can be implemented
abstract class AirTransport {
  void moveForward(int meters);
}

/// Base
/// Can be constructed
/// Can be extended
/// Cannot be implemented
base class SeaTransport {
  void moveForward(int meters) {
    // ...
  }
}

/// Interface
/// Can be constructed
/// Cannot be inherited
/// Can be implemented
interface class CityTransport {
  void moveForward(int meters) {
    // ...
  }
}

/// Abstract Interface
/// Cannot be inherited
abstract interface class Vehicle {
  void moveForward(int meters);
}

/// Final
/// Can be constructed
/// Cannot be inherited
/// Cannot be implemented
final class SpaceTransport {
  void moveForward(int meters) {
    //..
  }
}

/// Sealed
/// Cannot be instantiated
/// Subclasses can be instantiated
sealed class DeepSeaTransport {}

class ChildDeepSeaTransport extends DeepSeaTransport {}