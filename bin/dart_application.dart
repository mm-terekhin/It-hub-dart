import 'package:dart_application/oop/oop.dart';

void main(List<String> args) {
// 26.	Создайте список из разных Vehicle: Car, Truck, Bike, ElectricTruck, вызовите у них методы move(), stop() и describe().

  final listVehicle = [
    Car(
      model: 'BMW',
      year: 2024,
      maxSpeed: 350,
    ),
    Truck(
      25001,
      'Lada',
      2020,
      140,
    ),
    Bike(
      isElectric: true,
      model: 'BMW',
      year: 2025,
      maxSpeed: 240,
    ),
    ElectricTruck(
      cargoCapacity: 2000,
      model: 'KAMAZ',
      year: 2024,
      maxSpeed: 160,
    ),
  ];

  for (final car in listVehicle) {
    car.move();
    car.stop();
    car.describe();
    print('-------------------------\n');
  }
}
// var banckAcc = BankAccount();

  // print(banckAcc);

  // banckAcc.deposit(600.7);
  // print(banckAcc);

  // banckAcc.withdraw(50);
  // print(banckAcc);

  // var person = Person(age: 20);

  // print(person.age);

  // person.age = 18;
  // print(person.age);

  // person.age = -1;
  // print(person.age);

  // var truck = Truck(2500);


  // var car = Car();
  // car.honk();

  // car.navigateTo('Moscow');

  // var honk = Horn();

  // truck.move();

  // truck.stop();

  // final str = 'hello world!';

  // final list = [1, 2, 2, 2, 3, 4, 5, 65, 6, 5];

  // print(list.removeDuplicates());

  // print(str.capitalize());