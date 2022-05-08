// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'assemblyref.dart';
import 'base.dart';
import 'classlayout.dart';
import 'com/constants.dart';
import 'event.dart';
import 'field.dart';
import 'metadatastore.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'mixins/genericparams_mixin.dart';
import 'mixins/supportedarchitectures_mixin.dart';
import 'property.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typeidentifier.dart';
import 'utils/exception.dart';
import 'utils/typetuple.dart';

/// Specifies visibility of a type to other types.
enum TypeVisibility {
  /// Specifies that the type is not in public scope.
  notPublic,

  /// Specifies that the type is in public scope.
  public,

  /// Specifies that the type is nested with public visibility.
  nestedPublic,

  /// Specifies that the type is nested with private visibility.
  nestedPrivate,

  /// Specifies that the type is nested with family visibility.
  nestedFamily,

  /// Specifies that the type is nested with assembly visibility.
  nestedAssembly,

  /// Specifies that the type is nested with family and assembly visibility.
  nestedFamilyAndAssembly,

  /// Specifies that the type is nested with family or assembly visibility.
  nestedFamilyOrAssembly
}

/// Specifies how fields are laid out in the type.
enum TypeLayout {
  /// Specifies that the fields of this type are laid out automatically.
  auto,

  /// Specifies that the fields of this type are laid out sequentially.
  sequential,

  /// Specifies that field layout is supplied explicitly.
  explicit
}

/// Specifies how string types are interpreted.
enum StringFormat {
  /// Specifies that this type interprets an LPTSTR as ANSI.
  ansi,

  /// Specifies that this type interprets an LPTSTR as Unicode.
  unicode,

  /// Specifies that this type interprets an LPTSTR automatically.
  auto,

  /// Specifies that the type has a non-standard encoding, as specified by
  /// CustomFormatMask.
  custom
}

