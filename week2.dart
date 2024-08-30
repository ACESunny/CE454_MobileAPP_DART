import 'dart:io';

void main() {
  print("ยินดีต้อนรับสู่โปรแกรมคำนวณพื้นที่หลังจากปูกระเบื่อง");
  stdout.write("โปรดใส่ขนาดความยาวสนามของคุณ(เซนติเมตร): ");
  String? variable = stdin.readLineSync();
  int result = cal(isNum(variable));
  print("พื้นที่สีเขียวที่เหลืออยู่หลังจากปูกระเบื่อง: $result ซม.");
}

isNum(variable) {
  if (variable != null) {
    int result = (double.parse(variable)).toInt();
    return result;
  }
}

cal(variable) {
  variable -= 1;
  variable *= variable;
  return variable;
}

// ceil ปัดขึ้นหมด
// round ปัดลงเมื่อต่ำกว่า.5
// floor ปัดลง
// clamp จำกัดค่า (min, max)