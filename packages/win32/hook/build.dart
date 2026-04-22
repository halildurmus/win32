import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:win32/src/hook_helpers/c_build.dart';
import 'package:win32/src/hook_helpers/download.dart';
import 'package:win32/src/hook_helpers/hashes.g.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    if (!input.config.buildCodeAssets) return;
    if (input.config.code.targetOS != .windows) return;

    addDynamicLibrariesAsCodeAssets(output);

    final localBuild = input.userDefines['local_build'] as bool? ?? false;
    if (localBuild) {
      await runBuild(input, output);
    } else {
      final CodeConfig(:targetOS, :targetArchitecture) = input.config.code;
      final outputDirectory = Directory.fromUri(input.outputDirectory);
      final file = await downloadAsset(
        targetOS,
        targetArchitecture,
        outputDirectory,
      );
      final fileHash = await hashAsset(file);
      final expectedHash =
          assetHashes[targetOS.dylibFileName(
            createTargetName(targetOS, targetArchitecture),
          )];
      if (fileHash != expectedHash) {
        throw Exception(
          'File $file was not downloaded correctly. '
          'Found hash $fileHash, expected $expectedHash.',
        );
      }
      output.assets.code.add(
        .new(
          package: 'win32',
          name: 'win32.dart',
          linkMode: DynamicLoadingBundled(),
          file: file.uri,
        ),
      );
    }
  });
}
