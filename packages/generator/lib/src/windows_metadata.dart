import 'package:nuget/nuget.dart';
import 'package:winmd/winmd.dart';

import 'docs/docs.dart';
import 'docs/local_storage_manager.dart';
import 'docs/manager.dart';
import 'docs/source.dart';
import 'extensions/scope.dart';
import 'extensions/string.dart';
import 'extensions/typedef.dart';
import 'metadata_package.dart';
import 'versions.dart';

/// Provides access to the Windows metadata and documentation.
///
/// This class loads the Windows metadata (WDK, Win32, WinRT) and
/// documentation from various sources. It offers convenience getters for
/// common metadata elements and helper methods for looking up constants,
/// functions, and types.
abstract final class WindowsMetadata {
  static DocsManager? _docs;

  /// The loaded documentation manager.
  static DocsManager get docs =>
      _docs ??
      (throw StateError(
        'The metadata is not loaded. Call Metadata.load() first.',
      ));

  /// Loads Windows metadata (WDK, Win32, WinRT) and documentation.
  ///
  /// This method loads the metadata concurrently from the [MetadataStore] and
  /// documentation from the provided sources. Once loaded, the documentation
  /// manager is cached for later use.
  static Future<(Scope wdk, Scope win32, Scope winrt, DocsManager docs)>
  load() async {
    final (wdk, win32, winrt, docs) =
        await (
          MetadataStore.loadWdkMetadata(version: wdkMetadataVersion),
          MetadataStore.loadWin32Metadata(version: win32MetadataVersion),
          MetadataStore.loadWinrtMetadata(version: winrtMetadataVersion),
          DocsManager.load([
            NuGetDocsSource(
              package: MetadataPackage.win32Docs,
              version: win32DocsVersion,
              localStorageManager: LocalStorageManager(),
              nugetClient: NuGetClient(),
            ),
            const PredefinedDocsSource({
              ...callbackDocs,
              ...constantDocs,
              ...enumDocs,
              ...fieldDocs,
              ...functionDocs,
              ...interfaceDocs,
              ...methodDocs,
              ...structDocs,
            }),
          ]),
        ).wait;
    _docs = docs;
    return (wdk, win32, winrt, docs);
  }

  /// Cleans up the resources used by the [MetadataStore].
  static void close() => MetadataStore.close();

  /// Returns all constant fields across all loaded scopes.
  static Iterable<Field> get constants =>
      scopes.expand((scope) => scope.constants);

  /// Returns all delegates that support x64 across all scopes.
  static Iterable<TypeDef> get delegates => scopes.expand(
    (scope) =>
        scope.delegates.where((typeDef) => typeDef.supportedArchitectures.x64),
  );

  /// Returns all enums across all scopes.
  static Iterable<TypeDef> get enums => scopes.expand((scope) => scope.enums);

  /// Returns all functions across all scopes.
  static Iterable<Method> get functions =>
      scopes.expand((scope) => scope.functions);

  /// Returns all interfaces across all scopes.
  static Iterable<TypeDef> get interfaces =>
      scopes.expand((scope) => scope.interfaces);

  /// Returns all metadata scopes, excluding the WinRT scope.
  static Iterable<Scope> get scopes => MetadataStore.scopeCache.values.where(
    (scope) => scope.name != 'Windows.winmd', // Exclude the WinRT scope.
  );

  /// Returns all structs that support x64 across all scopes.
  static Iterable<TypeDef> get structs => scopes.expand(
    (scope) =>
        scope.structs.where((typeDef) => typeDef.supportedArchitectures.x64),
  );

  /// Returns all type definitions across all scopes.
  static Iterable<TypeDef> get typeDefs =>
      scopes.expand((scope) => scope.typeDefs);

  /// Returns the WDK scope.
  static Scope get wdk => MetadataStore.scopeCache['Windows.Wdk.winmd']!;

  /// Returns the Win32 scope.
  static Scope get win32 => MetadataStore.scopeCache['Windows.Win32.winmd']!;

  /// Returns the WinRT scope.
  static Scope get winrt => MetadataStore.scopeCache['Windows.winmd']!;

  /// Retrieves a constant field by its [name].
  ///
  /// If [name] contains a dot, the namespace is derived from the components
  /// and the field is looked up in the corresponding type. Otherwise, the
  /// search is performed across all scopes.
  static Field constant(String name) {
    if (name.contains('.')) {
      final namespace = (name.split('.')..removeLast()).join('.');
      assert(namespace.endsWith('Apis'), 'Invalid name: $name');
      final typeDef = MetadataStore.getMetadataForType(namespace);
      if (typeDef != null) return typeDef.field(name.lastComponent);
    } else {
      final constant =
          MetadataStore.scopeCache.values
              .expand((scope) => scope.constants)
              .where((constant) => constant.name == name)
              .firstOrNull;
      if (constant != null) return constant;
    }

    throw StateError('Constant "$name" is not found in the metadata.');
  }

  /// Retrieves a function by its [name].
  ///
  /// If [name] contains a dot, the namespace is derived from the components
  /// and the function is looked up in the corresponding type. Otherwise, the
  /// search is performed across all scopes.
  static Method function(String name) {
    if (name.contains('.')) {
      final namespace = (name.split('.')..removeLast()).join('.');
      assert(namespace.endsWith('Apis'), 'Invalid name: $name');
      final typeDef = MetadataStore.getMetadataForType(namespace);
      if (typeDef != null) return typeDef.method(name.lastComponent);
    } else {
      final function =
          MetadataStore.scopeCache.values
              .expand((scope) => scope.functions)
              .where((function) => function.name == name)
              .firstOrNull;
      if (function != null) return function;
    }

    throw StateError('Function "$name" is not found in the metadata.');
  }

  /// Retrieves a type definition by its [name].
  ///
  /// If [name] contains a dot, an exact match is attempted. Otherwise, the
  /// type is searched by its simple name across all scopes.
  static TypeDef typeDef(String name) {
    if (name.contains('.')) {
      final typeDef = MetadataStore.getMetadataForType(name);
      if (typeDef != null) return typeDef;
    } else {
      final typeDef =
          MetadataStore.scopeCache.values
              .expand((scope) => scope.typeDefs)
              .where((typeDef) => typeDef.simpleName == name)
              .firstOrNull;
      if (typeDef != null) return typeDef;
    }

    throw StateError('Type "$name" is not found in the metadata.');
  }
}
