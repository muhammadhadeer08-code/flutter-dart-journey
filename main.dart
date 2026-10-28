/*
Phase 1 Revision Project: "Smart Electricity Bill Calculator"
Problem Statement
Create a Dart command-line application that calculates a household electricity bill based on the consumed units.
Requirements
1:When te program runs, take input from the user for their name (String) and total consumed units (int) using dart:io.
The bill calculation must follow these slab rates:First 100 units: Rs. 10 per unit.
From 101 to 300 units: Rs. 15 per unit (the first 100 units at 10, and the remaining units at 15).
Above 300 units: Rs. 20 per unit.
Fixed Meter Tax: If the total bill amount exceeds Rs. 2000, an extra 5% tax should be added to it. If it is Rs. 2000 or less,
 no tax should be applied.
Control Flow / Conditions: Implement all this logic using if-else or switch statements.
Output: Finally, print a clean and formatted bill showing the user's name, total units consumed, rate breakdown, tax (if any), 
and the Final Total Payable Amount.
*/
import "dart:io";

void main() {
  print("What is your name");
  String name = stdin.readLineSync()!;
  print("Total consumed units");
  int units = int.parse(stdin.readLineSync()!);
  double Billamount = 0.0;
  if (units <= 100) {
    Billamount = units * 10;
  } else if (units <= 300) {
    Billamount = (100 * 10) + ((units - 100) * 15);
  } else {
    Billamount = (100 * 10) + (200 * 15) + ((units - 300) * 20);
  }
  double tax = 0.0;
  if (Billamount > 2000) {
    tax = Billamount * 0.05;
  } else {
    print("No extra charges will applied");
  }
  double totalPayable = Billamount + tax;
  print("\n--- ELECTRICITY BILL ---");
  print("Customer Name: $name");
  print("Units Consumed: $units");
  print("Base Bill Amount: Rs. $Billamount");
  print("Tax Amount: Rs. $tax");
  print("Total Payable Amount: Rs. $totalPayable");
}
