List<Gambler> gambler_list = [];
int gambler_list_length = gambler_list.length;
int pass = 0;
List<String> just_test_delete = ["name1", "name2", "name3", "name4", "name5"];

void main() {
  for (int i = 0; i < 5; i++) {
    add_new_gambler_to_db(just_test_delete[i]);
  }
  duplicate_number(gambler_list[0], "231", 1000);
  print(gambler_list[0].numbers_and_prices);

  for (int i = 0; i < 5; i++) {
    print(gambler_list[i].numbers_and_prices);
  }

  find_lucky_no();
}

class Gambler {
  String name = "Unknown";
  List<List> numbers_and_prices = [
    ["234", 30],
    ["384", 50],
    ["345", 10]
  ];
}

void add_new_gambler_to_db(String name_of_gambler_for_delete) {
  Gambler new_gamler_in_angtd_fun = Gambler();
  //print("enter the name of gambler");
  new_gamler_in_angtd_fun.name = name_of_gambler_for_delete;
  pass = duplicate_name(new_gamler_in_angtd_fun.name);
  if (pass == -1) {
    gambler_list.add(new_gamler_in_angtd_fun);
  }
}

int duplicate_name(String name_for_testing) {
  gambler_list_length = gambler_list.length;
  if (gambler_list_length > 0) {
    for (int i = 0; i < gambler_list_length; i++) {
      if (name_for_testing == gambler_list[i].name) {
        return i;
      }
    }
  }
  return -1; //-1 if doesn't duplicate
}

void change_name() {
  String name_to_search = "name1";
  String new_name = "name_changed";
  pass = duplicate_name(name_to_search);
  if (pass > -1) {
    print("\n${gambler_list[pass].name} has changed into $new_name");
    gambler_list[pass].name = new_name;
  } else {
    print("name don't found");
  }
}

void duplicate_number(Gambler gambler_for_test, String no, int pri) {
  print("adding Numbers for ${gambler_for_test.name}:");
  pass = 0;
  gambler_list_length = gambler_for_test.numbers_and_prices.length;
  for (int i = 0; i < gambler_list_length; i++) {
    if ((gambler_for_test.numbers_and_prices[i][0]) == no) {
      gambler_for_test.numbers_and_prices[i][1] += pri;
      pass = -1;
      break;
    }
  }
  if (pass != -1) {
    add_numbers(gambler_for_test, no, pri);
  }
}

void add_numbers(Gambler gambler_for_test, String no, int pri) {
  gambler_for_test.numbers_and_prices.add([no, pri]);
}

void find_lucky_no() {
  String lucky_no = "231";
  gambler_list_length = gambler_list.length;
  for (int i = 0; i < gambler_list_length; i++) {
    int gambler_no_list = gambler_list[i].numbers_and_prices.length;
    for (int j = 0; j < gambler_no_list; j++) {
      if ((gambler_list[i].numbers_and_prices[j][0]) == lucky_no) {
        print(
            "${gambler_list[i].name} bingo with the no ${gambler_list[i].numbers_and_prices[j][0]} the amount he/she win is ${gambler_list[i].numbers_and_prices[j][1] * 650}");
        break;
      }
    }
  }
}
