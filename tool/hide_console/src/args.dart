import 'dart:io';

import 'errors/args_error.dart';
import 'sub_system.dart';

class Args {
  final SubSystem subsystem;

  final String fileName;

  Args(List<String> args)
      : assert(checkArgsLen(args)),
        subsystem = getSubSystem(args[0]),
        fileName = findExeFile(args[1]);

  static bool checkArgsLen(List<String> args) {
    if (args.length != 2) {
      throw ArgsTwoArgumentError();
    }
    return true;
  }

  static SubSystem getSubSystem(String textName) {
    final normalizeName = normalizeSubSystemName(textName);
    switch (normalizeName) {
      case 'GUI':
        return SubSystem.GUI;

      case 'CONSOLE':
        return SubSystem.CONSOLE;
    }

    throw ArgsInvalidSubSystemError(textName);
  }

  static String normalizeSubSystemName(String textName) => textName
      .trim()
      .toUpperCase()
      .replaceAll(RegExp(r'(^\"|\"$)'), '');

  static String findExeFile(String argsFileName) {
    if (File(argsFileName).existsSync()) {
      return argsFileName;
    }

    final fullFilePath = getFullFilePath(argsFileName);

    if (File(fullFilePath).existsSync()) {
      return fullFilePath;
    }

    throw ArgsFileNotFoundError(argsFileName, fullFilePath);
  }

  static String getFullFilePath(String name) =>
      Platform.script
          .path
          .replaceFirst(RegExp('[^//]+\$'), name)
          .substring(1)
          .replaceAll('/', r'\');
}
