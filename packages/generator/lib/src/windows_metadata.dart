import 'dart:collection';

import 'package:nuget/nuget.dart';
import 'package:winmd/winmd.dart';

import 'docs/docs.dart';
import 'docs/local_storage_manager.dart';
import 'docs/manager.dart';
import 'docs/source.dart';
import 'extensions/collection.dart';
import 'extensions/scope.dart';
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
  static final docs =
      _docs ??
      (throw StateError(
        'The metadata is not loaded. Call `WindowsMetadata.load()` first.',
      ));

  /// Loads Windows metadata (WDK, Win32, WinRT) and documentation.
  ///
  /// This method loads the metadata concurrently from the [MetadataStore] and
  /// documentation from the provided sources. Once loaded, the documentation
  /// manager is cached for later use.
  static Future<(Scope wdk, Scope win32, Scope winrt, DocsManager docs)> load({
    String wdkMetadataVersion = wdkMetadataVersion,
    String win32MetadataVersion = win32MetadataVersion,
    String win32DocsVersion = win32DocsVersion,
    String winrtMetadataVersion = winrtMetadataVersion,
  }) async {
    final (wdk, win32, winrt, docs) =
        await (
          MetadataStore.loadWdkScope(version: wdkMetadataVersion),
          MetadataStore.loadWin32Scope(version: win32MetadataVersion),
          MetadataStore.loadWinrtScope(version: winrtMetadataVersion),
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
  static final constants = scopes.expand((scope) => scope.constants);

  /// Returns all delegates that support x64 across all scopes.
  static final delegates = scopes.expand(
    (scope) =>
        scope.delegates.where((typeDef) => typeDef.supportedArchitectures.x64),
  );

  /// Returns all enums across all scopes.
  static final enums = scopes.expand((scope) => scope.enums);

  /// Returns all functions across all scopes.
  static final functions = scopes.expand((scope) => scope.functions);

  /// Returns all interfaces across all scopes.
  static final interfaces = scopes.expand((scope) => scope.interfaces);

  /// Returns all metadata scopes, excluding the WinRT scope.
  static final scopes = UnmodifiableListView([win32, wdk]);

  /// Returns all structs that support x64 across all scopes.
  static final structs = scopes.expand(
    (scope) =>
        scope.structs.where((typeDef) => typeDef.supportedArchitectures.x64),
  );

  /// Returns all type definitions across all scopes.
  static final typeDefs = scopes.expand((scope) => scope.typeDefs);

  /// Returns the WDK scope.
  static final wdk = MetadataStore.scopeCache[MetadataPackage.wdk.assetName]!;

  /// Returns the Win32 scope.
  static final win32 =
      MetadataStore.scopeCache[MetadataPackage.win32.assetName]!;

  /// Returns the WinRT scope.
  static final winrt =
      MetadataStore.scopeCache[MetadataPackage.winrt.assetName]!;

  /// Retrieves a constant field by its [name].
  @pragma('vm:prefer-inline')
  static Field findConstant(String name) {
    final constant =
        constants.where((constant) => constant.name == name).firstOrNull;
    if (constant != null) return constant;
    throw StateError('Constant "$name" is not found in the metadata.');
  }

  /// Retrieves a list of constant fields by their [names].
  @pragma('vm:prefer-inline')
  static List<Field> findConstants(Set<String> names) =>
      constants
          .where((constant) => names.contains(constant.name))
          .toFixedList();

  /// Retrieves a function by its [name].
  @pragma('vm:prefer-inline')
  static Method findFunction(String name) {
    final function =
        functions.where((function) => function.name == name).firstOrNull;
    if (function != null) return function;
    throw StateError('Function "$name" is not found in the metadata.');
  }

  /// Retrieves a list of functions by their [names].
  @pragma('vm:prefer-inline')
  static List<Method> findFunctions(Set<String> names) =>
      functions
          .where((function) => names.contains(function.name))
          .toFixedList();

  /// Retrieves a type definition by its [name].
  @pragma('vm:prefer-inline')
  static TypeDef findTypeDef(String name) {
    final typeDef =
        typeDefs.where((typeDef) => typeDef.simpleName == name).firstOrNull;
    if (typeDef != null) return typeDef;
    throw StateError('Type "$name" is not found in the metadata.');
  }

  /// Retrieves a list of type definitions by their [names].
  @pragma('vm:prefer-inline')
  static List<TypeDef> findTypeDefs(Set<String> names) =>
      typeDefs
          .where((typeDef) => names.contains(typeDef.simpleName))
          .toFixedList();
}
