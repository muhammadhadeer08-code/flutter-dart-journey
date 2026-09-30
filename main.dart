/*
  --- TASK 1: Smart Calculator Function ---
Goal: Create a function that takes three parameters: two numbers (int a, int b) 
and an operator (String op, e.g., "+", "-", "*", "/", "%").
Requirement: Use conditions (if-else or switch) inside the function to perform 
the calculation based on the operator and return the final result. Return an 
error message for invalid operators. Test it by passing different values from main().

import "dart:io";

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

void main() {
  print("Enter the first number");
  double numb1 = double.parse(stdin.readLineSync()!);
  print("Enter the second number");
  double numb2 = double.parse(stdin.readLineSync()!);
  print("choose the opreator");
  String? opreator = stdin.readLineSync()!;
  double result = 0;
  if (opreator == "+") {
    result = add(numb1, numb2);
  } else if (opreator == "-") {
    result = subtract(numb1, numb2);
  } else if (opreator == "*") {
    result = multiply(numb1, numb2);
  } else {
    print("Ghalat operator select kiya gaya hai!");
    return;
  }
  print("Jawab (Result): $result");
}
*/
/* TASK 2: The Skip & Stop Loop Challenge ---
Goal: Create a function that takes an integer parameter (int limit).
Requirement: Run a for loop inside this function from 1 up to 'limit' with these two rules:
  If the number is divisible by 3 or 5 (% 3 == 0 || % 5 == 0), skip it using 'continue'.
  2. If the loop reaches the number 73, stop the loop entirely using 'break'.
*/
import 'dart:io';

void skipandstop(int limit) {
  for (int i = 1; i <= limit; i++) {
    if (i % 3 == 0) {
      continue;
    }
    if (i % 5 == 0) {
      break;
    }
    print("current number $i");
  }
}

void main() {
  print("Enter the number");
  int userLimit = int.parse(stdin.readLineSync()!);
  skipandstop(userLimit);
}
