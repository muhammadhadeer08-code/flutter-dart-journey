//Write a program that takes an integer score from the user.
//Use an if-else statement to print "Pass" if the score is 50 or greater
//and "Fail" if it is less than 50. Provide the code when ready.
/*
import "dart:io";

void main() {
  print("put any number:");
  int a = int.parse(stdin.readLineSync()!);
  if (a >= 50) {
    print("pass");
  } else {
    print("fail");
  }
}

//Write a program that takes an integer score from the user,
// and using an if-else if-else statement, check:
//If the score is 80 or greater, print "Grade A".
//If the score is 50 or greater (but less than 80), print "Grade B".
//If the score is less than 50, print "Fail".
import "dart:io";

void main() {
  print("Put the Score:");
  int Score = int.parse(stdin.readLineSync()!);
  if (Score >= 80) {
    print("Grade=A");
  } else if (Score >= 50 && Score <= 80) {
    print("Grade=B");
  } else {
    print("fail");
  }
}
*/
/*Challenge Question:

Write a Dart program that takes a day of the week as a String input from the user.
 Using a switch-case statement:
If the input is "Monday", "Tuesday", "Wednesday", "Thursday", or "Friday", print "This is a Working Day."
If the input is "Saturday" or "Sunday", print "This is the Weekend!"
If the input matches none of these valid days, use a default case to print "Invalid input! Please enter a valid day name."
*/
import "dart:io";

void main() {
  print("Enter the day:");
  String weekday = stdin.readLineSync()!;
  switch (weekday) {
    case "Monday":
      print("This is a working day");
      break;
    case "Tuesday":
      print("This is a working day");
      break;
    case "Wednesday":
      print("This a working day");
      break;
    case "Thursday":
      print("This is a working day");
      break;
    case "Friday":
      print("This a working day");
      break;
    case "saturday":
      print("This is a weekend day");
      break;
    case "Sunday":
      print("This is a weekend day");
      break;
    default:
      print("Invalid input! Please enter a valid");
  }
}
