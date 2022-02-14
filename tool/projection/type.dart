import 'package:winmd/winmd.dart';

import '../shared/win32_typemap.dart';
import 'utils.dart';

class TypeTuple {
  final String nativeType;
  final String dartType;
  final String attribute;

  const TypeTuple(this.nativeType, this.dartType, {this.attribute = ''});
}

const Map<BaseType, TypeTuple> baseNativeMapping = {
  BaseType.Void: TypeTuple('Void', 'void'),
  BaseType.Boolean: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.Int8: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.Uint8: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.Int16: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.Uint16: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.Int32: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.Uint32: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.Int64: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.Uint64: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.IntPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.Float: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.Double: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.UintPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.Char: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
};

const Map<String, TypeTuple> specialTypes = {
  'Windows.Win32.Foundation.BSTR':
      TypeTuple('Pointer<Utf16>', 'Pointer<Utf16>'),
  'Windows.Win32.Foundation.PWSTR':
      TypeTuple('Pointer<Utf16>', 'Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple('Pointer<Utf8>', 'Pointer<Utf8>'),
  'Windows.Win32.Foundation.LARGE_INTEGER':
      TypeTuple('Int64', 'int', attribute: '@Int64()'),
  'Windows.Win32.Foundation.ULARGE_INTEGER':
      TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  'System.Guid': TypeTuple('GUID', 'GUID'),
  'Windows.Foundation.HResult':
      TypeTuple('Int32', 'int', attribute: '@Int32()'),
};

class TypeProjection {
  final TypeIdentifier typeIdentifier;
  TypeTuple? _projection;

  TypeTuple get projection {
    _projection ??= projectType();

    return _projection!;
  }

  TypeProjection(this.typeIdentifier);

  String get attribute => projection.attribute;
  String get nativeType => projection.nativeType;
  String get dartType => projection.dartType;
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

  /// Is the resultant Dart type atomic?
  bool get isDartPrimitive =>
      ['void', 'bool', 'int', 'double'].contains(dartType) ||
      dartType.startsWith('Pointer') ||
      dartType.startsWith('Array');

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isWin32SpecialType =>
      specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.baseType == BaseType.String;

  bool get isEnumType => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.ValueTypeModifier;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.PointerTypeModifier;

  bool get isArrayType => typeIdentifier.baseType == BaseType.ArrayTypeModifier;

  bool get isWin32Delegate =>
      typeIdentifier.baseType == BaseType.ClassTypeModifier &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  TypeTuple unwrapEnumType() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__');
    }
    return TypeProjection(fieldType).projection;
  }

  TypeTuple unwrapValueType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw Exception(
          'Wrapped type TypeIdentifier missing for $typeIdentifier.');
    }

    // A type like HWND
    if (wrappedType
        .customAttributeAsBytes('Windows.Win32.Interop.NativeTypedefAttribute')
        .isNotEmpty) {
      final typeIdentifier = wrappedType.fields.first.typeIdentifier;
      return TypeProjection(typeIdentifier).projection;
    }

    if (wrappedType.isNested) {
      final typeClass = mangleName(wrappedType);
      return TypeTuple(typeClass, typeClass);
    }

    final typeClass = stripAnsiUnicodeSuffix(wrappedType.name.split('.').last);
    return TypeTuple(typeClass, typeClass);
  }

  /// Takes a type such as `PointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>.
  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }
    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Strip leading underscores (unless the type is nested, in which
    // case leave one behind).
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested == true
        ? '_${stripLeadingUnderscores(typeArg.projection.nativeType)}'
        : stripLeadingUnderscores(typeArg.projection.nativeType);

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the
    // Win32 meaning, which is more like "undefined type". We can
    // model that with a generic Pointer in Dart.
    final projection = typeArg.projection;
    if (projection.nativeType == 'Void') {
      return const TypeTuple('Pointer', 'Pointer');
    }

    final nativeType = 'Pointer<$typeArgNativeType>';
    final dartType = 'Pointer<$typeArgNativeType>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapArrayType() {
    if (typeIdentifier.typeArg == null ||
        typeIdentifier.arrayDimensions == null) {
      throw Exception('Array information missing for $typeIdentifier.');
    }

    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Arrays of nested types have a private _ prefix. This is not a very
    // expensive operation.
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested == true
        ? typeArg.nativeType
        : stripLeadingUnderscores(typeArg.nativeType);

    final nativeType = 'Array<$typeArgNativeType>';
    final dartType = 'Array<$typeArgNativeType>';
    final upperBound = typeIdentifier.arrayDimensions?.first;

    return TypeTuple(nativeType, dartType, attribute: '@Array($upperBound)');
  }

  TypeTuple unwrapCallbackType() {
    const voidCallbackTypes = <String, String>{
      'FARPROC': 'Pointer',
      'PROC': 'Pointer',
      'NEARPROC': 'Pointer',
    };

    final callbackType =
        stripLeadingUnderscores(lastComponent(typeIdentifier.name));

    if (voidCallbackTypes.keys.contains(callbackType)) {
      final mappedType = voidCallbackTypes[callbackType]!;
      return TypeTuple(mappedType, mappedType);
    } else if (callbackTypeMapping.keys.contains(callbackType)) {
      final mappedType = callbackTypeMapping[callbackType]!;
      return TypeTuple(mappedType, mappedType);
    }

    final nativeType = 'Pointer<NativeFunction<$callbackType>>';
    final dartType = 'Pointer<NativeFunction<$callbackType>>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) {
      return baseNativeMapping[typeIdentifier.baseType]!;
    }

    // Could be a string or other special type that we want to custom-map
    if (isWin32SpecialType) {
      return specialTypes[typeIdentifier.name]!;
    }

    // This is used by WinRT for an HSTRING
    if (isString) {
      return const TypeTuple('Pointer<IntPtr>', 'Pointer<IntPtr>');
    }

    // Could be an enum like FOLDERFLAGS
    if (isEnumType) {
      return unwrapEnumType();
    }

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) {
      return unwrapValueType();
    }

    if (isPointerType) {
      return unwrapPointerType();
    }

    if (isArrayType) {
      return unwrapArrayType();
    }

    if (isWin32Delegate) {
      return unwrapCallbackType();
    }

    if (isInterface ||
        typeIdentifier.baseType == BaseType.ClassTypeModifier ||
        typeIdentifier.baseType == BaseType.Object) {
      return const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}
