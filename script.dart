import 'dart:io';

void main() {
  List<Gamblers> gamblers = [];
  for (int i = 0; i < 3; i++) {
    gamblers.add(welcome());
    print("$gamblers\n${gamblers[i].name}\n${gamblers[i].num}");
  }
}

class Gamblers {
  String? name;

  List<List> num = [];

  Gamblers(this.name);

  void changeName(String changed_name) {
    this.name = changed_name;
  }

  void addNewNum(String new_no, int val) {
    List new_pair = [new_no, val];
    num.add(new_pair);
  }
}

Gamblers welcome() {
  print("Enter name");
  String? gambler_name = stdin.readLineSync();
  Gamblers gambler = Gamblers(gambler_name);

  void add_new_num_to_gambler() {
    print("Enter no");
    String? gambler_num_str = stdin.readLineSync();

    print("Enter val");
    String? gambler_val_str = stdin.readLineSync();

    int gambler_val = int.parse(gambler_val_str!);

    gambler.addNewNum(gambler_num_str!, gambler_val);
  }

  add_new_num_to_gambler();
  return gambler;
}




  /* STRUCTURE of lucky_no...
  [
    [456, 40],
    [234, 10]
  ];            */



  //   