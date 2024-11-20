// Creates a Windows shell shortcut (.lnk) using COM.

import 'dart:io';

import 'package:args/args.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void createShortcut({
  required String targetPath,
  required String shortcutPath,
  String? description,
}) {
  using((arena) {
    // Create IShellLink instance.
    final shellLink = arena.com<IShellLink>(ShellLink)
      // Set the shortcut target.
      ..setPath(arena.pcwstr(targetPath));

    // Optional metadata.
    if (description != null) {
      shellLink.setDescription(arena.pcwstr(description));
    }

    // Persist the shortcut to disk.
    arena
        .adopt(shellLink.queryInterface<IPersistFile>())
        .save(arena.pcwstr(shortcutPath), true);
  });
}

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption(
      'target',
      abbr: 't',
      mandatory: true,
      help: r'Absolute path to the target file (e.g., C:\Windows\notepad.exe).',
    )
    ..addOption(
      'output',
      abbr: 'o',
      mandatory: true,
      help:
          r'Absolute path to the .lnk file to create (e.g., C:\Shortcuts\Notepad.lnk).',
    )
    ..addOption(
      'description',
      abbr: 'd',
      help: 'Optional shortcut description.',
    );

  final ArgResults results;

  try {
    results = parser.parse(args);
  } on FormatException {
    print('Creates a Windows shortcut (.lnk) using COM.\n');
    print('Usage:\n');
    print(
      '  shortcut --target <path> --output <path> [--description <text>]\n',
    );
    print(parser.usage);
    return;
  }

  final targetPath = results.option('target')!;
  final shortcutPath = results.option('output')!;
  final description = results.option('description');

  if (!File(targetPath).existsSync()) {
    stderr.writeln('Target file does not exist: $targetPath');
    exit(1);
  }

  final hr = CoInitializeEx(COINIT_MULTITHREADED);
  if (hr.isError) throw WindowsException(hr);
  createShortcut(
    targetPath: targetPath,
    shortcutPath: shortcutPath,
    description: description,
  );
  print('Shortcut created: $shortcutPath');
}
