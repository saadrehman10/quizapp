import 'dart:io';
import 'package:path/path.dart' as path;

String fileHanding() {
  String filepath = path.normalize('../assets/question.cvs');
  File file = File(filepath);
  String content = file.readAsStringSync();
  return content;
}
