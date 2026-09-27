//LOOPS
/*
void main() {
  for (int i = 0; i <= 3; i++) {
    print("countdown start:$i");
  }
}

void main() {
  int i = 3;
  while (i >= 0) {
    print("countdown:=$i");
    i--;
  }
}

void main() {
  int i = 5;
  do {
    print("run from 5 to 10:$i");
    i++;
  } while (i <= 10);
}
*/
//The Challenge:
//Write a Dart program using a loop that counts down from 20 to 1.
//For every number, your program must check and print whether the number is Even or Odd.
//However, there is a strict rule: if the number is a multiple of 4, your program
//must completely skip it and move to the next number without printing anything for it.
//Write the code, run it, and see if you can get the exact logic right!
void main() {
  for (int i = 20; i >= 1; i--) {
    if (i % 4 == 0) {
      continue;
    }
    if (i % 2 == 0) {
      print("The number $i is even");
    } else {
      print("The number $i is odd");
    }
  }
}
