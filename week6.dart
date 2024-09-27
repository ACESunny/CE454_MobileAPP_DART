import 'dart:io';

void main(List<String> args) {
  // print("Insert your currency (THB, CNY, EUR): ");
  // String currency = stdin.readLineSync()!;

  // print("Exchange amount (USD)? : ");
  // int amount = int.parse(stdin.readLineSync()!);
  // print("Currency: $currency");

  // switch (currency.toUpperCase()) {
  //   case "THB": // 33.5
  //     print("Selected currency is Thai Bath");
  //     print("Exchagne amount: ${amount * 33.5} THB");
  //     break;
  //   case "CNY": // 7.08
  //     print("Selected currency is China Yuan");
  //     print("Exchagne amount: ${amount * 7.08} CNY");
  //     break;
  //   case "EUR": // 0.85
  //     print("Selected currency is Euro");
  //     print("Exchagne amount: ${amount * 0.85} EUR");
  //     break;
  //   default:
  //     print("Your currency is out of service");
  //     print("Auto Selected currency is Thai Bath");
  //     print("Exchagne amount: ${amount * 33.5} THB");
  // }

  // stdout.write("Enter your score : ");
  // int score = int.parse(stdin.readLineSync()!);
  // late String grade;

  // switch (score ~/ 10) {
  //   case >= 8:
  //     grade = "A";
  //     break;
  //   case 7:
  //     grade = "B";
  //     break;
  //   case 6:
  //     grade = "C";
  //     break;
  //   case 5:
  //     grade = "D";
  //     break;
  //   default:
  //     print("Grade: F");
  // }
  // if (score % 10 >= 5 && grade != "A" && grade != "F") {
  //   grade += '+';
  // }
  // print("Greade: $grade");

// ASS Car
//   print("ราคาเช่ารถต่อวัน");
//   print("[1] รถยนต์ขนาดเล็ก: 700 บาทต่อวัน");
//   print("[2] รถยนต์ขนาดกลาง: 1,000 บาทต่อวัน");
//   print("[3] รถยนต์ขนาดใหญ่: 1,500 บาทต่อวัน");
//   stdout.write("กรุณาเลือกขนาดรถยนต์ที่ต้องการเช่า: ");
//   int selector = int.parse(stdin.readLineSync()!);
//   double amount = 0;
//   switch (selector) {
//     case 1:
//       amount += 700;
//       break;
//     case 2:
//       amount += 1000;
//       break;
//     case 3:
//       amount += 1500;
//       break;
//     default:
//       print("คำตอบผิดพลาดกรุณาเริ่มโปรแกรมใหม่อีกครั้ง");
//   }
//   double discount = amount;

//   print("\nส่วนลดสำหรับจำนวนวันที่เช่า");
//   print("[*] เช่า 3-5 วัน: ส่วนลด 5%");
//   print("[*] เช่า 6-10 วัน: ส่วนลด 10%");
//   print("[*] เช่า 10 วัน: ส่วนลด 15%");
//   stdout.write("คุณต้องการเช่ากี่วัน: ");
//   int date = int.parse(stdin.readLineSync()!);

//   print(
//       "\nค่าประกัน\nจะมีค่าใช้จ่ายเพิ่มเติม 200 บาทต่อวัน\n[1] ทำประกัน\n[2] ไม่ทำประกัน");
//   stdout.write("คุณต้องการทำประกันด้วยไหม?: ");
//   selector = int.parse(stdin.readLineSync()!);
//   switch (selector) {
//     case 1:
//       amount += 200;
//       break;
//     case 2:
//       break;
//     default:
//       print("คำตอบผิดพลาดกรุณาเริ่มโปรแกรมใหม่อีกครั้ง");
//   }

//   if (date > 10) {
//     discount *= 0.15;
//   } else if (date > 5) {
//     discount *= 0.1;
//   } else if (date > 2) {
//     discount *= 0.05;
//   } else {
//     discount = 0;
//   }

//   double result = amount * date;
//   print("\nราคาทั้งหมด: $result");
//   print("ส่วนลดทั้งหมด: $discount");
//   result -= discount;
//   print("ราคาสุดท้าย: $result");
  // -----------------------
}
