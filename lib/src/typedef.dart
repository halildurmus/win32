// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'classlayout.dart';
import 'com/constants.dart';
import 'event.dart';
import 'field.dart';
import 'method.dart';
import 'mixins/customattributes_mixin.dart';
import 'mixins/genericparams_mixin.dart';
import 'property.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typeidentifier.dart';
import 'utils/exception.dart';
import 'utils/typetuple.dart';

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

enum TypeLayout {
  /// Specifies that the fields of this type are laid out automatically.
  auto,

  /// Specifies that the fields of this type are laid out sequentially.
  sequential,

  /// Specifies that field layout is supplied explicitly.
  explicit
}

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
    with CustomAttributesMixin, GenericParamsMixin {
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
  factory TypeDef.fromTypeDefToken(Scope scope, int typeDefToken) {
    final szTypeDef = wsalloc(MAX_STRING_SIZE);
    final pchTypeDef = calloc<ULONG>();
    final pdwTypeDefFlags = calloc<DWORD>();
    final ptkExtends = calloc<mdToken>();

    try {
      final reader = scope.reader;
      final hr = reader.GetTypeDefProps(typeDefToken, szTypeDef,
          MAX_STRING_SIZE, pchTypeDef, pdwTypeDefFlags, ptkExtends);

      if (SUCCEEDED(hr)) {
        return TypeDef(scope, typeDefToken, szTypeDef.toDartString(),
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
  factory TypeDef.fromTypeRefToken(Scope scope, int typeRefToken) {
    final ptkResolutionScope = calloc<mdToken>();
    final szName = wsalloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
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
        if (scope.moduleToken == resolutionScopeToken) {
          return scope.findTypeDef(typeName)!;
        }

        // Otherwise the resolution scope is an AssemblyRef or ModuleRef token.
        // OK, so we'll just return the type name.
        return TypeDef(scope, 0, typeName);
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
  factory TypeDef.fromTypeSpecToken(Scope scope, int typeSpecToken) {
    final ppvSig = calloc<PCCOR_SIGNATURE>();
    final pcbSig = calloc<ULONG>();

    try {
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
    } finally {
      free(ppvSig);
      free(pcbSig);
    }
  }

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

  /// Retrieve class layout information.
  ///
  /// This includes the packing alignment, the minimum class size, and the field
  /// layout (e.g. for sparsely or overlapping structs).
  ClassLayout get classLayout => ClassLayout(scope, token);

  /// Converts an individual interface into a type.
  TypeDef processInterfaceToken(int token) {
    final ptkClass = calloc<mdTypeDef>();
    final ptkIface = calloc<mdToken>();

    try {
      final hr = reader.GetInterfaceImplProps(token, ptkClass, ptkIface);
      if (SUCCEEDED(hr)) {
        final interfaceToken = ptkIface.value;
        return TypeDef.fromToken(scope, interfaceToken);
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
          final interfaceToken = rImpls.value;

          _interfaces.add(processInterfaceToken(interfaceToken));
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
          final fieldToken = rgFields.value;

          _fields.add(Field.fromToken(scope, fieldToken));
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
          final methodToken = rgMethods.value;

          _methods.add(Method.fromToken(scope, methodToken));
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
          final propertyToken = rgProperties.value;

          _properties.add(Property.fromToken(scope, propertyToken));
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
          final eventToken = rgEvents.value;

          _events.add(Event.fromToken(scope, eventToken));
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
        return Method.fromToken(scope, pmb.value);
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
      token == 0 ? null : TypeDef.fromToken(scope, baseTypeToken);

  String? getCustomGUIDAttribute(String guidAttributeName) {
    final ptrAttributeName = guidAttributeName.toNativeUtf16();
    final ppData = calloc<Pointer<BYTE>>();
    final pcbData = calloc<ULONG>();

    try {
      final hr = reader.GetCustomAttributeByName(
          token, ptrAttributeName, ppData, pcbData);
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
}
