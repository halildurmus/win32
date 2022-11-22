// Useful utilities

import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;
import 'package:winmd/winmd.dart';

import '../shared/exclusions.dart';
import '../shared/false_properties.dart';
import 'safenames.dart';
import 'type.dart';

const falseAnsiEndings = <String>[
  // These are structs that appear in the Win32 metadata that end in 'A' but
  // are not ANSI. In the absence of a better way to determine ANSI attributes
  // (https://github.com/microsoft/win32metadata/issues/711), we resort to a
  // manual list.
  'DATA', 'SCHEMA', 'AREA', 'ANTENNA', 'MEDIA', 'M128A', 'CIECHROMA', 'PARA',
  'ALPHA', 'BUFFER_WMA', 'CRITERIA', 'UIDNA', 'YCbCrA', 'RGBA',
  'PSP_FILE_CALLBACK_A',
];

/// Returns true if a [TypeDef] name ends with 'A' but is _not_ ANSI.
bool typePretendsToBeAnsi(String typeName) {
  for (final word in falseAnsiEndings) {
    if (typeName.endsWith(word)) {
      return true;
    }
  }

  // There are a number of types in this namespace that end with 'A' but are not
  // ANSI, so we treat this as a one-off exception.
  if (typeName.startsWith('Windows.Win32.System.Wmi.MI_')) {
    return true;
  }

  return false;
}

/// Returns true if a [TypeDef] struct is ANSI.
///
/// This is used to avoid projecting ANSI types in favor of Unicode ones.
bool typedefIsAnsi(TypeDef typeDef) =>
    typeDef.name.endsWith('A') && !typePretendsToBeAnsi(typeDef.name);

/// Strip the Unicode / ANSI suffix from the name. For example, `MessageBoxW`
/// should become `MessageBox`. Heuristic approach.
String stripAnsiUnicodeSuffix(String typeName) {
  if (typeName.startsWith('Pointer<')) {
    final wrappedType = stripPointer(typeName);
    return 'Pointer<${stripAnsiUnicodeSuffix(wrappedType)}>';
  }

  // Frustratingly, Windows.Win32.System.Wmi.MI_* types are the exception where
  // 'A' suffix does not seem to denote ASCII.
  if (typePretendsToBeAnsi(typeName) || typeName.startsWith('MI_')) {
    return typeName;
  }

  if (typeName.endsWith('W') || typeName.endsWith('A')) {
    return typeName.substring(0, typeName.length - 1);
  }
  return typeName;
}

/// Return the final component of a fully qualified name (e.g.
/// `Windows.Win32.UI.Controls.TASKDIALOGCONFIG` becomes `TASKDIALOGCONFIG`).
String lastComponent(String fullyQualifiedType) =>
    fullyQualifiedType.split('.').last;

/// Convert a nested type to a guaranteed-unique name.
String mangleName(TypeDef typeDef) {
  final name = lastComponent(typeDef.name);
  if (!typeDef.isNested) {
    return '_$name';
  }
  return '${mangleName(typeDef.enclosingClass!)}_$name';
}

/// Convert a *typeProjection into a typeProjection
TypeProjection dereference(TypeProjection pointer) {
  if (pointer.typeIdentifier.typeArg != null) {
    return TypeProjection(pointer.typeIdentifier.typeArg!);
  } else {
    throw Exception('Type $pointer cannot be dereferenced.');
  }
}

String stripPointer(String typeName) =>
    typeName.substring(8, typeName.length - 1); // Pointer<X> => X

