import 'dart:io';

var Fullname, firstName, lastName, BirthYear;
String space = " ";

void main() {
  stdout.write("FirstName: ");
  firstName = stdin.readLineSync();
  stdout.write("LastName: ");
  lastName = stdin.readLineSync();
  stdout.write("Birth Year(Ex. 2545): ");
  BirthYear = stdin.readLineSync();
  Fullname = firstName + space + lastName;
  int Age = 2567 - int.parse(BirthYear);
  String result = '${Fullname}, ${Age.toString()}';
  print(result.toUpperCase());
}
