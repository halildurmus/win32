import 'package:args/args.dart';

class Args {
  final String bundlePath;
  final String dllPath;
  final String help;

  Args(this.bundlePath, this.dllPath, this.help);

  factory Args.parse(List<String> args) {
    var parser = ArgParser();
    parser.addOption(
      'bundle',
      help: 'path to bundle folder.\n'
          'If not specified, then search occurs in the current directory',
      defaultsTo: '',
    );

    parser.addOption(
      'dll',
      help: '"flutter_windows.dll" file path.\n'
          'If not specified, then search occurs in the current  or flutter sdk'
          ' directory',
      defaultsTo: '',
    );
    final option = parser.parse(args);

    return Args(
      option['bundle'].toString(),
      option['dll'].toString(),
      parser.usage,
    );
  }
}
