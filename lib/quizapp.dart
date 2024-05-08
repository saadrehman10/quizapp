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
  Set<String>? question;
  List<String> userAns = [];
  Questionformat(this.question);

  void dispayQuestoins() {
    for (String que in question!) {
      print(que);
      bool temp = true;
      while (temp) {
        var option = 'aAbBcCdD'.split('');
        var ans = input('s', 'Select one option: ');
        if (ans.length == 1 && option.contains(ans)) {
          userAns.add(ans);
          temp = false;
        } else {
          temp = true;
        }
      }
    }
  }
}

class ScoreSyS extends Questionformat {
  Set<String>? ans;
  ScoreSyS(Set<String>? questiontext, this.ans) : super(questiontext!);
}
