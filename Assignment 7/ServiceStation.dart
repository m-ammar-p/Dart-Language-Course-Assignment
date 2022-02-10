void main(List<String> args) {

  Car c = Car();
  Bus b = Bus();
  Truck t = Truck();
  Bike bike = Bike();

  serviceCenter(c);
  serviceCenter(b);
  serviceCenter(t);
  serviceCenter(bike);

  
} // End of main()

void serviceCenter(Vehicle v){

  v.doService();

} // Enf of serviceCenter()

class Vehicle {

  void doService(){
    print("Vehicle is servicing...");
  }
} // End of Vehicle Class

class Car extends Vehicle { 

  @override
  void doService(){
    print("Car is servicing...");
  }
} // End of Car Class

class Bus extends Vehicle {

  @override
  void doService(){
    print("Bus is servicing...");
  }
} // End of Bus Class

class Truck extends Vehicle {

  @override
  void doService(){
    print("Truck is servicing...");
  }
} // End of Truck Class

class Bike extends Vehicle {

  @override
  void doService(){
    print("Bike is servicing...");
  }
} // End of Bike Class