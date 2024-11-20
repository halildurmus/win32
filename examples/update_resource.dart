// Updates a Windows executable with an embedded application manifest.
//
// This tool embeds an RT_MANIFEST resource directly into an existing
// executable. This is useful for enabling features such as:
//   - UAC configuration
//   - comctl32.dll v6 (TaskDialog, visual styles)
//   - OS compatibility declarations
//
// Usage:
//   dart run update_resource.dart --exe app.exe --manifest app.exe.manifest
//
// Note:
// - The executable must not be running.
// - Administrator privileges may be required depending on location.

import 'dart:io';

import 'package:args/args.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void _printUsage(ArgParser parser, {String? error}) {
  if (error != null) {
    stderr.writeln('Error: $error\n');
  }
  print('Embeds a Windows application manifest into an executable.\n');
  print('Usage: update_manifest [options]\n');
  print(parser.usage);
}

void main(List<String> args) {
  final parser = ArgParser(usageLineLength: 80)
    ..addOption(
      'exe',
      abbr: 'e',
      help: 'Path to the executable to update.',
      mandatory: true,
    )
    ..addOption(
      'manifest',
      abbr: 'm',
      help: 'Path to the manifest file to embed.',
      mandatory: true,
    );

  final ArgResults results;

  try {
    results = parser.parse(args);
  } on FormatException catch (e) {
    _printUsage(parser, error: e.message);
    exit(64); // EX_USAGE
  }

  final exePath = results.option('exe')!;
  final manifestPath = results.option('manifest')!;

  final exeFile = File(exePath);
  if (!exeFile.existsSync()) {
    stderr.writeln('Executable not found: $exePath');
    exit(66); // EX_NOINPUT
  }

  final manifestFile = File(manifestPath);
  if (!manifestFile.existsSync()) {
    stderr.writeln('Manifest not found: $manifestPath');
    exit(66);
  }

  final manifestText = manifestFile.readAsStringSync();

  using((arena) {
    final exeName = arena.pcwstr(exeFile.absolute.path);
    final manifestData = arena.pcwstr(manifestText);

    final Win32Result(value: hUpdate, :error) = BeginUpdateResource(
      exeName,
      false,
    );
    if (hUpdate.isNull) throw WindowsException(error.toHRESULT());

    final updateResult = UpdateResource(
      hUpdate,
      RT_MANIFEST,
      PCWSTR(MAKEINTRESOURCE(1)),
      0,
      manifestData,
      manifestText.length * 2,
    );
    if (!updateResult.value) {
      EndUpdateResource(hUpdate, true);
      throw WindowsException(updateResult.error.toHRESULT());
    }

    final commitResult = EndUpdateResource(hUpdate, false);
    if (!commitResult.value) {
      throw WindowsException(commitResult.error.toHRESULT());
    }

    print('Manifest successfully embedded into:');
    print('  ${exeFile.absolute.path}');
  });
}
