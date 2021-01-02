import 'dart:io';

import 'src/args.dart';
import 'src/errors/app_error.dart';
import 'src/win_pe_patcher.dart';

void main(List<String> listArgs) {
  try {
    final args = Args(listArgs);
    WinPePatcher(args.fileName)
        .change(args.subsystem);
    print('File patched ${args.subsystem}: ${args.fileName}');
    // ignore: avoid_catching_errors
  } on AppError catch (e) {
    stderr.writeln(e);
    return;
  }
}
