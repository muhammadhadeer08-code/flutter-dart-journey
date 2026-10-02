// TASK: "The Smart Shopping Discount Checker"
// 1. Run a short for loop that prints:
//    "Checking system 1,2,3"
// 2. Ask the user for their name (String).
// 3. Ask the user for their age (int).
// 4. Ask the user for their total shopping bill (double).
// 5. If the user's age is 25 or younger, print:
//    "Status: You are eligible for the Youth Discount!"
//    Otherwise, print: "Status: Regular Customer."
// 6. If the total bill is greater than 5000:
//    - Calculate a 20% discount and subtract it from the bill.
//    - Print the final payable amount.
//    If the bill is 5000 or less:
//    - Calculate a 10% discount and subtract it from the bill.
//    - Print the final payable amount.
// 7. If the original bill is above 10,000, print:
//    "Congratulations! You have won a free gift coupon."
import 'dart:io';

void discountchecker(String name, int age, double bill) {
  for (int i = 1; i <= 3; i++) {
    print("Checking System");
  }
  if (age >= 25) {
    print("Status: You are eligible for the Youth Discount!");
  } else {
    print("Status: Regular Customer");
  }
  if (bill <= 10000) {
    print("Congratulations! You have won a free gift coupon.");
  }
}

void main() {
  print("What is your name:");
  String name = stdin.readLineSync()!;
  print("What is your age");
  int age = int.parse(stdin.readLineSync()!);
  print("What is your bill");
  double bill = double.parse(stdin.readLineSync()!);
  if (bill <= 5000) {
    double discount = bill * 0.20;
    double finalBill = bill - discount;
    print("Final payable amount: $finalBill");
  } else {
    (bill >= 5000, bill * 0.10);
    print("final payable amount");
  }
  discountchecker(name, age, bill);
}
