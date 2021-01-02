import 'app_error.dart';

class WinPePatcherVerifyError extends AppError {
  final String fileName;

  WinPePatcherVerifyError(this.fileName);
  @override
  String get message => '''
        Verify error.
        File "$fileName" is not executable file.
      ''';
}
