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
import 'typeidentifier.dart';
import 'utils.dart';

enum TypeVisibility {
  NotPublic,
  Public,
  NestedPublic,
  NestedPrivate,
  NestedFamily,
  NestedAssembly,
  NestedFamilyAndAssembly,
  NestedFamilyOrAssembly
}

enum TypeLayout { Auto, Sequential, Explicit }

enum StringFormat { Ansi, Unicode, Auto, Custom }

/// Represents a TypeDef in the Windows Metadata file
class TypeDef extends TokenObject
    with CustomAttributesMixin, GenericParamsMixin {
  final String typeName;
  final int attributes;
  final int baseTypeToken;
  final TypeIdentifier? typeSpec;

  TypeVisibility get typeVisibility =>
      TypeVisibility.values[attributes & CorTypeAttr.tdVisibilityMask];

  TypeLayout get typeLayout {
    switch (attributes & CorTypeAttr.tdLayoutMask) {
      case CorTypeAttr.tdAutoLayout:
        return TypeLayout.Auto;
      case CorTypeAttr.tdSequentialLayout:
        return TypeLayout.Sequential;
      case CorTypeAttr.tdExplicitLayout:
        return TypeLayout.Explicit;
      default:
        throw WinmdException('Attribute missing type layout information');
    }
  }

  /// Is the type a class?
  bool get isClass =>
      attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdClass;

  /// Is the type an interface?
  bool get isInterface =>
      attributes & CorTypeAttr.tdClassSemanticsMask == CorTypeAttr.tdInterface;

  bool get isAbstract =>
      attributes & CorTypeAttr.tdAbstract == CorTypeAttr.tdAbstract;

  bool get isSealed =>
      attributes & CorTypeAttr.tdSealed == CorTypeAttr.tdSealed;

  bool get isSpecialName =>
      attributes & CorTypeAttr.tdSpecialName == CorTypeAttr.tdSpecialName;

  bool get isImported =>
      attributes & CorTypeAttr.tdImport == CorTypeAttr.tdImport;

  bool get isSerializable =>
      attributes & CorTypeAttr.tdSerializable == CorTypeAttr.tdSerializable;

  bool get isWindowsRuntime =>
      attributes & CorTypeAttr.tdWindowsRuntime == CorTypeAttr.tdWindowsRuntime;

  bool get isRTSpecialName =>
      attributes & CorTypeAttr.tdRTSpecialName == CorTypeAttr.tdRTSpecialName;

  StringFormat get stringFormat {
    switch (attributes & CorTypeAttr.tdStringFormatMask) {
      case CorTypeAttr.tdAnsiClass:
        return StringFormat.Ansi;
      case CorTypeAttr.tdUnicodeClass:
        return StringFormat.Unicode;
      case CorTypeAttr.tdAutoClass:
        return StringFormat.Auto;
      case CorTypeAttr.tdCustomFormatClass:
        return StringFormat.Custom;
      default:
        throw WinmdException('Attribute missing string format information');
    }
  }

  bool get isBeforeFieldInit =>
      attributes & CorTypeAttr.tdBeforeFieldInit ==
      CorTypeAttr.tdBeforeFieldInit;

  bool get isForwarder =>
      attributes & CorTypeAttr.tdForwarder == CorTypeAttr.tdForwarder;

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
  const TypeDef(IMetaDataImport2 reader,
      [int token = 0,
      this.typeName = '',
      this.attributes = 0,
      this.baseTypeToken = 0,
      this.typeSpec])
      : super(reader, token);

  /// Instantiate a typedef from a token.
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
    final nRead = calloc<Uint32>();
    final tdFlags = calloc<Uint32>();
    final baseClassToken = calloc<Uint32>();
    final typeName = calloc<Uint16>(MAX_STRING_SIZE).cast<Utf16>();

    try {
      final hr = reader.GetTypeDefProps(typeDefToken, typeName, MAX_STRING_SIZE,
          nRead, tdFlags, baseClassToken);

      if (SUCCEEDED(hr)) {
        return TypeDef(reader, typeDefToken, typeName.toDartString(),
            tdFlags.value, baseClassToken.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(nRead);
      calloc.free(tdFlags);
      calloc.free(baseClassToken);
      calloc.free(typeName);
    }
  }

  /// Instantiate a typedef from a TypeRef token.
  ///
  /// Unless the TypeRef token is `IInspectable`, the COM parent interface for
  /// Windows Runtime classes, the TypeRef is used to obtain the host scope
  /// metadata file, from which the TypeDef can be found and returned.
  factory TypeDef.fromTypeRefToken(IMetaDataImport2 reader, int typeRefToken) {
    final ptkResolutionScope = calloc<Uint32>();
    final szName = calloc<Uint16>(MAX_STRING_SIZE).cast<Utf16>();
    final pchName = calloc<Uint32>();

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
      calloc.free(ptkResolutionScope);
      calloc.free(szName);
      calloc.free(pchName);
    }
  }

  /// Instantiate a typedef from a TypeSpec token.
  factory TypeDef.fromTypeSpecToken(
      IMetaDataImport2 reader, int typeSpecToken) {
    final ppvSig = calloc<Pointer<Uint8>>();
    final pcbSig = calloc<Uint32>();

    try {
      final hr =
          reader.GetTypeSpecFromToken(typeSpecToken, ppvSig.cast(), pcbSig);
      final signature = ppvSig.value.asTypedList(pcbSig.value);
      final typeTuple = parseTypeFromSignature(signature, reader);
      // print(
      //     '${typeSpecToken.toHexString(32)}: ${signature.map((m) => m.toHexString(8))}');

      if (SUCCEEDED(hr)) {
        return TypeDef(
            reader, typeSpecToken, '', 0, 0, typeTuple.typeIdentifier);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(ppvSig);
      calloc.free(pcbSig);
    }
  }

  /// Converts an individual interface into a type.
  TypeDef processInterfaceToken(int token) {
    final pClass = calloc<Uint32>();
    final ptkIface = calloc<Uint32>();

    try {
      final hr = reader.GetInterfaceImplProps(token, pClass, ptkIface);
      if (SUCCEEDED(hr)) {
        final interfaceToken = ptkIface.value;
        return TypeDef.fromToken(reader, interfaceToken);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pClass);
      calloc.free(ptkIface);
    }
  }

  /// Enumerate all interfaces that this type implements.
  List<TypeDef> get interfaces {
    final interfaces = <TypeDef>[];

    final phEnum = calloc<IntPtr>();
    final rImpls = calloc<Uint32>();
    final pcImpls = calloc<Uint32>();

    try {
      var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      while (hr == S_OK) {
        final token = rImpls.value;

        interfaces.add(processInterfaceToken(token));
        hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      }
      return interfaces;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rImpls);
      calloc.free(pcImpls);
    }
  }

  /// Enumerate all fields contained within this type.
  List<Field> get fields {
    final fields = <Field>[];

    final phEnum = calloc<IntPtr>();
    final rgFields = calloc<Uint32>();
    final pcTokens = calloc<Uint32>();

    try {
      var hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
      while (hr == S_OK) {
        final token = rgFields.value;

        fields.add(Field.fromToken(reader, token));
        hr = reader.EnumFields(phEnum, token, rgFields, 1, pcTokens);
      }
      return fields;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgFields);
      calloc.free(pcTokens);
    }
  }

  /// Enumerate all methods contained within this type.
  List<Method> get methods {
    final methods = <Method>[];

    final phEnum = calloc<IntPtr>();
    final rgMethods = calloc<Uint32>();
    final pcTokens = calloc<Uint32>();

    try {
      var hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
      while (hr == S_OK) {
        final token = rgMethods.value;

        methods.add(Method.fromToken(reader, token));
        hr = reader.EnumMethods(phEnum, token, rgMethods, 1, pcTokens);
      }
      return methods;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgMethods);
      calloc.free(pcTokens);
    }
  }

  /// Enumerate all properties contained within this type.
  List<Property> get properties {
    final properties = <Property>[];

    final phEnum = calloc<IntPtr>();
    final rgProperties = calloc<Uint32>();
    final pcProperties = calloc<Uint32>();

    try {
      var hr =
          reader.EnumProperties(phEnum, token, rgProperties, 1, pcProperties);
      while (hr == S_OK) {
        final token = rgProperties.value;

        properties.add(Property.fromToken(reader, token));
        hr = reader.EnumMethods(phEnum, token, rgProperties, 1, pcProperties);
      }
      return properties;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgProperties);
      calloc.free(pcProperties);
    }
  }

  /// Enumerate all events contained within this type.
  List<Event> get events {
    final events = <Event>[];

    final phEnum = calloc<IntPtr>();
    final rgEvents = calloc<Uint32>();
    final pcEvents = calloc<Uint32>();

    try {
      var hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
      while (hr == S_OK) {
        final token = rgEvents.value;

        events.add(Event.fromToken(reader, token));
        hr = reader.EnumEvents(phEnum, token, rgEvents, 1, pcEvents);
      }
      return events;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rgEvents);
      calloc.free(pcEvents);
    }
  }

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
    final pmb = calloc<Uint32>();

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
      calloc.free(szName);
      calloc.free(pmb);
    }
  }

  /// Gets the type referencing this type's superclass.
  TypeDef? get parent =>
      token == 0 ? null : TypeDef.fromToken(reader, baseTypeToken);

  String? getCustomGUIDAttribute(String guidAttributeName) {
    final ptrAttributeName = guidAttributeName.toNativeUtf16();
    final ppData = calloc<IntPtr>();
    final pcbData = calloc<Uint32>();

    try {
      final hr = reader.GetCustomAttributeByName(
          token, ptrAttributeName, ppData, pcbData);
      if (SUCCEEDED(hr)) {
        final blob = Pointer<Uint8>.fromAddress(ppData.value);
        if (pcbData.value > 0) {
          final returnValue = blob.elementAt(2).cast<GUID>();
          return returnValue.ref.toString();
        }
      }
    } finally {
      calloc.free(ptrAttributeName);
      calloc.free(ppData);
      calloc.free(pcbData);
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