/// Represents a TypeDef in the Windows Metadata file
class TypeDef extends TokenObject
    with
        CustomAttributesMixin,
        GenericParamsMixin,
        SupportedArchitecturesMixin {
  final int baseTypeToken;
  final String name;
  final TypeIdentifier? typeSpec;

  final int _attributes;
  final _events = <Event>[];
  final _fields = <Field>[];
  final _interfaces = <TypeDef>[];
  final _methods = <Method>[];
  final _properties = <Property>[];

  /// Create a typedef.
  ///
  /// Typically, typedefs should be obtained from a [WinmdScope] object rather
  /// than being created directly.
  TypeDef(Scope scope,
      [int token = 0,
      this.name = '',
      this._attributes = 0,
      this.baseTypeToken = 0,
      this.typeSpec])
      : super(scope, token);

  /// The token for the class within which this typedef is nested, if there is
  /// one.
  ///
  /// Returns null if there is no nested parent.
  late final _enclosingClassToken = isNested
      ? using((Arena arena) {
          final ptdEnclosingClass = arena<mdTypeDef>();
          final hr = reader.GetNestedClassProps(token, ptdEnclosingClass);
          if (SUCCEEDED(hr)) {
            return ptdEnclosingClass.value;
          } else {
            throw WindowsException(hr);
          }
        })
      : null;

  /// Creates a typedef object from a provided token.
  factory TypeDef.fromToken(Scope scope, int token) {
    switch (token & 0xFF000000) {
      case CorTokenType.mdtTypeRef:
        return TypeDef.fromTypeRefToken(scope, token);
      case CorTokenType.mdtTypeDef:
        return TypeDef.fromTypeDefToken(scope, token);
      case CorTokenType.mdtTypeSpec:
        return TypeDef.fromTypeSpecToken(scope, token);
      default:
        throw WinmdException('Unrecognized token ${token.toHexString(32)}');
    }
  }

  /// Instantiate a typedef from a TypeDef token.
  factory TypeDef.fromTypeDefToken(Scope scope, int typeDefToken) =>
      using((Arena arena) {
        final szTypeDef = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchTypeDef = arena<ULONG>();
        final pdwTypeDefFlags = arena<DWORD>();
        final ptkExtends = arena<mdToken>();

        final reader = scope.reader;
        final hr = reader.GetTypeDefProps(typeDefToken, szTypeDef,
            MAX_STRING_SIZE, pchTypeDef, pdwTypeDefFlags, ptkExtends);

        if (SUCCEEDED(hr)) {
          return TypeDef(scope, typeDefToken, szTypeDef.toDartString(),
              pdwTypeDefFlags.value, ptkExtends.value);
        } else {
          throw WindowsException(hr);
        }
      });

  static String _resolveTypeNameForTypeRef(Scope scope, int typeRefToken) =>
      using((Arena arena) {
        final ptkResolutionScope = arena<mdToken>();
        final szName = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchName = arena<ULONG>();
        final hr = scope.reader.GetTypeRefProps(
            typeRefToken, ptkResolutionScope, szName, MAX_STRING_SIZE, pchName);
        if (SUCCEEDED(hr)) {
          return szName.toDartString();
        } else {
          throw WindowsException(hr);
        }
      });

  /// Resolve nested type by iterating through all typedefs looking for a match.
  ///
  /// This is our brute force method for nested types whose resolution scope
  /// does not contain the type. This occurs in Win32 when a nested type belongs
  /// to a parent type that has multiple versions with different platform
  /// architectures.
  static TypeDef _resolveNestedTypeThroughIteration(Scope scope,
          int resolutionScopeToken, int typeRefToken, String typeName) =>
      using((Arena arena) {
        // Find the name of the parent type
        final parentTypeName =
            _resolveTypeNameForTypeRef(scope, resolutionScopeToken);

        // Get the matching typedef that matches the preferred architecture
        final parentTypeDef = scope.findTypeDef(parentTypeName,
            preferredArchitecture: PreferredArchitecture.x64);
        if (parentTypeDef == null) {
          throw WinmdException('Cannot find matching typeDef');
        }

        // Now find the nested type that matches the name _and_ is enclosed in
        // the parent's token.
        final matchingTypes = scope.typeDefs
            .where((t) => t.name == typeName)
            .where((t) => t._enclosingClassToken == parentTypeDef.token);

        if (matchingTypes.length == 1) {
          return matchingTypes.first;
        } else {
          print('${matchingTypes.length} types found for $typeName');
          return TypeDef(scope, 0, typeName);
        }
      });

  /// Attempt to find a nested type using FindTypeDefByName.
  ///
  /// If this doesn't work, we then have to try a more labor-intensive approach.
  static TypeDef _resolveNestedType(Scope scope, int resolutionScopeToken,
          int typeRefToken, String typeName) =>
      using((Arena arena) {
        final szTypeDef = typeName.toNativeUtf16(allocator: arena);
        final ptd = arena<mdTypeDef>();
        final hr = scope.reader
            .FindTypeDefByName(szTypeDef, resolutionScopeToken, ptd);
        if (SUCCEEDED(hr)) {
          return scope.findTypeDefByToken(ptd.value)!;
          // return TypeDef.fromToken(scope, ptd.value);
        } else if (hr == CLDB_E_RECORD_NOTFOUND) {
          return _resolveNestedTypeThroughIteration(
              scope, resolutionScopeToken, typeRefToken, typeName);
        } else {
          throw WindowsException(hr);
        }
      });

  /// Instantiate a typedef from a TypeRef token.
  ///
  /// Unless the TypeRef token is `IInspectable`, the COM parent interface for
  /// Windows Runtime classes, the TypeRef is used to obtain the host scope
  /// metadata file, from which the TypeDef can be found and returned.
  factory TypeDef.fromTypeRefToken(Scope scope, int typeRefToken) =>
      using((Arena arena) {
        final ptkResolutionScope = arena<mdToken>();
        final szName = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchName = arena<ULONG>();

        final reader = scope.reader;
        final hr = reader.GetTypeRefProps(
            typeRefToken, ptkResolutionScope, szName, MAX_STRING_SIZE, pchName);

        if (SUCCEEDED(hr)) {
          final typeName = szName.toDartString();
          final resolutionScopeToken = ptkResolutionScope.value;

          // Special case for WinRT base type
          if (resolutionScopeToken == 0x00 && typeRefToken == 0x01000000) {
            return TypeDef(scope, 0, 'IInspectable');
          }

          // If it's the same scope, just look it up based on the returned name.
          if (resolutionScopeToken == scope.moduleToken) {
            return scope.findTypeDef(typeName) ?? TypeDef(scope, 0, typeName);
          }

          // Is it a nested type? If so, we find a type in the parent type that
          // matches its name, if one exists (which it presumably should).
          if (resolutionScopeToken & 0xFF000000 == CorTokenType.mdtTypeRef) {
            return _resolveNestedType(
                scope, resolutionScopeToken, typeRefToken, typeName);
          }

          // Is it an AssemblyRef that is not part of .NET? If so, we need to
          // load the scope that contains it. Note that we are currently
          // ignoring:
          //
          // (i) .NET types, since they are intrinsics like System.ValueType.
          // They're also not loadable with getScopeForType, but that's moot;
          //
          // (ii) The Windows.Win32.Interop metadata file, which is shipped as
          // part of the microsoft/win32metadata project. This is fixable if we
          // distribute it with winmd or find another approach to locating it.
          if (resolutionScopeToken & 0xFF000000 ==
              CorTokenType.mdtAssemblyRef) {
            final assemblyRef =
                AssemblyRef.fromToken(scope, resolutionScopeToken);
            if (assemblyRef.name != 'netstandard' && // .NET
                assemblyRef.name != 'mscorlib' && // .NET Framework
                assemblyRef.name != 'Windows.Win32.Interop') {
              final newScope = MetadataStore.getScopeForType(typeName);
              final typeDef = newScope.findTypeDef(typeName);
              if (typeDef == null) {
                throw WinmdException(
                    'Can\'t find type $typeName in the ${newScope.name} scope.');
              }

              return typeDef;
            }
          }

          // It might be a ModuleRef, so we'll just return the type name.
          return TypeDef(scope, 0, typeName);
        } else {
          throw WindowsException(hr);
        }
      });

  /// Instantiate a typedef from a TypeSpec token.
  factory TypeDef.fromTypeSpecToken(Scope scope, int typeSpecToken) =>
      using((Arena arena) {
        final ppvSig = arena<PCCOR_SIGNATURE>();
        final pcbSig = arena<ULONG>();

        final reader = scope.reader;
        final hr = reader.GetTypeSpecFromToken(typeSpecToken, ppvSig, pcbSig);
        final signature = ppvSig.value.asTypedList(pcbSig.value);
        final typeTuple = TypeTuple.fromSignature(signature, scope);

        if (SUCCEEDED(hr)) {
          return TypeDef(
              scope, typeSpecToken, '', 0, 0, typeTuple.typeIdentifier);
        } else {
          throw WindowsException(hr);
        }
      });

  @override
  String toString() => name;

  TypeVisibility get typeVisibility =>
      TypeVisibility.values[_attributes & CorTypeAttr.tdVisibilityMask];

  TypeLayout get typeLayout {
    switch (_attributes & CorTypeAttr.tdLayoutMask) {
      case CorTypeAttr.tdAutoLayout:
        return TypeLayout.auto;
      case CorTypeAttr.tdSequentialLayout:
        return TypeLayout.sequential;
      case CorTypeAttr.tdExplicitLayout:
        return TypeLayout.explicit;
      default:
        throw WinmdException('Attribute missing type layout information');
    }
  }

  /// Returns true if the type is a class.
  bool get isClass =>
      _attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdClass;

  /// Returns trus if the type is an interface.
  bool get isInterface =>
      _attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdInterface;

  /// Returns true if this type may not be directly instantiated.
  bool get isAbstract =>
      _attributes & CorTypeAttr.tdAbstract == CorTypeAttr.tdAbstract;

  /// Returns true if this type may not have derived types.
  bool get isSealed =>
      _attributes & CorTypeAttr.tdSealed == CorTypeAttr.tdSealed;

  /// Returns true if the name of the item may have special significance to
  /// tools other than the CLI.
  bool get isSpecialName =>
      _attributes & CorTypeAttr.tdSpecialName == CorTypeAttr.tdSpecialName;

  /// Returns true if the type is imported.
  bool get isImported =>
      _attributes & CorTypeAttr.tdImport == CorTypeAttr.tdImport;

  /// Returns true if the fields of the type are to be serialized into a data
  /// stream.
  bool get isSerializable =>
      _attributes & CorTypeAttr.tdSerializable == CorTypeAttr.tdSerializable;

  /// Returns true if the type is a Windows Runtime type.
  bool get isWindowsRuntime =>
      _attributes & CorTypeAttr.tdWindowsRuntime ==
      CorTypeAttr.tdWindowsRuntime;

  /// Returns true if the name of the item has special significance to the CLI.
  bool get isRTSpecialName =>
      _attributes & CorTypeAttr.tdRTSpecialName == CorTypeAttr.tdRTSpecialName;

  StringFormat get stringFormat {
    switch (_attributes & CorTypeAttr.tdStringFormatMask) {
      case CorTypeAttr.tdAnsiClass:
        return StringFormat.ansi;
      case CorTypeAttr.tdUnicodeClass:
        return StringFormat.unicode;
      case CorTypeAttr.tdAutoClass:
        return StringFormat.auto;
      case CorTypeAttr.tdCustomFormatClass:
        return StringFormat.custom;
      default:
        throw WinmdException('Attribute missing string format information');
    }
  }

  /// Returns true if the CLI need not initialize the type before a static
  /// method is called.
  bool get isBeforeFieldInit =>
      _attributes & CorTypeAttr.tdBeforeFieldInit ==
      CorTypeAttr.tdBeforeFieldInit;

  /// Returns true if the type is exported, and a type forwarder.
  bool get isForwarder =>
      _attributes & CorTypeAttr.tdForwarder == CorTypeAttr.tdForwarder;

  /// Returns true if the type is a delegate.
  bool get isDelegate => parent?.name == 'System.MulticastDelegate';

  /// Returns true if the type is an enumeration.
  bool get isEnum => parent?.name == 'System.Enum';

  /// Returns true if the type is a union.
  ///
  /// A union is a struct where every field begins at the zeroth offset; it is
  /// sized to the largest field. An example is the Win32 `INPUT` union, which
  /// can contain a keyboard, mouse or other hardware input type.
  bool get isUnion =>
      classLayout.fieldOffsets != null &&
      classLayout.fieldOffsets!.every((fo) => fo.offset == 0);

  /// Retrieve class layout information.
  ///
  /// This includes the packing alignment, the minimum class size, and the field
  /// layout (e.g. for sparsely or overlapping structs).
  ClassLayout get classLayout => ClassLayout(scope, token);

  /// Converts an individual interface into a type.
  TypeDef processInterfaceToken(int token) => using((Arena arena) {
        final ptkClass = arena<mdTypeDef>();
        final ptkIface = arena<mdToken>();

        final hr = reader.GetInterfaceImplProps(token, ptkClass, ptkIface);
        if (SUCCEEDED(hr)) {
          final interfaceToken = ptkIface.value;
          return TypeDef.fromToken(scope, interfaceToken);
        } else {
          throw WindowsException(hr);
        }
      });

  /// Enumerate all interfaces that this type implements.
  List<TypeDef> get interfaces {
    if (_interfaces.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rImpls = arena<mdInterfaceImpl>();
        final pcImpls = arena<ULONG>();

        var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
        while (hr == S_OK) {
          final interfaceToken = rImpls.value;

          _interfaces.add(processInterfaceToken(interfaceToken));
          hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
        }
        reader.CloseEnum(phEnum.value);
      });
    }

    return _interfaces;
  }

  /// Enumerate all fields contained within this type.
  List<Field> get fields {
    if (_fields.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rgFields = arena<mdFieldDef>();
        final pcTokens = arena<ULONG>();

        var hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
        while (hr == S_OK) {
          final fieldToken = rgFields.value;

          _fields.add(Field.fromToken(scope, fieldToken));
          hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
        }
        reader.CloseEnum(phEnum.value);
      });
    }

    return _fields;
  }

  /// Enumerate all methods contained within this type.
  List<Method> get methods {
    if (_methods.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rgMethods = arena<mdMethodDef>();
        final pcTokens = arena<ULONG>();

        var hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
        while (hr == S_OK) {
          final methodToken = rgMethods.value;

          _methods.add(Method.fromToken(scope, methodToken));
          hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
        }
        reader.CloseEnum(phEnum.value);
      });
    }

    return _methods;
  }

  /// Enumerate all properties contained within this type.
  List<Property> get properties {
    if (_properties.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rgProperties = arena<mdProperty>();
        final pcProperties = arena<ULONG>();

        var hr =
            reader.EnumProperties(phEnum, token, rgProperties, 1, pcProperties);
        while (hr == S_OK) {
          final propertyToken = rgProperties.value;

          _properties.add(Property.fromToken(scope, propertyToken));
          hr = reader.EnumMethods(phEnum, token, rgProperties, 1, pcProperties);
        }
        reader.CloseEnum(phEnum.value);
      });
    }

    return _properties;
  }

  /// Enumerate all events contained within this type.
  List<Event> get events {
    if (_events.isEmpty) {
      using((Arena arena) {
        final phEnum = arena<HCORENUM>();
        final rgEvents = arena<mdEvent>();
        final pcEvents = arena<ULONG>();

        var hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
        while (hr == S_OK) {
          final eventToken = rgEvents.value;

          _events.add(Event.fromToken(scope, eventToken));
          hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
        }
        reader.CloseEnum(phEnum.value);
      });
    }

    return _events;
  }

  /// Get a field matching the name, if one exists.
  ///
  /// Returns null if the field is not found.
  Field? findField(String fieldName) => using((Arena arena) {
        final szName = fieldName.toNativeUtf16(allocator: arena);
        final ptkFieldDef = arena<mdFieldDef>();

        final hr = reader.FindField(token, szName, nullptr, 0, ptkFieldDef);
        if (SUCCEEDED(hr)) {
          return Field.fromToken(scope, ptkFieldDef.value);
        } else if (hr == CLDB_E_RECORD_NOTFOUND) {
          return null;
        } else {
          throw COMException(hr);
        }
      });

  /// Get a method matching the name, if one exists.
  ///
  /// Returns null if the method is not found.
  Method? findMethod(String methodName) => using((Arena arena) {
        final szName = methodName.toNativeUtf16(allocator: arena);
        final pmb = arena<mdMethodDef>();

        final hr = reader.FindMethod(token, szName, nullptr, 0, pmb);
        if (SUCCEEDED(hr)) {
          return Method.fromToken(scope, pmb.value);
        } else if (hr == CLDB_E_RECORD_NOTFOUND) {
          return null;
        } else {
          throw COMException(hr);
        }
      });

  /// Gets the type referencing this type's superclass (the class this type
  /// inherits from).
  ///
  /// For nested types, the [enclosingClass] property may be of interest, which
  /// is the type in which the current type is embedded.
  TypeDef? get parent =>
      token == 0 ? null : TypeDef.fromToken(scope, baseTypeToken);

  /// Returns true if the type is nested in an enclosing class (e.g. a struct
  /// within a struct).
  bool get isNested =>
      typeVisibility == TypeVisibility.nestedPublic ||
      typeVisibility == TypeVisibility.nestedPrivate ||
      typeVisibility == TypeVisibility.nestedAssembly ||
      typeVisibility == TypeVisibility.nestedFamily ||
      typeVisibility == TypeVisibility.nestedFamilyAndAssembly ||
      typeVisibility == TypeVisibility.nestedFamilyOrAssembly;

  /// Returns the type that encloses the current type (if the type is nested).
  ///
  /// If the type is not nested, returns null. Use the [isNested] property to
  /// determine whether the type is nested. Alternatively, use the
  /// [typeVisibility] property to determine the visibility of the type,
  /// including whether it is nested.
  late final enclosingClass = _enclosingClassToken != null
      ? TypeDef.fromToken(scope, _enclosingClassToken!)
      : null;

  /// Gets a named custom attribute that is stored as a GUID.
  String? getCustomGUIDAttribute(String guidAttributeName) =>
      using((Arena arena) {
        final ptrAttributeName =
            guidAttributeName.toNativeUtf16(allocator: arena);
        final ppData = arena<Pointer<BYTE>>();
        final pcbData = arena<ULONG>();

        final hr = reader.GetCustomAttributeByName(
            token, ptrAttributeName, ppData, pcbData);
        if (SUCCEEDED(hr)) {
          final blob = ppData.value;
          if (pcbData.value > 0) {
            final returnValue = blob.elementAt(2).cast<GUID>();
            return returnValue.ref.toString();
          }
        }

        // If this fails or no data is returned, return a null value.
        return null;
      });

  /// Get the GUID for this type.
  ///
  /// Returns null if a GUID couldn't be found.
  String? get guid {
    var guid =
        getCustomGUIDAttribute('Windows.Foundation.Metadata.GuidAttribute');
    guid ??= getCustomGUIDAttribute('Windows.Win32.Interop.GuidAttribute');

    return guid;
  }
}
