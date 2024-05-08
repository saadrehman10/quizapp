import 'dart:io' as io;
Uri filePath = io.Platform.script.resolve('.');

String fileHanding() {
  io.File file = io.File('../assets/question.cvs');
  String content = file.readAsStringSync();
  return content;
}
