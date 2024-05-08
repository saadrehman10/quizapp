import 'dart:io';

class Input {
  dynamic input<T>([String? text]) {
    try {
      print(text ?? 'Enter:');
      final String inputString = stdin.readLineSync()!;
      if (T == String) {
        return inputString as T;
      } else if (T == int) {
        return int.parse(inputString) as T;
      } else if (T == double) {
        return double.parse(inputString) as T;
      }
    } catch (e) {
      print('The value you entered is not of type $T.');
    }
  }
}

class Questionformat extends Input {
  Set<String>? question;
  List<String> userAns = [];
  Questionformat(this.question);

  void dispayQuestoins() {
    for (String que in question!) {
      print(que);
      bool temp = true;
      while (temp) {
        var option = 'aAbBcCdD'.split('');
        var ans = input<String>('Select one option: ');
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

class ScoreSys extends Questionformat {
  List<String> ans;
  int score = 0;
  ScoreSys(Set<String>? questiontext, this.ans) : super(questiontext!);

  int calculate() {
    for (int i = 0; i < super.userAns.length; i++) {
      if (super.userAns[i] == ans[i]) {
        score++;
      } else {}
    }
    return score;
  }
}
