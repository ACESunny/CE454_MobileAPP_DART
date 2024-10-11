import 'dart:io';

import 'package:week8/week8.dart' as week8;

void main(List<String> arguments) {
  // print('Hello world: ${week8.calculate()}!');

  // Set<String> set1 = {'Thailand', 'Laos'};
  // print('Original: $set1');
  // set1.add('Myanmar');
  // print('New: $set1');

  // print('\n---------------------------------------\n');

  // Set<String> set2 = {'Vietnam', 'Malaysia', 'Brunai'};
  // // set1.addAll(set2);
  // print('After added: $set1');

  // String target = 'Thailand';
  // bool a = set1.contains(target);
  // print('Target $target: $a');

  // print('\n---------------------------------------\n');

  // Set<String> after_union = set1.union(set2);
  // print('After union: $after_union'); // แสดงค่าที่รวมกัน
  // set2.add('Thailand');
  // print('After intersected: ${set1.intersection(set2)}'); // หาค่าซ้ำกัน
  // print('After difference: ${set1.difference(set2)}'); // หาค่าที่แตกต่างกัน

  // print('\nList of Set1: ${set1.toList()[0]}');

  // print('\n---------------------------------------\n');

  // Set<String> FoodSet = {};
  // for (var i = 1; i < 9; i++) {
  //   stdout.write("Food No.${i} : ");
  //   FoodSet.add(stdin.readLineSync()!);
  // }
  // print(FoodSet);

  // print('\n---------------------------------------\n');

  // Map<String, String> capitals = {
  //   'key': 'value',
  //   'Thailand': 'Bangkok',
  //   'USA': 'Washiton, D.C.',
  //   'Japan': 'Tokyo'
  // };

  // print(capitals['Thailand']);
  // capitals.putIfAbsent('Laos', () => 'Vientien');
  // capitals.remove('USA');
  // // capitals.update('Japan', (cap) => 'Osaka');
  // capitals.update('Japan', (cap) {
  //   return 'Osaka $cap';
  // });
  // print(capitals);

  // print('\n---------------------------------------\n');

  // List<String> countries = capitals.keys.toList();
  // print(countries);

  // print('\n---------------------------------------\n');

  // Map<String, int> Menu = {'Banana': 15, 'Orange': 20, 'Apple': 30};
  // List<String> Buy = [];
  // int total = 0;
  // String temp;

  // print(
  //     '===> All Menu\n- Banana: 15 Bath\n- Orange: 20 Bath\n- Apple: 30 Bath\n');
  // for (var i = 1; i < 6; i++) {
  //   do {
  //     stdout.write('$i. Enter Name: ');
  //     temp = stdin.readLineSync()!;
  //   } while (!(Menu.containsKey(temp)));
  //   Buy.add(temp);
  //   total += Menu[temp]!;
  // }

  // print('\nTotal Price: $total');

  // print('\n---------------------------------------\n');

  List<int> myList = [1, 2, 3, 4, 5, 6, 7];
  // myList.forEach(print);
  print(myList.map((number) => number * number).toList());
  print(myList);

  print('\n---------------------------------------\n');

  greet();
}

void greet() {
  print('Hello Function');
}
