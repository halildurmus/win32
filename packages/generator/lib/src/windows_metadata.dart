import 'dart:collection';

import 'package:winmd/windows_metadata.dart'
    show WindowsMetadataLoader, WindowsMetadataPackage, WindowsMetadataVersions;
import 'package:winmd/winmd.dart';

import 'docs/docs.dart';
import 'docs/manager.dart';
import 'docs/source.dart';
import 'exception.dart';
import 'extensions/collection.dart';
import 'extensions/type_def.dart';
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
  static final DocsManager docs =
      _docs ??
      (throw const GeneratorException(
        'The metadata is not loaded. Call `WindowsMetadata.load()` first.',
      ));

  static MetadataIndex? _index;

  /// The loaded metadata index.
  static final MetadataIndex index =
      _index ??
      (throw const GeneratorException(
        'The metadata is not loaded. Call `WindowsMetadata.load()` first.',
      ));

  static MetadataLookup? _lookup;

  /// The loaded metadata lookup.
  static final MetadataLookup lookup =
      _lookup ??
      (throw const GeneratorException(
        'The metadata is not loaded. Call `WindowsMetadata.load()` first.',
      ));

  /// Loads Windows metadata (WDK, Win32, WinRT) and documentation.
  ///
  /// This method loads the metadata concurrently from the
  /// [WindowsMetadataLoader] and documentation from the provided sources. Once
  /// loaded, the documentation manager is cached for later use.
  static Future<(MetadataIndex index, DocsManager docs)> load({
    String wdkMetadataVersion = wdkMetadataVersion,
    String win32MetadataVersion = win32MetadataVersion,
    String win32DocsVersion = win32DocsVersion,
    String winrtMetadataVersion = winrtMetadataVersion,
  }) async {
    final (index, docs) = await (
      WindowsMetadataLoader().loadMultipleMetadata(
        packages: [WindowsMetadataPackage.wdk, WindowsMetadataPackage.win32],
        versions: WindowsMetadataVersions(
          wdk: wdkMetadataVersion,
          win32: win32MetadataVersion,
          winrt: winrtMetadataVersion,
        ),
      ),
      DocsManager.load([
        NuGetDocsSource(version: win32DocsVersion),
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
    _index = index;
    _lookup = MetadataLookup(index);
    return (index, docs);
  }

  /// Returns all constant fields across all loaded scopes.
  static final List<Field> constants = typeDefs
      .where((typeDef) => typeDef.name == 'Apis')
      .expand((typeDef) => typeDef.fields)
      .toFixedList();

  /// Returns all delegates that support x64 across all scopes.
  static final List<TypeDef> delegates = typeDefs
      .where(
        (typeDef) => typeDef.isDelegate && typeDef.supportedArchitectures.x64,
      )
      .toFixedList();

  /// Returns all enums across all scopes.
  static final List<TypeDef> enums = typeDefs
      .where((typeDef) => typeDef.isEnum)
      .toFixedList();

  /// Returns all functions across all scopes.
  static final List<MethodDef> functions = lookup.functionIndex.values
      .expand((namespace) => namespace.values)
      .toFixedList();

  /// Returns all interfaces across all scopes.
  static final List<TypeDef> interfaces = typeDefs
      .where((typeDef) => typeDef.isInterface)
      .toFixedList();

  /// Returns all structs that support x64 across all scopes.
  static final List<TypeDef> structs = typeDefs
      .where(
        (typeDef) => typeDef.isStruct && typeDef.supportedArchitectures.x64,
      )
      .toFixedList();

  /// Returns all type definitions across all scopes.
  static final List<TypeDef> typeDefs = lookup.typeIndex.values
      .expand((namespace) => namespace.values)
      .expand((typeDef) => typeDef)
      .toFixedList();

  @pragma('vm:prefer-inline')
  static Field findConstant(String namespace, String name) =>
      lookup.findConstant(namespace, name);

  /// Retrieves a constant field by its [name].
  @pragma('vm:prefer-inline')
  static Field findConstantByName(String name) =>
      lookup.findConstantByName(name);

  /// Retrieves a list of constant fields by their [names].
  @pragma('vm:prefer-inline')
  static List<Field> findConstants(Set<String> names) =>
      names.map(lookup.findConstantByName).toFixedList();

  @pragma('vm:prefer-inline')
  static MethodDef findFunction(String namespace, String name) =>
      lookup.findFunction(namespace, name);

  /// Retrieves a function by its [name].
  @pragma('vm:prefer-inline')
  static MethodDef findFunctionByName(String name) =>
      lookup.findFunctionByName(name);

  /// Retrieves a list of functions by their [names].
  @pragma('vm:prefer-inline')
  static List<MethodDef> findFunctions(Set<String> names) =>
      names.map(lookup.findFunctionByName).toFixedList();

  /// Retrieves a type definition by its [name].
  @pragma('vm:prefer-inline')
  static TypeDef findTypeDef(
    String namespace,
    String name, {
    PreferredArchitecture preferredArchitecture = PreferredArchitecture.x64,
  }) {
    final typeDefs = lookup.findTypes(namespace, name).toFixedList();
    if (typeDefs.length == 1) return typeDefs[0];

    // Filter by preferred architecture.
    return typeDefs.where((td) {
          final Architecture(:arm64, :x64, :x86) = td.supportedArchitectures;
          return switch (preferredArchitecture) {
            PreferredArchitecture.arm64 => arm64,
            PreferredArchitecture.x64 => x64,
            PreferredArchitecture.x86 => x86,
          };
        }).firstOrNull ??
        (throw GeneratorException(
          'Type "$namespace.$name" is not found in the metadata.',
        ));
  }

  /// Retrieves a type definition by its [name].
  @pragma('vm:prefer-inline')
  static TypeDef findTypeDefByName(
    String name, {
    PreferredArchitecture preferredArchitecture = PreferredArchitecture.x64,
  }) {
    final typeDefs = lookup.findTypesByName(name).toFixedList();
    if (typeDefs.length == 1) return typeDefs[0];

    // Filter by preferred architecture.
    return typeDefs.where((td) {
          final Architecture(:arm64, :x64, :x86) = td.supportedArchitectures;
          return switch (preferredArchitecture) {
            PreferredArchitecture.arm64 => arm64,
            PreferredArchitecture.x64 => x64,
            PreferredArchitecture.x86 => x86,
          };
        }).firstOrNull ??
        (throw GeneratorException(
          'Type "$name" is not found in the metadata.',
        ));
  }

  /// Retrieves a list of type definitions by their [names].
  @pragma('vm:prefer-inline')
  static List<TypeDef> findTypeDefs(Set<String> names) =>
      names.map(findTypeDefByName).toFixedList();
}
