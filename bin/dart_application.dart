import 'package:dart_application/dart_application.dart';

void main(List<String> arguments) {
  // print(chetNumber(10));
  // print(chetNumber(33));

  // print(funcTask2(a: 2, b: 2, c: 1));

  // print(funcTask4(201));

/* 
5. Создать опционал(null) с типом int и создать еще две переменных,
которые содержат значение первой переменной, но не является
опционалом. Сделать это необходимо 2 способами: при помощи force
unwrapping (!), оператора нулевого слияния (??)

  int? number;

  int number1 = number!;

  int number2 = number ?? 50; 
*/

/* 6. Создать массив [2, 6, 25, 4, 2, 2, 10, 2], затем создать новую
переменную, в которой будут те же значения, что и в ранее созданном
массиве, но не должно быть повторяющихся значений.

  List<int> list = [2, 6, 25, 4, 2, 2, 10, 2];

  print(list);
  Set<int> set = {...list};

  print(set); 
  */

  // print(funcTask7([1000, 2, 3, 4]));

//   10. Создать экземпляр раннее созданного перечисление и вывести в
// консоль название

  // TypeTea tea = TypeTea.fruitTea;

  // print(
  //   tea.getName(),
  // );

  checkTea(tea: TypeTea.fruitTea);
}

// 1. Написать функцию, которая на вход принимает число типа Int, а
// возвращает, является ли число четным

bool chetNumber(int number) {
  if (number % 2 == 0) {
    return true;
  }

  return false;
}

// 2. Написать функцию, которая на вход принимает 3 числа: a, b, c и
// возвращает результат вычисления b^2 - 4 * a * c

double funcTask2({
  required int a,
  required int b,
  required int c,
}) {
  var result = (b * b) - (4 * a * c);

  return result.toDouble();
}

// 3. Написать функцию, которая рассчитает площадь прямоугольника. На
// вход два параметра: длина и ширина, на выход: площадь

double square(double height, double width) {
  final square = height * width;

  return square;
}

// 4. Напишите функции, которая на вход принимает целое положительное
// число, а возвращает сумму всех чисел от 1 до переданного числа

int funcTask4(int number) {
  var sum = 0;

  for (int index = 1; index <= number; index++) {
    sum += index;
  }

  return sum;
}

// 7. Написать функцию, которая на вход принимает массив целых чисел, а
// возвращает true или false. true, если результат сложения всех чисел
// массива больше или равно 100, false, если меньше 100

bool funcTask7(List<int> numbers) {
  var sum = 0;

  for (var number in numbers) {
    sum += number;
  }

  if (sum >= 100) {
    return true;
  }

  return false;
}

// 8. Создать перечисление с видами чая (blackTea, fruitTea, greenTea) -
// TypeTea

// 9. Написать функцию в перечислении которая будет отдавать название
// чая (blackTea – черый чай, fruitTea – фруктовый чай, greenTea –
// зеленый чай)

enum TypeTea {
  blackTea,
  fruitTea,
  greenTea;

  String getName() {
    switch (this) {
      case TypeTea.blackTea:
        return 'черый чай';
      case TypeTea.fruitTea:
        return 'фруктовый чай';
      case TypeTea.greenTea:
        return 'зеленый чай';
    }
  }
}

// 11. Написать функцию, которая на вход принимает параметр типа Tea, но
// который является опционалом. Функция должна печатать название
// чая, если значение есть и “Данный вид чая не найден”, если значение
// null.

void checkTea({TypeTea? tea}) {
  if (tea == null) {
    print('Данный вид чая не найден');
  } else {
    print(tea.getName());
  }
}
