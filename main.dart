/*
Project Title: Smart Inventory & Sales Terminal
Project Overview:Build a terminal-based program in Dart that simulates a small warehouse or
 retail inventory system. The system must run continuously using loopstaking
  user choices and performing operations on a dynamic collection of stock  
  items until the user explicitly decides to exit.
System Requirements & Features
Initial Stock Initialization:1.Start with a non-empty list of
 items (containing at least 5 products).
 2.Continuous Terminal Menu (Control Flow & Loops)
 :Keep the application running in a loop until an exit condition is triggered.
 3.Provide options for the user to choose actions:
 4.View Inventory: Display all current items along with their index positions.
 5.Add Item: Allow adding an item to the end of the inventory or inserting an
 item at a specific index position
 .6.Remove Item: Remove an item either by its exact name or by its index position
 .7.Search Item: Check whether a specific item exists in the stock and return its 
 index position if found.8.Reorganize Inventory: 
 Sort the items alphabetically and reverse the order of the 
collection.9.Check Stock Status: Verify and report if the inventory list is
 completelyempty or actively stocked.Exit: Cleanly terminate the system.
*/
import "dart:io";

void main() {
  List<String> products = ["cables", "Keys", "bins", "bottles", "Sticks"];
  bool isRunning = true;
  print("------Choose the options to move further------");
  print("1.view inventory");
  print("2.Add items");
  print("3.Remove items");
  print("4.Search items");
  print("5.Reorganize items");
  print("6.Stock status");
  print("7.Exit");
  print("-----Chosse the options between them-----");
  while (isRunning) {
    String person = stdin.readLineSync()!;
    if (person == "1" || person == "view inventory") {
      print(products);
    } else if (person == "2" || person == "Add items") {
      print("Type the item name");
      String newItem = stdin.readLineSync()!;
      products.add(newItem);
      print(
        "New item list by adding $newItem and now totalproducts are $products",
      );
    } else if (person == "3" || person == "Remove items") {
      print("-----Type the item name which you want to remove from list----");
      String product = stdin.readLineSync()!;
      products.remove(product);
    } else if (person == "4" || person == "Search items") {
      print("----Type the item name which you want to search----");
      String available = stdin.readLineSync()!;
      if (products.contains(available)) {
        int index = products.indexOf(available);
        print("Found! '$available' is available at index position: $index");
      } else {
        print("Sorry, '$available' is not available in the inventory.");
      }
    } else if (person == "5" || person == "Reorganize items") {
      print("Your items are organized");
      products.sort();
    } else if (person == "6" || person == "Stock status") {
      if (products.isEmpty) {
        print("Stock Status: Completely EMPTY!");
      } else {
        print("Stock Status: Active stock available. Total items: ${products}");
      }
    } else if (person == "7" || person == "Exit") {
      print("Thank you");
      isRunning = false;
    }
  }
}
