import 'dart:io';

IOService io = IOService();

class IOService {
  String readText() => stdin.readLineSync() ?? '';

  void outputText(String str) => stdout.write(str);
}
