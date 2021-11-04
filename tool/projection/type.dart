import 'package:winmd/winmd.dart' as winmd;

import 'utils.dart';
import 'win32_typemap.dart';

class TypeTuple {
  final String nativeType;
  final String dartType;
  final String attribute;

  const TypeTuple(this.nativeType, this.dartType, {this.attribute = ''});
}

const Map<winmd.BaseType, TypeTuple> baseNativeMapping = {
  winmd.BaseType.Void: TypeTuple('Void', 'void'),
  winmd.BaseType.Boolean: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  winmd.BaseType.Int8: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  winmd.BaseType.Uint8: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  winmd.BaseType.Int16: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  winmd.BaseType.Uint16: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  winmd.BaseType.Int32: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  winmd.BaseType.Uint32: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  winmd.BaseType.Int64: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  winmd.BaseType.Uint64: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  winmd.BaseType.IntPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  winmd.BaseType.Float: TypeTuple('Float', 'double', attribute: '@Float()'),
  winmd.BaseType.Double: TypeTuple('Double', 'double', attribute: '@Double()'),
  winmd.BaseType.UintPtr: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  winmd.BaseType.Char: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
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
  final winmd.TypeIdentifier typeIdentifier;
  late final TypeTuple projection;

  TypeProjection(this.typeIdentifier) {
    projection = projectType();
  }

  String get attribute => projection.attribute;
  String get nativeType => projection.nativeType;
  String get dartType => projection.dartType;
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

  bool get isIntrinsic =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isWin32SpecialType =>
      specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.baseType == winmd.BaseType.String;

  bool get isEnumType => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isWrappedValueType =>
      typeIdentifier.baseType == winmd.BaseType.ValueTypeModifier;

  bool get isPointerType =>
      typeIdentifier.baseType == winmd.BaseType.PointerTypeModifier;

  bool get isArrayType =>
      typeIdentifier.baseType == winmd.BaseType.ArrayTypeModifier;

  bool get isWin32Delegate =>
      typeIdentifier.baseType == winmd.BaseType.ClassTypeModifier &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  // bool get isComInterface {
  //   if (typeIdentifier.name.endsWith('IUnknown')) {
  //     return true;
  //   }

  //   // Keep checking up the chain to see if this inherits from IUnknown
  //   var interfaces = typeIdentifier.type?.interfaces;
  //   while (interfaces != null && interfaces.isNotEmpty) {
  //     if (interfaces.first.name.endsWith('IUnknown')) {
  //       return true;
  //     }
  //     interfaces = interfaces.first.interfaces;
  //   }

  //   return false;
  // }

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
    } else {
      final typeClass =
          stripAnsiUnicodeSuffix(wrappedType.name.split('.').last);
      return TypeTuple(typeClass, typeClass);
    }
  }

  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }
    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the
    // Win32 meaning, which is more like "undefined type". We can
    // model that with a generic Pointer in Dart.
    final projection = typeArg.projection;
    if (projection.nativeType == 'Void') {
      return TypeTuple('Pointer', 'Pointer');
    }

    final nativeType = 'Pointer<${projection.nativeType}>';
    final dartType = 'Pointer<${projection.nativeType}>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapArrayType() {
    if (typeIdentifier.typeArg == null ||
        typeIdentifier.arrayDimensions == null) {
      throw Exception('Array information missing for $typeIdentifier.');
    }

    final typeArg = TypeProjection(typeIdentifier.typeArg!);
    final projection = typeArg.projection;

    final nativeType = 'Array<${projection.nativeType}>';
    final dartType = 'Array<${projection.nativeType}>';
    final upperBound = typeIdentifier.arrayDimensions?.first;

    return TypeTuple(nativeType, dartType, attribute: '@Array($upperBound)');
  }

  TypeTuple unwrapCallbackType() {
    final callbackType = typeIdentifier.name.split('.').last;

    // TODO: Remove in v3 -- for backward compat only
    if (callbackTypeMapping.keys.contains(callbackType)) {
      final mappedType = callbackTypeMapping[callbackType]!;
      return TypeTuple(mappedType, mappedType);
    }

    final nativeType = 'Pointer<NativeFunction<$callbackType>>';
    final dartType = 'Pointer<NativeFunction<$callbackType>>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isIntrinsic) {
      return baseNativeMapping[typeIdentifier.baseType]!;
    }

    // Could be a string or other special type that we want to custom-map
    if (isWin32SpecialType) {
      return specialTypes[typeIdentifier.name]!;
    }

    // This is used by WinRT for an HSTRING
    if (isString) {
      return TypeTuple('Pointer<IntPtr>', 'Pointer<IntPtr>');
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

    if (isInterface || typeIdentifier.baseType == winmd.BaseType.Object) {
      return TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}
