import 'dart:io';

bool pass = false;
void main() {
  List<Gamblers>;
}

class Gamblers {
  String name;

  List<List<int>> num = [];

  Gamblers(this.name);

  void changeName(String changed_name) {
    this.name = changed_name;
  }

  void addNewNum(int new_no, int val) {
    List<int> new_pair = [new_no, val];
    num.add(new_pair);
  }
}

void welcome() {
  try {
    String? gambler_name = stdin.readLineSync();
    print(gambler_name);
  } catch (e) {
    print(e);
  }
}




  /* STRUCTURE of lucky_no...
  [
    [456, 40],
    [234, 10]
  ];            */