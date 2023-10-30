void main(List<String> args) {
  printHelloWorld();
  printName("Italo");
  var nuber = returnNUmber();
  print(nuber);
  sum(9, 10);
}

void printHelloWorld() {
  print("Hello wold!");
}

void printName(String name) {
  print("my name is : $name");
}

int returnNUmber() {
  return 100;
}

int sum(int number1, int number2) {
  return number1 + number2;
}
