import 'dart:io';

class Input {
   input<T>([String? text]) {
    try {
      print(text ?? 'Enter:');
      final inputString = stdin.readLineSync();
      if (inputString != null) {
        if (T == String) {
          return inputString as T;
        } else if (T == int) {
          return int.parse(inputString) as T;
        } else if (T == double) {
          return double.parse(inputString) as T;
        }
        // Add more type checks for other supported types if needed
      } else {
        print('No input provided.');
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

class ScoreSyS extends Questionformat {
  Set<String>? ans;
  ScoreSyS(Set<String>? questiontext, this.ans) : super(questiontext!);
}
