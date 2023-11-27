import 'dart:io';

void main() {
  List<Gambler> gamblers = [];
  for (int i = 0; i < 3; i++) {
    gamblers.add(add_new_gambler());
    print("$gamblers\n${gamblers[i].name}\n${gamblers[i].num}");
  }
}

class Gambler {
  String? name;

  List<List> num = [];

  Gambler(this.name);

  void changeName(String changed_name) {
    this.name = changed_name;
  }

  void addNewNum(String new_no, int val) {
    List new_pair = [new_no, val];
    num.add(new_pair);
  }
}

// Gambler welcome() {}

void add_new_num_to_gambler(Gambler new_gambler, int times) {
  for (int i = 0; i <= times; i++) {
    print("Enter no");
    String? gambler_num = stdin.readLineSync();

    print("Enter val");
    int gambler_val = int.parse(stdin.readLineSync()!);

    new_gambler.addNewNum(gambler_num!, gambler_val);
  }
}

Gambler add_new_gambler() {
  print("Enter name");
  String? gambler_name = stdin.readLineSync();
  Gambler gambler = Gambler(gambler_name);

  print("How many numbers do you want to add?");
  int times = int.parse(stdin.readLineSync()!);

  add_new_num_to_gambler(gambler, times);

  return gambler;
}
