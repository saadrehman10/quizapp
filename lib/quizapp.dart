import 'dart:io';

dynamic input(String type, String text) {
  switch (type) {
    case 'i' || 'I':
      try {
        return int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not int.');
      }
    case 's' || 'S':
      try {
        return int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not String.');
      }
 
  }
}

class Questionformat {
  List<String>? question;
  List<String>? ans;
  Questionformat(this.question);

  void dispayQuestoins() {
    for (String que in question!) {
      print(que);
    }
  }
}
