import 'dart:io';

void main() {
// List
  List<String> names = ['Sun', 'Sunny', 'Sunsun'];
  print(names);

// ---------------------------

  // for-loop print star
//   stdout.write("Please insert Number: ");
//   int num = int.parse(stdin.readLineSync()!);

//   for (int i = num; i != 0; i--) {
//     String str = "";

//     for (int a = 0; a < (num - i); a++) {
//       str += " ";
//     }

//     for (int b = 0; b < i; b++) {
//       str += "*";
//     }
//     print(str);
//   }
// ---------------------------

  // Factorial while loop
//   stdout.write("Please insert Number: ");
//   int num = int.parse(stdin.readLineSync()!);
//   int result = 1, i = 1;

//   while (i <= num) {
//     result *= i;
//     i++;
//   }
//   print('Result: $result');
// ---------------------------

  // Factorial for loop
  //   stdout.write("Num: ");
  //   var n = int.parse(stdin.readLineSync()!);
  //   int result = 1;
  //   for (int i = 1; i <= n; i++) {
  //     result *= i;
  //   }
  //   print('Result: $result');
// ---------------------------

// While Loop
//   stdout.write(
//       "Package downloaded, Do you want to install this package? \n[1] Yes\n[2] No\nAnswer: ");
//   String answer = stdin.readLineSync()!;

//   while (answer != "1" && answer != "2") {
//     stdout.write(
//         "Package downloaded, Do you want to install this package? \n[1] Yes\n[2] No\nAnswer: ");
//     answer = stdin.readLineSync()!;
//   }

  // Short form condition
//   print(answer == '1' ? "installing" : "Thank you");

//   switch (answer) {
//     case "1":
//       print("Installing..");
//       break;
//     case "2":
//       print("Thank you!");
//       break;
//   }
// ---------------------------

// Do-While
//   String answer;
//   do {
//     stdout.write(
//         "Package downloaded, Do you want to install this package? \n[1] Yes\n[2] No\nAnswer: ");
//     answer = stdin.readLineSync()!;
//   } while (answer != "1" && answer != "2");
//   print(answer == '1' ? "installing" : "Thank you");
}
