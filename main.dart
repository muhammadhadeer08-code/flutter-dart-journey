/*
Create a console application in Dart that handles incoming event registrations
 manages attendee eligibility and attendance records, tracks repeated entries 
 and outputs a final summary report. Paste your code when ready.
*/
import "dart:io";

void main() {
  print("------console application for incoming event------");
  print("press:-----1---for registration ");
  print("press:-----2---for check eligibility and put your age");
  print("press:-----3---for check attendance records");
  print("press:-----4---for exit");
  Set<int> number = {};
  Set<int> attendance = {};
  bool isRunning = true;
  print(isRunning);
  while (isRunning) {
    print("please write your selection");
    int person = int.parse(stdin.readLineSync()!);
    if (person == 1) {
      print("Write your CNIC number for registration");
      int CNIC = int.parse(stdin.readLineSync()!);
      number.add(CNIC);
      print(number);
    } else if (person == 2) {
      print("you must be 18 years old");
      print("Please put your age");
      int age = int.parse(stdin.readLineSync()!);
      if (age >= 18) {
        print(
          "You are eligible for registration and please select 1 for registration",
        );
      } else {
        print("Sorry🙇 you must be 18 years old");
      }
    } else if (person == 3) {
      print("Please write your cnic");
      int record = int.parse(stdin.readLineSync()!);
      if (number.contains(record)) {
        print("Your CNIC number is registerd");
      } else if (attendance.add(record)) {
        print(
          "please registerd yourself first then show usand you are not registered nomini",
        );
      } else {
        print("Print the right number");
      }
    } else if (person == 4) {
      print("you are out of system");
      isRunning = false;
    } else {
      print("Please write the number ");
    }
  }
  print("-----summary report----");
  print("These are registered Person CNIC:$number");
  print("These are the people who come to the event:$attendance");
}
