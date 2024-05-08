import 'package:quizapp/quizapp.dart';
import 'package:quizapp/filehandling.dart' as file;

void main(List<String> arguments) {
  Set<String> questionList = file
      .fileRead('C:/Users/saadr/Desktop/quizapp/assets/question.cvs')
      .split(',')
      .toSet();
  List<String> ansList = file
      .fileRead('C:/Users/saadr/Desktop/quizapp/assets/answers.cvs')
      .split(',');

  ScoreSys questions = ScoreSys(questionList, ansList);
  questions.dispayQuestoins();
  print('Your current score is : ${questions.calculate()}');
}
