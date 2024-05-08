import 'dart:io';

String fileRead(String path) {
  File file = File(path);
  String content = file.readAsStringSync();
  return content;
}
