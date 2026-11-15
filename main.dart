/*Project 1: Smart Library Management & Fine Tracker
Build a terminal-based system for a university library to manage books,
 track borrowed items, and handle overdue fines.
Core Requirements:
1:Initial Stock: Start with a pre-defined list of available books and a separate
 list of borrowed books (or track them using list management).
Continuous Menu (while loop): Run a continuous terminal menu with the following options:
View Catalog: Display all available books with their index positions.
Borrow Book: Allow a user to check out a book. If the book exists in the library
, remove it from the available list and track it. If it doesn't exist, show an error message.
Return Book: Allow a user to return a book, adding it back to the available catalog.
Search Book: Check if a specific book title is currently in the library or 
checked out, and return its status/index.
Calculate Fine: A mini-feature where the user enters how many days late
 a book return is, and the terminal calculates a fine based on a fixed
  rate per day using conditional brackets (if-else).
Library Status: Report total available books, total checked-out books,'
 and whether the library catalog is empty.
Exit: Cleanly terminate the system.
*/
import "dart:io";

void main() {
  List<String> books = [
    "Atomic Habbit",
    "How to read people mind",
    "Holy book",
  ];
  List<String> forBorrow =
      []; // Yeh list initially khali honi chahiye jo books borrow ki jayein

  bool isRunning = true;

  while (isRunning) {
    print("\n------ SMART LIBRARY SYSTEM ------");
    print("1: view catalog");
    print("2: Borrow a book");
    print("3: Return Book");
    print("4: Search book name");
    print("5: Calculate fine");
    print("6: Library status");
    print("7: Exit");
    print("----------------------------------");
    print("Please write the option number or option text:");

    String save = stdin.readLineSync()!;

    if (save == "1" || save == "view catalog") {
      print("\nAvailable books in library: $books");
      print("Currently borrowed books: $forBorrow");
    } else if (save == "2" ||
        save == "Type the name which you want to borrow") {
      print("Write the book name you want to borrow:");
      String bookName = stdin.readLineSync()!;

      if (books.contains(bookName)) {
        books.remove(bookName);
        forBorrow.add(bookName);
        print("Success! '$bookName' has been issued to you.");
      } else {
        print("Sorry, '$bookName' is not available in the library.");
      }
    } else if (save == "3" || save == "Return Book") {
      print("Write the book name you want to return:");
      String returnBook = stdin.readLineSync()!;

      if (forBorrow.contains(returnBook)) {
        forBorrow.remove(returnBook);
        books.add(returnBook);
        print("Success! '$returnBook' has been returned back to the library.");
      } else {
        print("Error: This book was not marked as borrowed from our system.");
      }
    } else if (save == "4" || save == "Search book name") {
      print("Write the book name to search:");
      String name = stdin.readLineSync()!;

      if (books.contains(name)) {
        print(
          "Found! '$name' is available in the library catalog at index: ${books.indexOf(name)}",
        );
      } else if (forBorrow.contains(name)) {
        print("Found, but it is currently borrowed out by someone.");
      } else {
        print("Sorry, we don't have this book in our system.");
      }
    } else if (save == "5" || save == "Calculatefine") {
      print("Write how many days you are late (10rs per day fine):");
      String number = stdin.readLineSync()!;
      int days = int.parse(number); // String ko int mein convert kiya
      print("Total Fine: ${days * 10} rupees");
    } else if (save == "6" || save == "Library status") {
      print("\n--- Library Status ---");
      print("Total Available Books: ${books.length}");
      print("Total Borrowed Books: ${forBorrow.length}");
      if (books.isEmpty) {
        print("Catalog Status: Library catalog is completely EMPTY!");
      } else {
        print("Catalog Status: Books are available.");
      }
    } else if (save == "7" || save == "Exit") {
      print("You are out of system. Goodbye!");
      isRunning = false;
    } else {
      print("Invalid choice! Please choose between 1 to 7.");
    }
  }
}
