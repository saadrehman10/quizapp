import 'dart:io';

dynamic input(String type, [String? text]) {
  switch (type) {
    case 'i' || 'I':
      try {
        print(text ?? 'Enter:');
        return int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not int.');
      }
    case 's' || 'S':
      try {
        print(text ?? 'Enter:');
        return stdin.readLineSync()!;
      } catch (e) {
        print('The value you entered is not String.');
      }
    case 'd' || 'D':
      try {
        print(text ?? 'Enter:');
        return double.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not double.');
      }
    default:
      print('please define data type');
  }
}

class Questionformat {
  List<String>? question;
  List<String> ans = [];
  Questionformat(this.question);

  void dispayQuestoins() {
    for (String que in question!) {
      print(que);
      ans.add(input('i' , 'Select any one option A , B, C, D'));
    }
  }
}
