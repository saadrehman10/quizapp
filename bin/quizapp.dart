import 'package:quizapp/quizapp.dart';
import 'package:quizapp/filehandling.dart' as file;

void main(List<String> arguments) {
  Set<String> questionList =
      file.fileRead('C:/Users/saadr/Desktop/quizapp/assets/question.cvs').split(',').toSet();
  Set<String> ansList = 
      file.fileRead('C:/Users/saadr/Desktop/quizapp/assets/answers.cvs').split(',').toSet();

  Questionformat questions = Questionformat(questionList);
  questions.dispayQuestoins();
  print(questions.userAns);
}
