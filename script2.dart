List<Gambler> gambler_list = [];
int gambler_list_length = gambler_list.length;
int pass = 0;
List<String> just_test_delete = ["name1", "name2", "name3", "name4", "name5"];

void main() {
  for (int i = 0; i < 5; i++) {
    add_new_gambler_to_db(just_test_delete[i]);
  }
  print(gambler_list);
  print(gambler_list[0].name);
  // print(gambler_list[0].numbers_and_prices);
  print(gambler_list[1].name);
  print(gambler_list[2].name);
  print(gambler_list[3].name);
  print(gambler_list[4].name);
}

class Gambler {
  String name = "Unknown";
  // Map<String, int> numbers_and_prices = {
  //   "345": 34,
  // };
}

void add_new_gambler_to_db(String name_of_gambler_for_delete) {
  Gambler new_gamler_in_angtd_fun = Gambler();
  //print("enter the name of gambler");
  new_gamler_in_angtd_fun.name = name_of_gambler_for_delete;
  pass = duplicate_name(new_gamler_in_angtd_fun.name);
  if (pass == -1) {
    gambler_list.add(new_gamler_in_angtd_fun);
  }
  print("adding Numbers for ${new_gamler_in_angtd_fun.name}:");
  String no = "345";
  int pri = 30;
  Map<String, int> new_number_in_angtd_fun = {no: pri};
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
  String name_to_search = "name6";
  String new_name = "name_changed";
  pass = duplicate_name(name_to_search);
  if (pass > -1) {
    print("\n${gambler_list[pass].name} has changed into $new_name");
    gambler_list[pass].name = new_name;
  } else {
    print("name don't found");
  }
}
