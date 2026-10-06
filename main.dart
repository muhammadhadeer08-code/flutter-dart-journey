//Create an empty list of strings named inventory.
//Add a single item "Milk" to this list using the correct method.
//Print the list to check if it worked.
void main() {
  List<String> inventory = [];
  inventory.add("Milk");
  inventory.addAll(["Eggs", "Bread", "Butter"]);
  print("items present $inventory ");
  inventory.length;
  print(inventory.length);
  print(inventory[0]);
  inventory.remove("Bread");
  print(inventory);
  print(inventory.contains("Bread"));
  print(inventory);
  inventory.clear();
  print(inventory);
  print(inventory.isEmpty);
  List<int> numbers = [5, 4, 3, 2, 9, 1];
  numbers.sort();
  print(numbers);
  print(numbers.indexOf(4));
  numbers.insert(0, 100);
  print(numbers);
  print(numbers.reversed.toList());
  for (var number in numbers) {
    print("Number is: $number");
  }
  int totalSum = 0;
  for (var number in numbers) {
    totalSum = totalSum + number;
  }
  print("Total Sum is: $totalSum");
  for (var number in numbers) {
    if (number % 2 == 0) {
      print("Even number is: $number");
    }
  }
  List<int> evenNumbers = [];
  for (var number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }
  print("Nayi even numbers ki list: $evenNumbers");
  var evenList = numbers.where((number) => number % 2 == 0).toList();
  print("Where method se even list: $evenList");
  var multipliedList = numbers.map((number) => number * 2).toList();
  print("Har number ko 2 se multiply karne ke baad: $multipliedList");
}
