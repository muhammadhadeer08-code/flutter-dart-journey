/*
"Simple Movie Ticket Pricing System"
Write a Dart program to calculate the total ticket price for a movie theater based on age and ticket type.
Requirements:Create variables for:Customer's name (String),Customer's age (int)
Whether they want a VIP seat or a normal seat (bool isVip = true or false)
Use Operat0rs and Control Flow (if-else) to calculate the final price using these rules:
Base ticket price is $10.
If the customer's age is under 12, they get a 50% discount on the base price.
If the customer's age is above 60, they get a 30% discount on the base price.
If they selected VIP (isVip = true), add an extra $5 to the final ticket price.
Print a clean summary showing the customer's name, age, seat type, and the final calculated ticket price.
*/
import "dart:io";

void main() {
  print("What is your name");
  String name = stdin.readLineSync()!;

  print("What is your age");
  int age = int.parse(stdin.readLineSync()!);

  print("What is your seat type for vip (Yes)and for normal (No)");
  String seattype = stdin.readLineSync()!;

  double price = 10.0;
  double finalprice = price;

  if (age < 12) {
    finalprice = finalprice * 0.5;
    print("Congratulation you get 50% age discount");
  } else if (age > 60) {
    finalprice = finalprice * 0.7;
    print("Congratulations you get 30% age discount");
  } else {
    print("You will pay for full ticket");
  }
  if (seattype == "yes") {
    finalprice = finalprice + 0.5;
    print("vip seat selected.");
  } else {
    print("Normal seat selected");
  }
  // Final Summary Output
  print("\n--- Ticket Summary ---");
  print("Name: $name");
  print("Age: $age");
  print("Final Ticket Price: \$$finalprice");
}
