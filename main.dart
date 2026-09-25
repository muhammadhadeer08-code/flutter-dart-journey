// Operator Challenge
/*
Imagine you have 45 chocolate candies, and you want to distribute them equally among 4 friends and take input from user.
Using Dart code, you need to find out these two things:
How many complete candies will each friend get? (Which operator should be used for this?)
How many candies will be left over after the distribution? (Which operator should be used for this?)*/

import "dart:io";
void main() {
  print("Total candies:");
  int a = int.parse(stdin.readLineSync()!);
  print("Total friends:");
  int b = int.parse(stdin.readLineSync()!);
  int totalcandies = a ~/ b;
  int leftover = a % b;
  print("Each friend gets: $totalcandies candies.");
  print("Left over candies: $leftover.");
}
