import 'dart:io';

void main() {
  List<Map<String, dynamic>> studentList = [];
  Set<String> studentIds = {};
  String continueInput = 'y';

  // ขั้นตอนที่ 1: ลงทะเบียนนักศึกษา
  while (continueInput.toLowerCase() == 'y') {
    String studentID;

    // รับรหัสนักศึกษา
    while (true) {
      stdout.write("Enter student ID (10 digits): ");
      studentID = stdin.readLineSync() ?? '';

      // 1. รหัสนักศึกษาต้องมี 10 หลัก
      // 2. รหัสนักศึกษาต้องเป็นตัวเลขเท่านั้น
      // 3. รหัสนักศึกษาต้องไม่ซ้ำกัน
      if (studentID.length != 10) {
        print("Error: Student ID must be exactly 10 digits.");
      } else if (!RegExp(r'^[0-9]+$').hasMatch(studentID)) {
        print("Error: Student ID must contain only digits.");
      } else if (studentIds.contains(studentID)) {
        print("Error: Student ID already exists.");
      } else {
        studentIds.add(studentID); // เพิ่ม ID ใน Set
        break;
      }
    }

    // รับชื่อนักศึกษา
    stdout.write("Enter student name: ");
    String studentName = stdin.readLineSync() ?? '';

    // เพิ่มข้อมูลนักศึกษาใน List พร้อมเตรียมที่เก็บเกรด
    studentList.add({
      'ID': studentID,
      'Name': studentName,
      'Grades': {} // Map สำหรับเก็บวิชาและเกรด
    });

    stdout.write("Do you want to add another student? (y/n): ");
    continueInput = stdin.readLineSync() ?? 'n';
  }

  // แสดงข้อมูลนักศึกษาที่ลงทะเบียนทั้งหมด
  print("\nRegistered Students:");
  for (var student in studentList) {
    print("ID: ${student['ID']}, Name: ${student['Name']}");
  }

  // แสดงจำนวนนักศึกษาที่ลงทะเบียนทั้งหมด
  print("\nTotal number of registered students: ${studentList.length}");

  // ขั้นตอนที่ 2: ลงข้อมูลเกรด
  inputGrades(studentList);

  // ขั้นตอนที่ 3: ค้นหาข้อมูลนักศึกษา
  searchStudentData(studentList);
}

// ฟังก์ชันสำหรับลงข้อมูลเกรด
void inputGrades(List<Map<String, dynamic>> studentList) {
  String continueAddingGrades = 'y';

  // วนลูปเพื่อให้สามารถเพิ่มเกรดสำหรับนักศึกษาหลายคนได้
  while (continueAddingGrades.toLowerCase() == 'y') {
    stdout.write("\nEnter student ID to input grades: ");
    String? studentID = stdin.readLineSync();

    // ค้นหานักศึกษาจากรหัสที่ใส่
    var student = studentList.firstWhere(
      (s) => s['ID'] == studentID,
      orElse: () => <String, dynamic>{}, // คืนค่า Map เปล่า
    );

    // ตรวจสอบว่านักศึกษาถูกพบในรายการหรือไม่
    if (student.isEmpty) {
      print("Student not found.");
    } else {
      print(
          "\nEntering grades for student ID: ${student['ID']} (${student['Name']})");

      String continueInput = 'y';
      while (continueInput.toLowerCase() == 'y') {
        // ขอให้ผู้ใช้กรอกรหัสวิชาที่ต้องการลงเกรด
        stdout.write("Enter subject code: ");
        String subjectCode = stdin.readLineSync() ?? '';

        // ขอให้ผู้ใช้กรอกเกรดสำหรับวิชานั้น
        stdout.write("Enter grade for $subjectCode (A,B+,B,C+,C,D+,D,F): ");
        String grade = stdin.readLineSync() ?? '';

        // แปลงเกรดที่ป้อนเป็นตัวพิมพ์ใหญ่
        grade = grade.toUpperCase();

        // ตรวจสอบว่าเกรดถูกบันทึกใน Map ของนักศึกษาหรือไม่
        if (student['Grades'] is Map) {
          student['Grades'][subjectCode] = grade;
        } else {
          student['Grades'] = {
            subjectCode: grade
          }; // กรณีไม่มีข้อมูลเกรดให้สร้างใหม่และบันทึกเกรดลงในวิชานั้น
        }

        // ถามผู้ใช้ว่าต้องการเพิ่มเกรดในวิชาอื่นอีกหรือไม่
        stdout.write(
            "Do you want to add another grade for this student? (y/n): ");
        continueInput = stdin.readLineSync() ?? 'n';
      }
    }

    // ถามผู้ใช้ว่าต้องการเพิ่มเกรดให้นักศึกษาคนอื่นหรือไม่
    stdout.write("\nDo you want to input grades for another student? (y/n): ");
    continueAddingGrades = stdin.readLineSync() ?? 'n';
  }

  print("Grade input complete. You can now search for student data.");
}

// ฟังก์ชันสำหรับค้นหาข้อมูลนักศึกษา
void searchStudentData(List<Map<String, dynamic>> studentList) {
  String continueSearching = 'y';

  while (continueSearching.toLowerCase() == 'y') {
    stdout.write("\nEnter student ID to search: ");
    String? searchId = stdin.readLineSync();

    // ค้นหานักศึกษาจากรหัสที่ใส่
    var student = studentList.firstWhere(
      (s) => s['ID'] == searchId,
      orElse: () => <String, dynamic>{}, // คืนค่า Map เปล่า
    );

    // แสดงข้อมูลนักศึกษาและเกรดทั้งหมดที่บันทึกไว้
    if (student.isNotEmpty) {
      print(
          '======================================================================================');
      print(
          '=                                  Student Information                               =');
      print(
          '======================================================================================');
      print(
          '=                                                                                    =');
      print(
          '=   Student ID:  ${student['ID']}                                      ');
      print(
          '=   Name:        ${student['Name']}                                              ');
      // ตรวจสอบว่าเกรดมีอยู่หรือไม่
      if (student['Grades'].isEmpty) {
        print(
            '=   Grades:      No grades available.                                                      ');
      } else {
        String grades = student['Grades'].entries.map((entry) {
          return '${entry.key}: ${entry.value.toUpperCase()}'; // แสดงเกรดเป็นตัวพิมพ์ใหญ่
        }).join(', ');
        print('=   Grades:      $grades                                  ');
      }
      print(
          '=                                                                                    =');
      print(
          '======================================================================================');
    } else {
      print("No data found for Student ID: $searchId");
    }

    // ถามผู้ใช้ว่าต้องการค้นหานักศึกษาอีกหรือไม่
    stdout.write("\nDo you want to search for another student? (y/n): ");
    continueSearching = stdin.readLineSync() ?? 'n';
  }
}
