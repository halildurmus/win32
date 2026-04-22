import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:crypto/crypto.dart';

import 'c_build.dart';
import 'version.dart';

/// Computes the MD5 hash of the given [assetFile].
Future<String> hashAsset(File assetFile) async =>
    md5.convert(await assetFile.readAsBytes()).toString();

/// Downloads an asset for the specified [targetOS] and [targetArchitecture].
Future<File> downloadAsset(
  OS targetOS,
  Architecture targetArchitecture,
  Directory outputDirectory, {
  int maxAttempts = 5,
}) async {
  final targetName = targetOS.dylibFileName(
    createTargetName(targetOS, targetArchitecture),
  );
  final uri = _downloadUri(targetName);
  final destination = File.fromUri(outputDirectory.uri.resolve(targetName));

  Object? lastError;
  StackTrace? lastStackTrace;

  for (var attempt = 1; attempt <= maxAttempts; attempt++) {
    try {
      if (attempt > 1) {
        stderr.writeln(
          '($attempt/$maxAttempts) Retrying downloading prebuilt asset "$targetName"...',
        );
      }
      return await _initiateDownload(uri, destination);
    } catch (error, stackTrace) {
      lastError = error;
      lastStackTrace = stackTrace;
      if (attempt == maxAttempts) break;
      stderr.writeln(
        '($attempt/$maxAttempts) Failed to download prebuilt asset "$targetName".'
        '${stderr.lineTerminator}$error',
      );
      await Future.delayed(.new(milliseconds: 250 * (1 << (attempt - 1))));
    }
  }

  Error.throwWithStackTrace(
    Exception(
      'Failed to download prebuilt asset "$targetName" after $maxAttempts '
      'attempts.${stderr.lineTerminator}$lastError',
    ),
    lastStackTrace!,
  );
}

/// Constructs the download URI for a given [target] file name.
Uri _downloadUri(String target) => .parse(
  'https://github.com/halildurmus/win32/releases/download/$version/$target',
);

Future<File> _initiateDownload(Uri uri, File destination) async {
  final client = HttpClient()
    // Respect the http(s)_proxy environment variables.
    ..findProxy = HttpClient.findProxyFromEnvironment;
  try {
    final request = await client.getUrl(uri);
    final response = await request.close();
    if (response.statusCode != 200) {
      throw Exception(
        'The request to $uri failed with status ${response.statusCode}.',
      );
    }
    await response.pipe(destination.openWrite());
    return destination;
  } finally {
    client.close();
  }
}
