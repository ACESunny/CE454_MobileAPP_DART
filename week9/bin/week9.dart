// import 'dart:io';

import 'package:week9/car.dart';

void main(List<String> args) {
  // Car.getPrice();

  // print('');

  // var myCar = Car("Nissan", 1997);
  // print(myCar);
  // print("Brand: ${myCar.brand}");
  // print("Date: ${myCar.year}");

  // print('');

  // var europeCar = Car.createEurope("Nissan", 1997);
  // print(europeCar);
  // print("Brand: ${europeCar.brand}");
  // print("Date: ${europeCar.year}");

  // print('');

  // myCar.drive("Chiang Mai");
  // europeCar.drive("Bankok");

  // ------------------------------------

  Dog gg = Dog('GG');
  print("Old Name: ${gg.getName}");
  gg.setName = "BooBoo";
  print("New Name: ${gg.getName}");
}

class Dog {
  String name;
  Dog(this.name);

  set setName(String newName) {
    name = newName;
  }

  String get getName {
    return name;
  }
}

// void main() {
  // List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  // numbers.forEach((number) {
  //   print(number * number);
  // });

  // var x2 = multiplyBy(2);
  // print(x2);
  // print(x2(5));

  // x2 = multiplyBy(5);
  // print(x2(5));

//   stdout.write("Enter List Numbers: ");
//   String input = stdin.readLineSync()!;

//   List<String> stringList =
//       input.split(' ').where((s) => s.isNotEmpty).toList();
//   List<int> list_score = stringList.map(int.parse).toList();
//   list_score.sort((a, b) => b.compareTo(a));

//   print("Score List: $list_score");
//   print("SumScore: ${sumTotal(list_score)}");
//   print("Average: ${sumTotal(list_score) / list_score.length}");
//   print("Maximum: ${list_score.first}");
//   print("Minimum: ${list_score.last}");
// }

// int sumTotal(List<int> listScore, [int total = 0]) {
//   listScore.forEach((score) {
//     total += score;
//   });
//   return total;
// }

// Function multiplyBy(int n) {
//   return (int x) => x * n;
// }

// int func1(int x) {
//   return x * 2;
// }

// void decribePerson({required String name, int age = 30}) {
//   print("Name: $name, age: $age");
// }

// int ageCalculate(int birthYear) => 2024 - birthYear;

// int ageCalculate2(int birthYear) {
//   return 2024 - birthYear;
// }
