import '../sub_system.dart';
import 'app_error.dart';

class ArgsInvalidSubSystemError extends AppError {
  final String invalidArgumentName;

  @override
  String get message => '''
        First argument "$invalidArgumentName" invalid.
        Available options: $availableOptions
      ''';

  ArgsInvalidSubSystemError(this.invalidArgumentName);

  static String get availableOptions => SubSystem.values
      .map((name) => '"${getNameOnly(name)}"').join(', ');

  static String getNameOnly(SubSystem enumName) =>
      enumName.toString().replaceFirst(RegExp(r'^.+\.'), '');
}

class ArgsTwoArgumentError extends AppError {
  @override
  String get message => r'''
        Invalid arguments. 
        Enter two arguments. 
        Examples:
        switch_subsystem "GUI" ..\path\your_app.exe
        switch_subsystem "CONSOLE" ..\path\your_app.exe
      ''';

  ArgsTwoArgumentError();
}

class ArgsFileNotFoundError extends AppError {
  final String fileName;
  final String fullFilePathName;

  @override
  String get message => '''
        File not found
          "$fileName"
          "$fullFilePathName"
      ''';

  ArgsFileNotFoundError(this.fileName, this.fullFilePathName);
}
