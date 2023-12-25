List<Gambler> gambler_list = [];
bool pass = false;
int gambler_list_length = gambler_list.length;

List<String> just_test_delete = ["name1", "name2", "name3", "name4", "name5"];
void main() {
  for (int i = 0; i < 5; i++) {
    add_new_gambler_to_db(just_test_delete[i]);
  }
}

class Gambler {
  String name = "New Unknown Gambler Name";
}

void add_new_gambler_to_db(String name_of_gambler_for_delete) {
  Gambler new_gamler_in_angtd_fun = Gambler();
  //print("enter the name of gambler");
  new_gamler_in_angtd_fun.name = name_of_gambler_for_delete;
  if (duplicate_name(new_gamler_in_angtd_fun.name) == true) {
    gambler_list.add(new_gamler_in_angtd_fun);
  }
}

bool duplicate_name(String name_for_testing) {
  pass = false;
  gambler_list_length = gambler_list.length;
  if (gambler_list_length > 0) {
    for (int i = 0; i < gambler_list_length; i++) {
      if (name_for_testing == gambler_list[i].name) {
        return pass = false;
      }
    }
  } else {
    return true;
  }
  return true;
}

void change_the_name() {
  String name_to_search = "";
  String new_name = "name_changed";
  gambler_list_length = gambler_list.length;
  for (int i = 0; i < gambler_list_length; i++) {
    if (name_to_search == gambler_list[i].name) {
      gambler_list[i].name = new_name;
    }
  }
}
