import 'package:quizapp/quizapp.dart';

void main(List<String> arguments) {
  Set<String> questionList = {
    'Ubit full form \na.Umer basha\nb.Umair bsha\nc.information tec'
  };
  Questionformat questions = Questionformat(questionList);
  questions.dispayQuestoins();
  print(questions.userAns);
}
