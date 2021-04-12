// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'classlayout.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'event.dart';
import 'field.dart';
import 'metadatastore.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'mixins/genericparams_mixin.dart';
import 'property.dart';
import 'systemtokens.dart';
import 'type_aliases.dart';
import 'typeidentifier.dart';
import 'utils.dart';

enum TypeVisibility {
  notPublic,
  public,
  nestedPublic,
  nestedPrivate,
  nestedFamily,
  nestedAssembly,
  nestedFamilyAndAssembly,
  nestedFamilyOrAssembly
}

enum TypeLayout { auto, sequential, explicit }

enum StringFormat { ansi, unicode, auto, custom }

/// Represents a TypeDef in the Windows Metadata file
class TypeDef extends TokenObject
    with CustomAttributesMixin, GenericParamsMixin {
  final String typeName;
  final int _attributes;
  final int baseTypeToken;
  final TypeIdentifier? typeSpec;

  final _interfaces = <TypeDef>[];
  final _fields = <Field>[];
  final _methods = <Method>[];
  final _properties = <Property>[];
  final _events = <Event>[];

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

  /// Is the type a class?
  bool get isClass =>
      _attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdClass;

  /// Is the type an interface?
  bool get isInterface =>
      _attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdInterface;

  bool get isAbstract =>
      _attributes & CorTypeAttr.tdAbstract == CorTypeAttr.tdAbstract;

  bool get isSealed =>
      _attributes & CorTypeAttr.tdSealed == CorTypeAttr.tdSealed;

  bool get isSpecialName =>
      _attributes & CorTypeAttr.tdSpecialName == CorTypeAttr.tdSpecialName;

  bool get isImported =>
      _attributes & CorTypeAttr.tdImport == CorTypeAttr.tdImport;

  bool get isSerializable =>
      _attributes & CorTypeAttr.tdSerializable == CorTypeAttr.tdSerializable;

  bool get isWindowsRuntime =>
      _attributes & CorTypeAttr.tdWindowsRuntime ==
      CorTypeAttr.tdWindowsRuntime;

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

  bool get isBeforeFieldInit =>
      _attributes & CorTypeAttr.tdBeforeFieldInit ==
      CorTypeAttr.tdBeforeFieldInit;

  bool get isForwarder =>
      _attributes & CorTypeAttr.tdForwarder == CorTypeAttr.tdForwarder;

  /// Is the type a delegate?
  bool get isDelegate => parent?.typeName == 'System.MulticastDelegate';

  /// Retrieve class layout information.
  ///
  /// This includes the packing alignment, the minimum class size, and the field
  /// layout (e.g. for sparsely or overlapping structs).
  ClassLayout get classLayout => ClassLayout(reader, token);

  /// Is the type a non-Windows Runtime type, such as System.Object or
  /// IInspectable?
  ///
  /// More information at:
  /// https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files#type-system-encoding
  bool get isSystemType => systemTokens.containsValue(typeName);

  /// Create a typedef.
  ///
  /// Typically, typedefs should be obtained from a [WinmdScope] object rather
  /// than being created directly.
  TypeDef(IMetaDataImport2 reader,
      [int token = 0,
      this.typeName = '',
      this._attributes = 0,
      this.baseTypeToken = 0,
      this.typeSpec])
      : super(reader, token);

  /// Creates a typedef object from its given token.
  factory TypeDef.fromToken(IMetaDataImport2 reader, int token) {
    switch (token & 0xFF000000) {
      case CorTokenType.mdtTypeRef:
        return TypeDef.fromTypeRefToken(reader, token);
      case CorTokenType.mdtTypeDef:
        return TypeDef.fromTypeDefToken(reader, token);
      case CorTokenType.mdtTypeSpec:
        return TypeDef.fromTypeSpecToken(reader, token);
      default:
        throw WinmdException('Unrecognized token ${token.toHexString(32)}');
    }
  }

  /// Instantiate a typedef from a TypeDef token.
  factory TypeDef.fromTypeDefToken(IMetaDataImport2 reader, int typeDefToken) {
    final szTypeDef = stralloc(MAX_STRING_SIZE);
    final pchTypeDef = calloc<ULONG>();
    final pdwTypeDefFlags = calloc<DWORD>();
    final ptkExtends = calloc<mdToken>();

    try {
      final hr = reader.GetTypeDefProps(typeDefToken, szTypeDef,
          MAX_STRING_SIZE, pchTypeDef, pdwTypeDefFlags, ptkExtends);

      if (SUCCEEDED(hr)) {
        return TypeDef(reader, typeDefToken, szTypeDef.toDartString(),
            pdwTypeDefFlags.value, ptkExtends.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pchTypeDef);
      free(pdwTypeDefFlags);
      free(ptkExtends);
      free(szTypeDef);
    }
  }

  /// Instantiate a typedef from a TypeRef token.
  ///
  /// Unless the TypeRef token is `IInspectable`, the COM parent interface for
  /// Windows Runtime classes, the TypeRef is used to obtain the host scope
  /// metadata file, from which the TypeDef can be found and returned.
  factory TypeDef.fromTypeRefToken(IMetaDataImport2 reader, int typeRefToken) {
    final ptkResolutionScope = calloc<mdToken>();
    final szName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
      final hr = reader.GetTypeRefProps(
          typeRefToken, ptkResolutionScope, szName, MAX_STRING_SIZE, pchName);

      if (SUCCEEDED(hr)) {
        final typeName = szName.toDartString();
        try {
          final newScope = MetadataStore.getScopeForType(typeName);
          return newScope.findTypeDef(typeName)!;
        } catch (exception) {
          // a token like IInspectable is out of reach of GetTypeRefProps, since it is
          // a plain COM object. These objects are returned as system types.
          if (systemTokens.containsKey(typeRefToken)) {
            return TypeDef(reader, 0, systemTokens[typeRefToken]!);
          }
          if (systemTokens.containsValue(typeName)) {
            return TypeDef(reader, 0, typeName);
          }
          // Perhaps we can find it in the current scope after all (for example,
          // it's a nested class)
          try {
            final typedef = TypeDef.fromTypeDefToken(reader, typeRefToken);
            return typedef;
          } catch (exception) {
            throw WinmdException(
                'Unable to find scope for $typeName [${typeRefToken.toHexString(32)}]...');
          }
        }
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkResolutionScope);
      free(szName);
      free(pchName);
    }
  }

  /// Instantiate a typedef from a TypeSpec token.
  factory TypeDef.fromTypeSpecToken(
      IMetaDataImport2 reader, int typeSpecToken) {
    final ppvSig = calloc<PCCOR_SIGNATURE>();
    final pcbSig = calloc<ULONG>();

    try {
      final hr =
          reader.GetTypeSpecFromToken(typeSpecToken, ppvSig.cast(), pcbSig);
      final signature = ppvSig.value.asTypedList(pcbSig.value);
      final typeTuple = parseTypeFromSignature(signature, reader);

      if (SUCCEEDED(hr)) {
        return TypeDef(
            reader, typeSpecToken, '', 0, 0, typeTuple.typeIdentifier);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ppvSig);
      free(pcbSig);
    }
  }

  /// Converts an individual interface into a type.
  TypeDef processInterfaceToken(int token) {
    final ptkClass = calloc<mdTypeDef>();
    final ptkIface = calloc<mdToken>();

    try {
      final hr = reader.GetInterfaceImplProps(token, ptkClass, ptkIface);
      if (SUCCEEDED(hr)) {
        final interfaceToken = ptkIface.value;
        return TypeDef.fromToken(reader, interfaceToken);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkClass);
      free(ptkIface);
    }
  }

  /// Enumerate all interfaces that this type implements.
  List<TypeDef> get interfaces {
    if (_interfaces.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rImpls = calloc<mdInterfaceImpl>();
      final pcImpls = calloc<ULONG>();

      try {
        var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
        while (hr == S_OK) {
          final token = rImpls.value;

          _interfaces.add(processInterfaceToken(token));
          hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rImpls);
        free(pcImpls);
      }
    }
    return _interfaces;
  }

  /// Enumerate all fields contained within this type.
  List<Field> get fields {
    if (_fields.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgFields = calloc<mdFieldDef>();
      final pcTokens = calloc<ULONG>();

      try {
        var hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
        while (hr == S_OK) {
          final token = rgFields.value;

          _fields.add(Field.fromToken(reader, token));
          hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgFields);
        free(pcTokens);
      }
    }
    return _fields;
  }

  /// Enumerate all methods contained within this type.
  List<Method> get methods {
    if (_methods.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgMethods = calloc<mdMethodDef>();
      final pcTokens = calloc<ULONG>();

      try {
        var hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
        while (hr == S_OK) {
          final token = rgMethods.value;

          _methods.add(Method.fromToken(reader, token));
          hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgMethods);
        free(pcTokens);
      }
    }
    return _methods;
  }

  /// Enumerate all properties contained within this type.
  List<Property> get properties {
    if (_properties.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgProperties = calloc<mdProperty>();
      final pcProperties = calloc<ULONG>();

      try {
        var hr =
            reader.EnumProperties(phEnum, token, rgProperties, 1, pcProperties);
        while (hr == S_OK) {
          final token = rgProperties.value;

          _properties.add(Property.fromToken(reader, token));
          hr = reader.EnumMethods(phEnum, token, rgProperties, 1, pcProperties);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgProperties);
        free(pcProperties);
      }
    }
    return _properties;
  }

  /// Enumerate all events contained within this type.
  List<Event> get events {
    if (_events.isEmpty) {
      final phEnum = calloc<HCORENUM>();
      final rgEvents = calloc<mdEvent>();
      final pcEvents = calloc<ULONG>();

      try {
        var hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
        while (hr == S_OK) {
          final token = rgEvents.value;

          _events.add(Event.fromToken(reader, token));
          hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
        }
      } finally {
        reader.CloseEnum(phEnum.value);
        free(phEnum);
        free(rgEvents);
        free(pcEvents);
      }
    }
    return _events;
  }

  /// Get a field matching the name, if one exists.
  ///
  /// Returns null if the field is not found.
  Field? findField(String fieldName) {
    try {
      return fields.firstWhere((field) => field.name == fieldName);
    } on StateError {
      return null;
    }
  }

  /// Get a method matching the name, if one exists.
  ///
  /// Returns null if the method is not found.
  Method? findMethod(String methodName) {
    final szName = methodName.toNativeUtf16();
    final pmb = calloc<mdMethodDef>();

    try {
      final hr = reader.FindMethod(token, szName, nullptr, 0, pmb);
      if (SUCCEEDED(hr)) {
        return Method.fromToken(reader, pmb.value);
      } else if (hr == CLDB_E_RECORD_NOTFOUND) {
        return null;
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pmb);
    }
  }

  /// Gets the type referencing this type's superclass.
  TypeDef? get parent =>
      token == 0 ? null : TypeDef.fromToken(reader, baseTypeToken);

  String? getCustomGUIDAttribute(String guidAttributeName) {
    final ptrAttributeName = guidAttributeName.toNativeUtf16();
    final ppData = calloc<Pointer<BYTE>>();
    final pcbData = calloc<ULONG>();

    try {
      final hr = reader.GetCustomAttributeByName(
          token, ptrAttributeName, ppData.cast(), pcbData);
      if (SUCCEEDED(hr)) {
        final blob = ppData.value;
        if (pcbData.value > 0) {
          final returnValue = blob.elementAt(2).cast<GUID>();
          return returnValue.ref.toString();
        }
      }
    } finally {
      free(ptrAttributeName);
      free(ppData);
      free(pcbData);
    }
  }

  /// Get the GUID for this type.
  ///
  /// Returns null if a GUID couldn't be found.
  String? get guid {
    var guid =
        getCustomGUIDAttribute('Windows.Foundation.Metadata.GuidAttribute');
    guid ??= getCustomGUIDAttribute('Windows.Win32.Interop.GuidAttribute');

    return guid;
  }

  @override
  String toString() => 'TypeDef: $typeName';
}
