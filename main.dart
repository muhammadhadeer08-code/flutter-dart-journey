/*
Console Challenge: Unique Event Guest & VIP Matcher
Build a terminal-based system to manage guest registrations for a university seminar using Sets.
Core Requirements:
Initial Registration Set: Start with a pre-defined Set of registered guest email addresses.
Prevent Duplicates: Allow a user to enter a new email to register.
 If the email already exists in the Set, the system must detect it 
 (using Set behavior or methods) and show an error message preventing duplicate registration.
VIP List & Common Guests: Create a second Set containing VIP guest emails.
 Implement a feature that uses a Mathematical Set Operation 
 (such as intersection) to check and display which registered guests are also part of the VIP list.
Continuous Menu: Wrap the system in a while loop with options to register
 a guest, view all unique guests, check VIP matches, and exit.
 */
import "dart:io";

void main() {
  print("-------Unique Event Guest & VIP Matcher------");
  bool isRunning = true;
  Set<String> vipGuest = {
    "muhammadhadeer08@gmail.com",
    "ali@gmail.com",
    "ahmad123@gmail.com",
  };
  Set<String> commonGuest = {};
  while (isRunning) {
    print("Write your email");
    String userid = stdin.readLineSync()!;
    print("processing your email please wait: $userid");
    if (vipGuest.contains(userid)) {
      print("You are our VIP guest");
    } else if (commonGuest.add(userid)) {
      print("You are registered");
    } else {
      print("Please put valid input");
    }
    isRunning = false;
  }
}
