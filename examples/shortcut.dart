// Demonstrates using the COM IShellLink interface to create a shell shortcut.

// ignore_for_file: non_constant_identifier_names

import 'package:args/args.dart';
import 'package:win32/win32.dart';

void createShortcut(String path, String pathLink, String? description) {
  final pszFile = w(path);
  final shellLink = createInstance<IShellLink>(ShellLink)..setPath(pszFile.ptr);
  if (description != null) {
    final pszName = w(description);
    shellLink.setDescription(pszName.ptr);
  }
  final pszFileName = w(pathLink);
  shellLink.cast<IPersistFile>().save(pszFileName.ptr, true);
}

void main(List<String> args) {
  final parser = ArgParser(usageLineLength: 80)
    ..addOption(
      'path',
      abbr: 'p',
      mandatory: true,
      help: r'Absolute path for which to create a shortcut (e.g. c:\test.txt).',
    )
    ..addOption(
      'shortcut',
      abbr: 's',
      mandatory: true,
      help: 'The name of the shortcut (e.g. shortcut.lnk).',
    )
    ..addOption(
      'description',
      abbr: 'd',
      help: 'Optional description for the shortcut.',
    );

  try {
    final results = parser.parse(args);
    CoInitializeEx(COINIT_MULTITHREADED);
    createShortcut(
      results['path'] as String,
      results['shortcut'] as String,
      results['description'] as String?,
    );
  } on FormatException {
    print('Creates a Windows shortcut to a given file.\n');
    print('Usage: shortcut [arguments]\n');
    print(parser.usage);
  }
}
