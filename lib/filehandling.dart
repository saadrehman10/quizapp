import 'dart:io';

String fileHanding() {
  File file = File('C:/Users/saadr/Desktop/quizapp/assets/question.cvs');
  String content = file.readAsStringSync();
  return content;
}
