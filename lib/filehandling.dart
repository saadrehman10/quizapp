import 'dart:io';
import '../assets/question.cvs' as file;

String fileHanding() {
  File file = File('../assets/question.cvs');
  String content = file.readAsStringSync();
  return content;
}
