import 'dart:io';

class Input<T> {
  T input([String? text]) {
  switch (T) {
    case  int :
      try {
        print(text ?? 'Enter:');
        return int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not int.');
      }
    case String:
      try {
        print(text ?? 'Enter:');
        return stdin.readLineSync()!;
      } catch (e) {
        print('The value you entered is not String.');
      }
    case double:
      try {
        print(text ?? 'Enter:');
        return double.parse(stdin.readLineSync()!);
      } catch (e) {
        print('The value you entered is not double.');
      }
    default:
      print('please define data type')
      return null;
  }
 }
}



class Questionformat  extends Input{
  Set<String>? question;
  List<String> userAns = [];
  Questionformat(this.question);

  void dispayQuestoins() {
    for (String que in question!) {
      print(que);
      bool temp = true;
      while (temp) {
        var option = 'aAbBcCdD'.split('');
        var ans = super.input<int>('Select one option: ');
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
