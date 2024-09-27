import 'dart:io';

class Car {
  
  String brand;
  String model;
  int year;


  Car(this.brand, this.model, this.year);


  int carAge() {
    return DateTime.now().year - year;
  }
}

void main() {

  stdout.write("Enter the car brand: ");
  String brand = stdin.readLineSync() ?? "Unknown";

  stdout.write("Enter the car model: ");
  String model = stdin.readLineSync() ?? "Unknown";

  stdout.write("Enter the car manufacturing year: ");
  int year = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;


  Car myCar = Car(brand, model, year);


  print("\nCar Information:");
  print("Brand: ${myCar.brand}");
  print("Model: ${myCar.model}");
  print("Year: ${myCar.year}");
  print("Car Age: ${myCar.carAge()} years");
}