/// Take an input string and turn it into a multi-line doc comment.
String wrapCommentText(String inputText, [int wrapLength = 76]) {
  if (inputText.isEmpty) return '';

  final words = inputText.split(' ');
  final textLine = StringBuffer('///');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine
        ..clear()
        ..write('/// $word');
    } else {
      textLine.write(' $word');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

/// Take a fully-qualified interface name (e.g.
/// `Windows.Win32.UI.Shell.IShellLinkW`) and return the corresponding class
/// name (e.g. `Windows.Win32.UI.Shell.ShellLink`).
String classNameForInterfaceName(String interfaceName) {
  final interfaceNameAsList = interfaceName.split('.');

  // Strip off the 'I' from the last component
  final fullyQualifiedClassName =
      (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
            ..add(interfaceNameAsList.last.substring(1)))
          .join('.');

  // If class has a 'W' suffix, erase it.
  return stripAnsiUnicodeSuffix(fullyQualifiedClassName);
}

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

/// Converts [targetPath] to an equivalent relative path from the [start] directory.
String relativePath(String targetPath, {required String start}) =>
    path.relative(targetPath, from: start).replaceAll(r'\', '/');

String importForWin32Type(TypeIdentifier identifier) {
  if (excludedWin32Structs.contains(identifier.name)) {
    return 'specialTypes.dart';
  }

  final folder = folderFromNamespace(identifier.name);
  if (identifier.type != null && identifier.type!.isDelegate) {
    return '$folder/callbacks.g.dart';
  } else if (identifier.type!.isInterface) {
    final fileName = stripAnsiUnicodeSuffix(lastComponent(identifier.name));
    return '$folder/$fileName.dart';
  } else {
    return '$folder/structs.g.dart';
  }
}

/// Converts a namespace (e.g. `Windows.Win32.System.Console`) and returns the
/// matching folder (e.g. `system`).
String folderFromNamespace(String namespace) {
  final segments = namespace.split('.').skip(2).toList()..removeLast();
  return segments.join('/').toLowerCase();
}

/// Converts a fully-qualified type (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the matching folder
/// (e.g. `storage/pickers`).
String folderFromWinRTType(String fullyQualifiedType) {
  final segments = fullyQualifiedType.split('.').skip(1).toList()..removeLast();
  return segments.join('/').toLowerCase();
}

/// Converts a fully-qualified type (e.g.
/// `Windows.Storage.Pickers.FileOpenPicker`) and returns the matching file path
/// (e.g. `storage/pickers/fileopenpicker.dart`).
String filePathFromWinRTType(String fullyQualifiedType) {
  final fileName =
      stripGenerics(lastComponent(fullyQualifiedType)).toLowerCase();
  return '${folderFromWinRTType(stripGenerics(fullyQualifiedType))}/$fileName.dart';
}

/// Return the parent namespace of a fully-qualified type
/// (e.g. `Windows.Gaming.Input.Gamepad` becomes `Windows.Gaming.Input`).
String parentNamespace(String fullyQualifiedType) =>
    (fullyQualifiedType.split('.')..removeLast()).join('.');

/// Marks an identifier as private to the win32 library.
String private(String identifier) => '_$identifier';

/// Returns true if the string can be converted to an integer.
bool characterIsNumeral(String c) => int.tryParse(c) != null;

bool isExcludedGetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == safeTypenameForTypeDef(method.parent) &&
        p.property == method.name)
    .isNotEmpty;

bool isExcludedSetProperty(Method method) => falseProperties
    .where((p) =>
        p.interface == safeTypenameForTypeDef(method.parent) &&
        p.property.replaceFirst('get', 'put') == method.name)
    .isNotEmpty;

String stripLeadingUnderscores(String name) {
  if (name.startsWith('_')) {
    if (characterIsNumeral(name.substring(1, 2))) {
      return 'x${name.substring(1)}';
    } else {
      return stripLeadingUnderscores(name.substring(1));
    }
  }
  return name;
}

/// Take a name like `IAsyncOperation<StorageFile>` and return `StorageFile` or
/// `String, String?` for a name like `IMap<String, String?>`.
String typeArguments(String name) {
  if (!name.contains('<')) return name;
  return name.substring(name.indexOf('<') + 1, name.length - 1);
}

/// Take a name like `IAsyncOperation<StorageFile>` and return `IAsyncOperation`.
String outerType(String name) {
  if (!name.contains('<')) return name;
  return name.substring(0, name.indexOf('<'));
}

/// Parses the argument to be passed to the `creator` parameter from [ti].
String? parseArgumentForCreatorParameter(TypeIdentifier ti) {
  final typeProjection = TypeProjection(ti);
  if (typeProjection.isWinRTStruct ||
      ['bool', 'DateTime', 'double', 'Duration', 'int', 'String', 'Uri']
          .contains(typeProjection.methodParamType)) {
    return null;
  }

  switch (ti.baseType) {
    case BaseType.classTypeModifier:
      return '${lastComponent(ti.name)}.fromRawPointer';
    case BaseType.genericTypeModifier:
      return parseArgumentForCreatorParameterFromGenericTypeIdentifier(ti);
    case BaseType.referenceTypeModifier:
      return parseArgumentForCreatorParameter(ti.typeArg!);
    case BaseType.valueTypeModifier:
      if (ti.type?.isEnum ?? false) return '${lastComponent(ti.name)}.from';
      return null;
    default:
      return null;
  }
}

/// Parses the argument to be passed to the `creator` parameter from generic [ti].
String parseArgumentForCreatorParameterFromGenericTypeIdentifier(
    TypeIdentifier ti) {
  if (ti.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final typeIdentifierName = stripGenerics(lastComponent(outerType(ti.name)));
  final typeArg = ['IKeyValuePair', 'IMap', 'IMapView']
          .contains(typeIdentifierName)
      // Skip over to the value typeArg since the `creator` parameter does not
      // need to be created for the key typeArg of the above types.
      ? ti.typeArg!.typeArg!
      : ti.typeArg;

  final creator = parseArgumentForCreatorParameter(typeArg!);
  if (creator == null) return '$typeIdentifierName.fromRawPointer';

  final isTypeArgEnum = typeArg.type?.isEnum ?? false;
  final creatorParamName = isTypeArgEnum ? 'enumCreator' : 'creator';

  return '(Pointer<COMObject> ptr) => $typeIdentifierName.fromRawPointer(ptr, $creatorParamName: $creator)';
}

/// Returns the appropriate Dart primitive type name for the given [baseType].
String primitiveTypeNameFromBaseType(BaseType baseType) {
  switch (baseType) {
    case BaseType.booleanType:
      return 'bool';
    case BaseType.doubleType:
    case BaseType.floatType:
      return 'double';
    case BaseType.int8Type:
    case BaseType.int16Type:
    case BaseType.int32Type:
    case BaseType.int64Type:
    case BaseType.uint8Type:
    case BaseType.uint16Type:
    case BaseType.uint32Type:
    case BaseType.uint64Type:
      return 'int';
    case BaseType.stringType:
      return 'String';
    default:
      return 'undefined';
  }
}

/// Returns the appropriate Dart type name for the given [ti].
String parseTypeIdentifierName(TypeIdentifier ti) {
  switch (ti.baseType) {
    case BaseType.classTypeModifier:
    case BaseType.valueTypeModifier:
      if (ti.name == 'System.Guid') return 'GUID';
      if (ti.name == 'Windows.Foundation.TimeSpan') return 'Duration';
      return lastComponent(ti.name);
    case BaseType.genericTypeModifier:
      return parseGenericTypeIdentifierName(ti);
    case BaseType.objectType:
      return 'Object';
    case BaseType.referenceTypeModifier:
      return parseTypeIdentifierName(ti.typeArg!);
    default:
      return primitiveTypeNameFromBaseType(ti.baseType);
  }
}

/// Unpack a nested [typeIdentifier] into a single name.
String parseGenericTypeIdentifierName(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  // If the typeIdentifier's name is already parsed, return it as is
  if (typeIdentifier.name.contains('<')) return typeIdentifier.name;

  final parentTypeName = stripGenerics(lastComponent(typeIdentifier.name));

  if (typeIdentifier.type?.genericParams.length == 2) {
    final secondArgMustBeNullable = [
      'Windows.Foundation.Collections.IKeyValuePair`2',
      'Windows.Foundation.Collections.IMap`2',
      'Windows.Foundation.Collections.IMapView`2',
      'Windows.Foundation.Collections.IObservableMap`2',
    ].contains(typeIdentifier.type?.name);
    final firstArg = parseTypeIdentifierName(typeIdentifier.typeArg!);
    final secondArg = parseTypeIdentifierName(typeIdentifier.typeArg!.typeArg!);
    final questionMark = secondArgMustBeNullable ? '?' : '';
    return '$parentTypeName<$firstArg, $secondArg$questionMark>';
  }

  return '$parentTypeName<${parseTypeIdentifierName(typeIdentifier.typeArg!)}>';
}

/// Returns the primitive type signature for the given [baseType].
///
/// To learn more about this, see
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
String primitiveTypeSignatureFromBaseType(BaseType baseType) {
  switch (baseType) {
    case BaseType.booleanType:
      return 'b1';
    case BaseType.charType:
      return 'c2';
    case BaseType.doubleType:
      return 'f8';
    case BaseType.floatType:
      return 'f4';
    case BaseType.int8Type:
      return 'i1';
    case BaseType.int16Type:
      return 'i2';
    case BaseType.int32Type:
      return 'i4';
    case BaseType.int64Type:
      return 'i8';
    case BaseType.objectType:
      return 'cinterface(IInspectable)';
    case BaseType.stringType:
      return 'string';
    case BaseType.uint8Type:
      return 'u1';
    case BaseType.uint16Type:
      return 'u2';
    case BaseType.uint32Type:
      return 'u4';
    case BaseType.uint64Type:
      return 'u8';
    default:
      throw UnsupportedError('Unsupported baseType: $baseType');
  }
}

/// Returns the type signature for the given [td].
String parseTypeDefSignature(TypeDef td) {
  if (td.typeSpec != null) return parseTypeIdentifierSignature(td.typeSpec!);

  if (td.isClass) {
    final className = td.name;
    final defaultInterfaceSignature =
        parseTypeDefSignature(td.interfaces.first);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return td.guid!.toLowerCase();
}

/// Returns the type signature for the given [ti].
String parseTypeIdentifierSignature(TypeIdentifier ti) {
  if (ti.baseType == BaseType.genericTypeModifier) {
    return parseGenericTypeIdentifierSignature(ti);
  }

  if (ti.name == 'System.Guid') return 'g16';

  final typeProjection = TypeProjection(ti);

  if (typeProjection.isWinRTDelegate) {
    return 'delegate(${ti.type!.guid!.toLowerCase()})';
  }

  if (typeProjection.isWinRTEnum) {
    final enumName = ti.name;
    final isFlagsEnum = ti.type!.existsAttribute('System.FlagsAttribute');
    final enumSignature = isFlagsEnum ? 'u4' : 'i4';
    return 'enum($enumName;$enumSignature)';
  }

  if (typeProjection.isWinRTStruct) {
    final structName = ti.name;
    final fields = ti.type!.fields
        .map((field) => parseTypeIdentifierSignature(field.typeIdentifier));
    return 'struct($structName;${fields.join(';')})';
  }

  if (typeProjection.isInterface) return ti.type!.guid!.toLowerCase();

  if (typeProjection.isClass) {
    final className = ti.name;
    final defaultInterface = ti.type!.interfaces.first;
    if (defaultInterface.typeSpec != null) {
      final defaultInterfaceSignature =
          parseTypeIdentifierSignature(defaultInterface.typeSpec!);
      return 'rc($className;$defaultInterfaceSignature)';
    }

    final defaultInterfaceSignature = parseTypeDefSignature(defaultInterface);
    return 'rc($className;$defaultInterfaceSignature)';
  }

  return primitiveTypeSignatureFromBaseType(ti.baseType);
}

/// Returns the type signature for the given generic [typeIdentifier].
String parseGenericTypeIdentifierSignature(TypeIdentifier typeIdentifier) {
  if (typeIdentifier.baseType != BaseType.genericTypeModifier) {
    throw ArgumentError('Expected a generic type identifier.');
  }

  final parentTypeGuid = typeIdentifier.type!.guid!.toLowerCase();

  if (typeIdentifier.type?.genericParams.length == 2) {
    final firstArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!);
    final secondArgSignature =
        parseTypeIdentifierSignature(typeIdentifier.typeArg!.typeArg!);
    return 'pinterface($parentTypeGuid;$firstArgSignature;$secondArgSignature)';
  }

  return 'pinterface($parentTypeGuid;${parseTypeIdentifierSignature(typeIdentifier.typeArg!)})';
}

/// A byte representation of the pinterface instantiation.
///
/// This is hardcoded as the value {11f47ad5-7b73-42c0-abae-878b1e16adee} in
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
const wrtPinterfaceNamespace = [
  0x11, 0xf4, 0x7a, 0xd5,
  0x7b, 0x73,
  0x42, 0xc0,
  0xab, 0xae,
  0x87, 0x8b, 0x1e, 0x16, 0xad, 0xee, //
];

/// Returns the IID for the given [signature].
///
/// Takes a parameterized type instance, such as `IMap<String, String>`, which
/// can be represented as:
/// `pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)`
///
/// Converts it to a unique IID for the resultant type, using an algorithm
/// defined here:
/// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
String iidFromSignature(String signature) {
  final signatureInBytes = const Utf8Encoder().convert(signature);
  final data = [...wrtPinterfaceNamespace, ...signatureInBytes];
  final sha1Bytes = sha1.convert(data).bytes;

  final first = Int8List.fromList(sha1Bytes.sublist(0, 4));
  final firstNumber = first.buffer.asByteData().getUint32(0);

  final second = Int8List.fromList(sha1Bytes.sublist(4, 6));
  final secondNumber = second.buffer.asByteData().getUint16(0);

  final third = Int8List.fromList(sha1Bytes.sublist(6, 8));
  var thirdNumber = third.buffer.asByteData().getUint16(0);

  thirdNumber = (thirdNumber & 0x0fff) | (5 << 12);

  final fourthNumber = (sha1Bytes[8] & 0x3f) | 0x80;

  final guidChars = List<int>.filled(38, 0);
  var offset = 0;
  // {dddddddd-dddd-dddd-dddd-dddddddddddd}
  guidChars[offset++] = '{'.codeUnitAt(0);
  offset =
      _hexsToChars(guidChars, offset, firstNumber >> 24, firstNumber >> 16);
  offset = _hexsToChars(guidChars, offset, firstNumber >> 8, firstNumber);
  guidChars[offset++] = '-'.codeUnitAt(0);
  offset = _hexsToChars(guidChars, offset, secondNumber >> 8, secondNumber);
  guidChars[offset++] = '-'.codeUnitAt(0);
  offset = _hexsToChars(guidChars, offset, thirdNumber >> 8, thirdNumber);
  guidChars[offset++] = '-'.codeUnitAt(0);
  offset = _hexsToChars(guidChars, offset, fourthNumber, sha1Bytes[9]);
  guidChars[offset++] = '-'.codeUnitAt(0);
  offset = _hexsToChars(guidChars, offset, sha1Bytes[10], sha1Bytes[11]);
  offset = _hexsToChars(guidChars, offset, sha1Bytes[12], sha1Bytes[13]);
  offset = _hexsToChars(guidChars, offset, sha1Bytes[14], sha1Bytes[15]);
  guidChars[offset++] = '}'.codeUnitAt(0);

  return String.fromCharCodes(guidChars).toUpperCase();
}

int _hexToChar(int a) {
  a = a & 0xf;
  return (a > 9) ? a - 10 + 0x61 : a + 0x30;
}

int _hexsToChars(List<int> guidChars, int offset, int a, int b) {
  guidChars[offset++] = _hexToChar(a >> 4);
  guidChars[offset++] = _hexToChar(a);
  guidChars[offset++] = _hexToChar(b >> 4);
  guidChars[offset++] = _hexToChar(b);
  return offset;
}

/// Returns the IID for the given [typeDef].
String iidFromTypeDef(TypeDef typeDef) {
  final signature = parseTypeDefSignature(typeDef);
  return iidFromSignature(signature);
}

/// Returns the IID for the given [typeIdentifier].
String iidFromTypeIdentifier(TypeIdentifier typeIdentifier) {
  final signature = parseTypeIdentifierSignature(typeIdentifier);
  return iidFromSignature(signature);
}

/// Take a name like TypedEventHandler`2 and return TypedEventHandler.
String stripGenerics(String name) {
  final backtickIndex = name.indexOf('`');
  if (backtickIndex == -1) return name;
  return name.substring(0, backtickIndex);
}

List<NamespaceGroup> groupTypesByParentNamespace(Iterable<String> types) {
  types.toList().sort((a, b) => a.compareTo(b));
  final namespaceGroups = <NamespaceGroup>[];
  final namespaceGroup = NamespaceGroup(
      namespace: parentNamespace(types.first), types: [types.first]);
  namespaceGroups.add(namespaceGroup);

  for (var i = 1; i < types.length; i++) {
    final type = types.elementAt(i);
    if (namespaceGroups.any((e) => e.namespace == parentNamespace(type))) {
      final namespaceGroup = namespaceGroups
          .firstWhere((e) => e.namespace == parentNamespace(type));
      namespaceGroup.types.add(type);
    } else {
      final namespaceGroup =
          NamespaceGroup(namespace: parentNamespace(type), types: [type]);
      namespaceGroups.add(namespaceGroup);
    }
  }

  return namespaceGroups;
}

class NamespaceGroup {
  NamespaceGroup({required this.namespace, required this.types});

  final String namespace;
  final List<String> types;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NamespaceGroup &&
        other.namespace == namespace &&
        other.types.length == types.length &&
        other.types.every(types.contains);
  }

  @override
  int get hashCode => namespace.hashCode ^ types.hashCode;

  @override
  String toString() => 'NamespaceGroup(namespace: $namespace, types: $types)';
}
