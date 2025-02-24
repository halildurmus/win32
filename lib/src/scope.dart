import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'assembly_ref.dart';
import 'metadata_store.dart';
import 'mixins/supported_architectures_mixin.dart';
import 'models/models.dart';
import 'module_ref.dart';
import 'pekind.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'type_def.dart';
import 'win32/win32.dart';

/// A metadata scope, which typically matches an on-disk file.
///
/// Rather than being created directly, you should obtain a scope from a
/// [MetadataStore], which caches scopes to avoid duplication.
class Scope {
  Scope(this.reader, this.assemblyImport);

  final IMetaDataImport2 reader;
  final IMetaDataAssemblyImport assemblyImport;

  /// Map for token-to-TypeDef lookup.
  final _typeDefs = <int, TypeDef>{};

  /// Map for name-to-TypeDefs lookup.
  final _typeDefsByName = <String, List<TypeDef>>{};

  String? _guid;
  String? _name;
  bool _populated = false;

  late final executableKind = PEKind(reader);

  /// The GUID of the scope.
  late final guid = _guid ??= _getGuidAndName(reader).guid;

  /// The metadata token for the module referenced in this scope.
  late final moduleToken = _computeModuleToken();

  /// The name of the scope.
  late final name = _name ??= _getGuidAndName(reader).name;

  /// The version of the scope.
  late final version = _computeVersion();

  /// Get an enumerated list of assembly references in this scope.
  late final assemblyRefs = _getAssemblyRefs();

  /// Get an enumerated list of all classes in this scope.
  late final classes = _getClasses();

  /// Get an enumerated list of all delegates in this scope.
  late final delegates = _getDelegates();

  /// Get an enumerated list of all enumerations in this scope.
  late final enums = _getEnums();

  /// Get an enumerated list of all interfaces in this scope.
  late final interfaces = _getInterfaces();

  /// Get an enumerated list of modules in this scope.
  late final moduleRefs = _getModuleRefs();

  /// Get an enumerated list of all structures in this scope.
  late final structs = _getStructs();

  /// Get an enumerated list of [TypeDef]s for this scope.
  late final typeDefs = _populateTypeDefs();

  /// Get an enumerated list of all hard-coded strings in this scope.
  late final userStrings = _getUserStrings();

  /// Returns the first [TypeDef] object matching the given [name] and optional
  /// [preferredArchitecture].
  ///
  /// Returns `null` if no typedefs match the name and [preferredArchitecture].
  TypeDef? findTypeDef(
    String name, {
    PreferredArchitecture preferredArchitecture = PreferredArchitecture.x64,
  }) {
    if (!_populated) _populateTypeDefs();
    final typeDefs = _typeDefsByName[name];
    if (typeDefs == null || typeDefs.isEmpty) return null;
    if (typeDefs.length == 1) return typeDefs[0];

    // Filter by preferred architecture.
    return typeDefs.where((td) {
      final Architecture(:arm64, :x64, :x86) = td.supportedArchitectures;
      return switch (preferredArchitecture) {
        PreferredArchitecture.arm64 => arm64,
        PreferredArchitecture.x64 => x64,
        PreferredArchitecture.x86 => x86,
      };
    }).firstOrNull;
  }

  /// Return the [TypeDef] matching the given [token].
  ///
  /// Returns `null` if no typedefs match the token. Note that this does not
  /// resolve `TypeRef`s or `TypeSpec`s.
  TypeDef? findTypeDefByToken(int token) {
    if (!_populated) _populateTypeDefs();
    return _typeDefs[token];
  }

  @override
  String toString() => name;

  int _computeModuleToken() => using((arena) {
    final pmd = arena<mdModule>();
    reader.getModuleFromScope(pmd);
    return pmd.value;
  });

  String _computeVersion() => using((arena) {
    final pwzBuf = arena<WCHAR>(stringBufferSize).cast<Utf16>();
    final pccBufSize = arena<DWORD>();
    try {
      reader.getVersionString(pwzBuf, stringBufferSize, pccBufSize);
      return pwzBuf.toDartString();
    } on WindowsException {
      return '';
    }
  });

