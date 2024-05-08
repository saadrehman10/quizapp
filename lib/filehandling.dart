import 'dart:io';

String fileHanding(String path) {
  File file = File(path);
  String content = file.readAsStringSync();
  return content;
}
