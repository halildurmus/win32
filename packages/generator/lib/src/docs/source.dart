import 'dart:async';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:msgpack_dart/msgpack_dart.dart';
import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;

import '../local_storage_manager.dart';
import '../nuget_package.dart';
import 'api_details.dart';

/// An abstract documentation source.
///
/// Each source is responsible for providing a map of API documentation entries
/// keyed by a unique identifier.
sealed class DocsSource {
  FutureOr<Map<String, ApiDetails>> loadDocumentation();
}

/// A [DocsSource] implementation that downloads the [NuGetPackage.win32Docs],
/// extracts a MessagePack file, and decodes its contents.
final class NuGetDocsSource implements DocsSource {
  NuGetDocsSource({
    required this.version,
    LocalStorageManager? localStorageManager,
    NuGetClient? nugetClient,
  }) : localStorageManager = localStorageManager ?? LocalStorageManager(),
       nugetClient = nugetClient ?? NuGetClient();

  final String version;
  final LocalStorageManager localStorageManager;
  final NuGetClient nugetClient;

  static const NuGetPackage _package = NuGetPackage.win32Docs;

  @override
  Future<Map<String, ApiDetails>> loadDocumentation() async {
    // Retrieve the package directory, downloading if necessary.
    final packagePath = await localStorageManager.getPackageDirectory(
      _package,
      version,
      () async {
        print('Downloading $_package.$version.nupkg...');
        final bytes = await nugetClient.downloadPackageContent(
          _package.packageId,
          version: version,
        );
        return bytes;
      },
    );

    // Build the full path to the MessagePack file.
    final msgpackFilePath = p.join(packagePath, _package.assetName);
    final msgpackFile = File(msgpackFilePath);

    // Read and decode the MessagePack file asynchronously.
    final bytes = msgpackFile.readAsBytesSync();
    final decoded = Deserializer(bytes).decode();

    // Validate the decoded format.
    if (decoded is! Map) {
      throw const FormatException(
        'Invalid MessagePack format: Expected a Map.',
      );
    }

    // Cast and transform the decoded data to a map of API details.
    final rawData = Map<String, List<dynamic>>.from(decoded);
    return rawData.map(
      (key, value) => MapEntry(key, ApiDetails.fromList(key, value)),
    );
  }
}

/// A [DocsSource] implementation that returns a fixed set of predefined
/// documentation.
///
/// This can be used to "patch" or supplement the documentation with hard-coded
/// entries.
final class PredefinedDocsSource implements DocsSource {
  const PredefinedDocsSource(this.predefinedDocs);

  final Map<String, ApiDetails> predefinedDocs;

  @override
  Map<String, ApiDetails> loadDocumentation() => predefinedDocs;
}

@visibleForTesting
final class FakeDocsSource implements DocsSource {
  const FakeDocsSource(this.docs);

  final Map<String, ApiDetails> docs;

  @override
  Map<String, ApiDetails> loadDocumentation() => docs;
}
