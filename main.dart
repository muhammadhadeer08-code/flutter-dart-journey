/*
Make a list whose 5 integers are[2,4,6,8,10]and put the while loop on it
and also multiply it wit 2 the answer after multiplication will be (4,8,12,16,20)
  
void main() {
  List<int> numbers = [2, 4, 6, 8, 10];
  int i = 0;
  while (i < numbers.length){
print(numbers[i] * 2);
    i++;
  }
}
*/
/*Your Final Loop Test Task:
Create a list containing 4 string names (for example: ["Ali", "Sara", "Bilal", "Ayesha"]).
Use a While Loop to iterate through this list.
Inside the loop, instead of just printing the name by itself, 
print "Hello" combined with each name (so the output looks like:
 Hello Ali, Hello Sara, Hello Bilal, Hello Ayesha).
void main() {
  List<String> names = ["Ali", "Sara", "Bilal", "Ayesha"];
  int i = 0;
  while (i < names.length) {
    print("Hello${names[i]}");
    i++;
  }
}
*/
/*
Create a list of 4 cities: List<String> cities = ["Lahore", "Karachi", "Islamabad", "Multan"];
Use .indexOf() to find and print the position of "Islamabad".
Use .removeAt() to remove the city at index 0.
Use .clear() to wipe the list clean, and then use .isEmpty to print a message 
confirming if the list is empty now.
*/
/*
void main() {
  List<String> cities = ["Lahore", "Karachi", "Islamabad", "Multan"];
  int position = cities.indexOf("Islamabad");
  print(position);
}
*/
/*
void main() {
  List<String> cities = ["Lahore", "Karachi", "Islamabad", "Multan"];
  print(cities.removeAt(0));
  cities.clear();
  print(cities.isEmpty);
}
*/
/*
Write a small program that does this:
Create a list of 3 numbers: [10, 20, 30].
Use .reversed.toList() to flip them.
Print the new reversed list.
*/
void main() {
  List<int> numbers = [10, 20, 30];
  List<int> reversednumbers = numbers.reversed.toList();
  print(reversednumbers);
}
