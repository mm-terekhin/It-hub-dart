//1.	Создайте класс BankAccount, у которого есть приватное поле _balance и методы deposit() и withdraw(). Ограничьте доступ к _balance, разрешив его изменение только через методы.
class BankAccount {
  BankAccount();

  double _balance = 0;

  void deposit(double sum) {
    _balance += sum;
  }

  void withdraw(double sum) {
    _balance -= sum;
  }

  @override
  String toString() => 'Balance: $_balance';
}

// 2.	Реализуйте класс Person с приватным полем _age. Создайте геттер и сеттер,
//     который позволит изменять _age только на положительное число.

class Person {
  Person({
    required int age,
  }) : _age = age;

  int _age;

  int get age => _age;

  set age(int age) {
    if (age >= 0) {
      _age = age;
    }
  }
}

//3.	Создайте абстрактный класс Vehicle с методами move() и stop().
// 20.	Добавить в класс Vehicle поля model, year и maxSpeed.
abstract class Vehicle {
  Vehicle({
    required this.model,
    required this.year,
    required this.maxSpeed,
  });

  void move();

  String model;
  int year;
  int maxSpeed;

  void stop() {
    print('Stoped');
  }
}

// 4.	Реализуйте классы Car и Bike, унаследованные от Vehicle, с разными реализациями move().
// 5.	Добавьте в Car поле fuelLevel и метод refuel().

class Car extends Vehicle
    with GPSNavigation, Horn, Convertible
    implements SelfDriving {
  double fuelLevel = 20;

  Car({
    required super.model,
    required super.year,
    required super.maxSpeed,
  });

  @override
  void navigateTo(String location) {
    print('Построен маршрут до $location');
    super.navigateTo(location);
  }

  @override
  void move() {
    print('Vroom-vroom!');
  }

  void refuel() {
    print('refuel');
  }

  @override
  void autoPilot() {
    print('Mode auto driving');
  }
}

// 6.	Добавьте в Bike поле isElectric и метод chargeBattery().
// 9.	Имплементируйте ElectricPowered в Bike и Car, если они могут быть электрическими.

class Bike extends Vehicle with GPSNavigation implements ElectricPowered {
  Bike({
    required this.isElectric,
    required super.model,
    required super.year,
    required super.maxSpeed,
  });

  bool isElectric;

  @override
  void move() {
    print('Hoook!');
  }

  void chargeBattery() {
    print('Charge battery');
  }

  @override
  void charge() {
    print('Charging');
  }
}

// 7.	Создайте класс Truck, который наследуется от Car, но добавляет поле cargoCapacity.

class Truck extends Car with GPSNavigation, Horn implements Loadable {
  Truck(
    this.cargoCapacity,
    String model,
    int year,
    int maxSpeed,
  ) : super(
          model: model,
          year: year,
          maxSpeed: maxSpeed,
        );

  double cargoCapacity;

  @override
  void autoPilot() {
    print('Mode auto driving absence');
  }

  @override
  void loadCargo() {
    print('Load start');
    print('...');
    print('Load stop');
  }

  @override
  void unloadCargo() {
    print('Unload start');
    print('...');
    print('Unload stop');
  }
}

// 8.	Создайте интерфейс ElectricPowered с методом charge().

abstract interface class ElectricPowered {
  // void charge1() {
  //   //Какой-то код...
  // }
  void charge();
}

// 10.	Создайте интерфейс SelfDriving с методом autoPilot(), который реализует Car.
interface class SelfDriving {
  void autoPilot() {
    //Какой-то код...
  }
}

// 11.	Создайте интерфейс Loadable с методом loadCargo(). Реализуйте его в Truck.
// 12.	Добавьте в Loadable метод unloadCargo() и реализуйте его в Truck.
abstract class Loadable {
  void loadCargo();

  void unloadCargo();
}

// 13.	Создайте миксин GPSNavigation с методом navigateTo().
mixin GPSNavigation on Vehicle {
  void navigateTo(String location) {
    print('navigate to $location');
  }
}

// 15.	Создайте миксин Horn с методом honk().
mixin class Horn {
  void honk() {
    print('Tuuu-tuuu');
  }
}

// 14.	Примените GPSNavigation к Car, Bike и Truck.
// 16.	Примените Horn к Car и Truck.
// 17.	Напишите миксин Convertible с методом openRoof(), который может использоваться для Car.

mixin Convertible {
  void openRoof() {
    print('Roof opened');
  }
}

// 18.	Создайте расширение StringExtensions, добавляющее метод capitalize(),
//     который делает первую букву строки заглавной.

extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) return this;

    return this[0].toUpperCase() + substring(1);
  }
}

// 19.	Реализуйте расширение ListExtensions, которое добавляет метод removeDuplicates() для списков.

extension ListExtensions on List {
  List removeDuplicates() {
    if (isEmpty) return this;

    Set set = {...this};

    return set.toList();
  }
}

// 21.	Создайте расширение VehicleExtensions, добавляющее метод describe(),
//     который возвращает строку с информацией об объекте Vehicle.
extension VehicleExtensions on Vehicle {
  void describe() {
    print('Model: $model\nMaxSpeed: $maxSpeed\nYear: $year');
  }
}

// 22.	Создайте класс DeliveryVehicle, который наследуется от Truck и добавляет метод deliverPackage().
// 23.	Добавьте GPSNavigation в DeliveryVehicle, чтобы он мог находить адрес доставки.
// 25.	Напишите метод calculateDeliveryCost() в DeliveryVehicle, используя cargoCapacity и расстояние до пункта назначения.
class DeliveryVehicle extends Truck with GPSNavigation {
  DeliveryVehicle({
    required double cargoCapacity,
    required String model,
    required int year,
    required int maxSpeed,
  }) : super(
          cargoCapacity,
          model,
          year,
          maxSpeed,
        );

  void deliverPackage() {
    print('Packed');
  }

  void calculateDeliveryCost({
    required double distance,
  }) {
    if (cargoCapacity > 2500) {
      var finalySum = (sum + 3) * distance;
      print(finalySum);
    } else {
      print(sum * distance);
    }
  }
}

const sum = 5;

// 24.	Создайте класс ElectricTruck, который наследуется от DeliveryVehicle и имплементирует ElectricPowered.
class ElectricTruck extends DeliveryVehicle implements ElectricPowered {
  ElectricTruck({
    required super.cargoCapacity,
    required super.model,
    required super.year,
    required super.maxSpeed,
  });

  @override
  void charge() {
    print('Chrging');
  }
}
