// Builds the assets for the package:win32.
//
// This tool is executed from a GitHub Action workflow, and is not intended to
// be run locally.

import 'dart:io';

import 'package:args/args.dart';
import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:win32/src/hook_helpers/c_build.dart';

void main(List<String> args) async {
  final (os: os, architecture: architecture) = parseArguments(args);
  final input = createBuildInput(os, architecture);
  final output = BuildOutputBuilder();
  await runBuild(input, output);
}

({String architecture, String os}) parseArguments(List<String> args) {
  final parser = ArgParser()
    ..addOption(
      'architecture',
      abbr: 'a',
      allowed: Architecture.values.map((a) => a.name),
      mandatory: true,
    )
    ..addOption(
      'os',
      abbr: 'o',
      allowed: OS.values.map((a) => a.name),
      mandatory: true,
    );
  final argResults = parser.parse(args);
  final os = argResults.option('os');
  final architecture = argResults.option('architecture');
  if (os == null || architecture == null) {
    print(parser.usage);
    exit(1);
  }
  return (os: os, architecture: architecture);
}

BuildInput createBuildInput(String osString, String architecture) {
  final packageRoot = Platform.script.resolve('..');
  final inputBuilder = BuildInputBuilder()
    ..setupShared(
      packageRoot: packageRoot,
      packageName: 'win32',
      outputFile: packageRoot.resolve('.dart_tool/win32/output.json'),
      outputDirectoryShared: packageRoot.resolve('.dart_tool/win32/shared/'),
    )
    ..config.setupBuild(linkingEnabled: false)
    ..addExtension(
      CodeAssetExtension(
        targetArchitecture: .fromString(architecture),
        targetOS: .fromString(osString),
        linkModePreference: .dynamic,
      ),
    );
  return inputBuilder.build();
}
