import 'dart:io';

void main() {
  stdout.write("Please insert product price(Bath): ");
  double price = double.parse(stdin.readLineSync()!);
  stdout.write("Please insert discount(%): ");
  double discount = double.parse(stdin.readLineSync()!);

  var result = price - (price * (discount / 100));
  print("Total Price: ${result + (result * (7 / 100))}");
}
