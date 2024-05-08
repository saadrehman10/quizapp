import 'package:quizapp/quizapp.dart';
import '../lib/filehandling.dart' as file;


void main(List<String> arguments) {
  Set<String> questionList = file.fileHanding().split(',').toSet();
  Questionformat questions = Questionformat(questionList);
  questions.dispayQuestoins();
  print(Questionformat.userAns);
}
