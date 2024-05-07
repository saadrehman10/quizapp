import 'dart:io';

String fileHanding() {
  File file = File('../assets/question.cvs');
  String content = file.readAsStringSync();
  return content;
}
