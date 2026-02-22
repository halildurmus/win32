import 'dart:async';

import 'package:winmd/winmd.dart';

import 'api_details.dart';
import 'resolver.dart';
import 'source.dart';

/// Provides a unified API for loading and retrieving API documentation from
/// multiple documentation sources.
final class DocsManager {
  const DocsManager._(this._docs, this._predefinedDocs);

  final Map<String, ApiDetails> _docs;
  final Map<String, ApiDetails> _predefinedDocs;

  /// Loads documentation from the provided [sources].
  ///
  /// Documentation from sources implementing [PredefinedDocsSource] is treated
  /// as predefined docs. Later sources override earlier ones.
  static Future<DocsManager> load(List<DocsSource> sources) async {
    final docs = <String, ApiDetails>{};
    final predefinedDocs = <String, ApiDetails>{};

    for (final source in sources) {
      try {
        final documentation = await source.loadDocumentation();
        if (source is PredefinedDocsSource) {
          predefinedDocs.addAll(documentation);
        } else {
          docs.addAll(documentation);
        }
      } catch (e, stackTrace) {
        print('Error loading docs from source $source: $e\n$stackTrace');
      }
    }

    return DocsManager._(docs, predefinedDocs);
  }

  /// Retrieves documentation based on a [Row] by using the resolved keys.
  ApiDetails? documentation(Row row) {
    final keys = DocsKeyResolver.resolve(row);
    return _lookup(keys);
  }

  /// Retrieves documentation using the [identifier] of the documentation.
  ApiDetails? documentationFromIdentifier(String identifier) {
    if (identifier.isEmpty) {
      throw ArgumentError.value(
        identifier,
        'identifier',
        'Identifier must not be empty.',
      );
    }
    return _predefinedDocs[identifier] ?? _docs[identifier];
  }

  /// Looks up documentation using a list of potential [keys].
  ///
  /// The lookup strategy is:
  ///   1. Check the primary key (first in the list) in the predefined docs.
  ///   2. Then check the remaining keys in the regular docs.
  ApiDetails? _lookup(List<String> keys) {
    if (keys.isEmpty) return null;

    final primaryKey = keys[0];
    final predefined = _predefinedDocs[primaryKey];
    if (predefined != null) return predefined;

    for (final key in keys.skip(1)) {
      final doc = _docs[key];
      if (doc != null) return doc;
    }

    return null;
  }
}