  ({String guid, String name}) _getGuidAndName(IMetaDataImport2 reader) =>
      using((arena) {
        final szName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
        final pchName = arena<ULONG>();
        final pmvid = arena<GUID>();
        reader.getScopeProps(szName, stringBufferSize, pchName, pmvid);
        final guid = pmvid.ref.toString();
        final name = szName.toDartString();
        _guid = guid;
        _name = name;
        return (guid: guid, name: name);
      });

  Iterable<ModuleRef> _getModuleRefs() {
    final modules = <ModuleRef>[];
    return using((arena) {
      final phEnum = arena<HCORENUM>();
      final rgModuleRefs = arena<mdModuleRef>(10);
      final pcModuleRefs = arena<ULONG>();
      while (true) {
        try {
          reader.enumModuleRefs(phEnum, rgModuleRefs, 10, pcModuleRefs);
          if (pcModuleRefs.value == 0) break;
          for (var i = 0; i < pcModuleRefs.value; i++) {
            final moduleToken = rgModuleRefs[i];
            modules.add(ModuleRef.fromToken(this, moduleToken));
          }
        } on WindowsException {
          break;
        }
      }
      reader.closeEnum(phEnum.value);
      return modules;
    });
  }

  Iterable<AssemblyRef> _getAssemblyRefs() {
    final assemblies = <AssemblyRef>[];
    return using((arena) {
      final phEnum = arena<HCORENUM>();
      final rAssemblyRefs = arena<mdModuleRef>();
      final pcTokens = arena<ULONG>();
      while (true) {
        try {
          assemblyImport.enumAssemblyRefs(phEnum, rAssemblyRefs, 1, pcTokens);
          if (pcTokens.value == 0) break;
          final assemblyToken = rAssemblyRefs.value;
          assemblies.add(AssemblyRef.fromToken(this, assemblyToken));
        } on WindowsException {
          break;
        }
      }
      assemblyImport.closeEnum(phEnum.value);
      return assemblies;
    });
  }

  Iterable<String> _getUserStrings() {
    final userStrings = <String>[];
    return using((arena) {
      final phEnum = arena<HCORENUM>();
      final rgStrings = arena<mdString>();
      final pcStrings = arena<ULONG>();
      final szString = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchString = arena<ULONG>();
      while (true) {
        try {
          reader.enumUserStrings(phEnum, rgStrings, 1, pcStrings);
          if (pcStrings.value == 0) break;
          final stringToken = rgStrings.value;
          reader.getUserString(
            stringToken,
            szString,
            stringBufferSize,
            pchString,
          );
          userStrings.add(szString.toDartString());
        } on WindowsException {
          break;
        }
      }
      reader.closeEnum(phEnum.value);
      return userStrings;
    });
  }

  Iterable<TypeDef> _getClasses() =>
      typeDefs.where((typeDef) => typeDef.isClass);

  Iterable<TypeDef> _getDelegates() =>
      typeDefs.where((typeDef) => typeDef.isDelegate);

  Iterable<TypeDef> _getEnums() => typeDefs.where((typeDef) => typeDef.isEnum);

  Iterable<TypeDef> _getInterfaces() =>
      typeDefs.where((typeDef) => typeDef.isInterface);

  Iterable<TypeDef> _getStructs() =>
      typeDefs.where((typeDef) => typeDef.isStruct);

  /// Populates _typeDefs and _typeDefsByNameCombined.
  Iterable<TypeDef> _populateTypeDefs() {
    if (_populated) return _typeDefs.values;
    return using((arena) {
      final phEnum = arena<HCORENUM>();
      final rgTypeDefs = arena<mdTypeDef>(1024);
      final pcTypeDefs = arena<ULONG>();
      while (true) {
        try {
          reader.enumTypeDefs(phEnum, rgTypeDefs, 1024, pcTypeDefs);
          if (pcTypeDefs.value == 0) break;
          for (var i = 0; i < pcTypeDefs.value; i++) {
            final typeDefToken = rgTypeDefs[i];
            final typeDef = TypeDef.fromToken(this, typeDefToken);
            _typeDefs[typeDefToken] = typeDef;
            _typeDefsByName.putIfAbsent(typeDef.name, () => []).add(typeDef);
          }
        } on WindowsException {
          break;
        }
      }
      reader.closeEnum(phEnum.value);
      _populated = true;
      return _typeDefs.values;
    });
  }
}
